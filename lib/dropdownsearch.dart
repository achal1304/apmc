import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:https_request/repository.dart';

import 'post_model.dart';

class DropDownSearchmenuuu extends StatefulWidget {
  @override
  _DropDownSearchmenuuuState createState() => _DropDownSearchmenuuuState();
}

class _DropDownSearchmenuuuState extends State<DropDownSearchmenuuu> {
  final String postUrl =
      "https://api.data.gov.in/resource/9ef84268-d588-465a-a308-a864a43d0070?api-key=579b464db66ec23bdd00000133f585e2c6a244007be46a15bdf9ecf0&format=json&offset=0&limit=100";
  String s = "Andhra Pradesh";
  String d = "Chittor";
  List<Post> templist;

  Future<List<Post>> getPosts() async {
    // Map<String, String> queryParams = {"state": "Maharashtra"};
    // String queryString = Uri(queryParameters: queryParams).query;
    String queryStringState = "filters[state]=" + _selectedState;
    String queryStringDistrict = "filters[district]=" + _selectedLGA;
    var requestUrl =
        postUrl + '&' + queryStringState + '&' + queryStringDistrict;

    List<Post> list;
    Response res = await get(requestUrl);
    print(res.statusCode);
    // print(res.body);
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body);
      var rest = data["records"] as List;
      print(rest);
      // List<dynamic> body = jsonDecode(res.body);

      // List<Post> posts =
      //     body.map((dynamic item) => Post.fromJson(item)).toList();

      list = rest.map<Post>((json) => Post.fromJson(json)).toList();
      templist = list;
      return list;
    } else {
      throw "Can't get posts";
    }
  }

  Repository repo = Repository();

  List<String> _states = ["Choose a state"];
  List<String> _districts = ["Choose .."];
  String _selectedState = "Choose a state";
  String _selectedLGA = "Choose ..";

  @override
  void initState() {
    _states = List.from(_states)..addAll(repo.getStates());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STATES MULTI DROPDOWN"),
        elevation: 0.1,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          child: Column(
            children: <Widget>[
              DropdownButton<String>(
                isExpanded: true,
                items: _states.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),
                onChanged: (value) => _onSelectedState(value),
                value: _selectedState,
              ),
              DropdownButton<String>(
                isExpanded: true,
                items: _districts.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),
                // onChanged: (value) => print(value),
                onChanged: (value) => _onSelectedLGA(value),
                value: _selectedLGA,
              ),
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  getPosts();
                },
                child: Text(
                  "Flat Button",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Expanded(
                child: FutureBuilder(
                  future: getPosts(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Post>> snapshot) {
                    if (snapshot.hasData) {
                      List<Post> post = snapshot.data;
                      return ListView(
                        shrinkWrap: true,
                        children: post
                            .map((Post post) => ListTile(
                                  title: Text(post.state),
                                  subtitle: Text(post.district.toString() +
                                      "[ Variety -" +
                                      post.variety +
                                      "] =Rs." +
                                      post.modal_price),
                                  isThreeLine: true,
                                ))
                            .toList(),
                      );
                    }
                    return Center(child: CircularProgressIndicator());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSelectedState(String value) {
    setState(() {
      _selectedLGA = "Choose ..";
      _districts = ["Choose .."];
      _selectedState = value;
      _districts = List.from(_districts)..addAll(repo.getLocalByState(value));
    });
  }

  void _onSelectedLGA(String value) {
    setState(() => _selectedLGA = value);
  }
}
