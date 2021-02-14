import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class SearchableDD2 extends StatefulWidget {
  @override
  _SearchableDD2State createState() => _SearchableDD2State();
}

class _SearchableDD2State extends State<SearchableDD2> {
  final _formKey = GlobalKey<FormState>();
  final _openDropDownProgKey = GlobalKey<DropdownSearchState<String>>();
  String commo = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DropdownSearch Demo")),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: EdgeInsets.all(4),
            children: <Widget>[
              ///Menu Mode with no searchBox
              // DropdownSearch<String>(
              //   validator: (v) => v == null ? "required field" : null,
              //   hint: "Select a country",
              //   mode: Mode.MENU,
              //   showSelectedItem: true,
              //   items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
              //   label: "Menu mode *",
              //   showClearButton: true,
              //   onChanged: print,
              //   popupItemDisabled: (String s) => s.startsWith('I'),
              //   selectedItem: "Tunisia",
              // ),
              // Divider(),
              // DropdownSearch<UserModel>(
              //   searchBoxController: TextEditingController(text: 'Mrs'),
              //   mode: Mode.BOTTOM_SHEET,
              //   isFilteredOnline: true,
              //   showClearButton: true,
              //   showSearchBox: true,
              //   label: 'User *',
              //   dropdownSearchDecoration: InputDecoration(
              //     filled: true,
              //     fillColor: Theme.of(context).inputDecorationTheme.fillColor,
              //   ),
              //   autoValidateMode: AutovalidateMode.onUserInteraction,
              //   validator: (UserModel u) =>
              //       u == null ? "user field is required " : null,
              //   onFind: (String filter) => getData(filter),
              //   onChanged: (UserModel data) {
              //     print(data);
              //   },
              //   dropdownBuilder: _customDropDownExample,
              //   popupItemBuilder: _customPopupItemBuilderExample,
              // ),
              // Divider(),

              // // ///custom itemBuilder and dropDownBuilder
              // DropdownSearch<UserModel>(
              //   showSelectedItem: true,
              //   compareFn: (UserModel i, UserModel s) => i.isEqual(s),
              //   label: "Person",
              //   onFind: (String filter) => getData(filter),
              //   onChanged: (UserModel data) {
              //     print(data);
              //   },
              //   dropdownBuilder: _customDropDownExample,
              //   popupItemBuilder: _customPopupItemBuilderExample2,
              // ),
              // Divider(),

              ///BottomSheet Mode with no searchBox
              DropdownSearch<String>(
                mode: Mode.BOTTOM_SHEET,
                maxHeight: 300,
                items: [
                  "tomato",
                  "black gram (urd beans)(whole)",
                  "lemon",
                  "jowar(sorghum)",
                  "bengal gram(gram)(whole)",
                  "paddy(dhan)(common)",
                  "maize",
                  "apple",
                  "banana - green",
                  "bhindi(ladies finger)",
                  "bitter gourd",
                  "bottle gourd",
                  "brinjal",
                  "cabbage",
                  "capsicum",
                  "carrot",
                  "cauliflower",
                  "chikoos(sapota)",
                  "coriander(leaves)",
                  "cucumbar(kheera)",
                  "garlic",
                  "ginger(green)",
                  "grapes",
                  "green chilli",
                  "guar",
                  "karbuja(musk melon)",
                  "knool khol",
                  "little gourd (kundru)",
                  "methi(leaves)",
                  "mousambi(sweet lime)",
                  "onion",
                  "orange",
                  "papaya (raw)",
                  "peas wet",
                  "pomegranate",
                  "potato",
                  "pumpkin",
                  "raddish",
                  "sweet potato",
                  "tinda",
                  "water melon",
                  "soyabean",
                  "cotton",
                  "cummin seed(jeera)",
                  "groundnut",
                  "sesamum(sesame",
                  "gingelly",
                  "til)",
                  "wheat",
                  "arhar (tur/red gram)(whole)",
                  "bajra(pearl millet/cumbu)",
                  "green gram (moong)(whole)",
                  "kabuli chana(chickpeas-white)",
                  "methi seeds",
                  "mustard",
                  "castor seed",
                  "guar seed(cluster beans seed)",
                  "isabgul (psyllium)",
                  "onion green",
                  "corriander seed",
                  "dry chillies",
                  "ground nut seed",
                  "cluster beans",
                  "beetroot",
                  "cowpea(veg)",
                  "drumstick",
                  "elephant yam (suran)",
                  "french beans (frasbean)",
                  "indian beans (seam)",
                  "pegeon pea (arhar fali)",
                  "pointed gourd (parval)",
                  "ridge gourd(tori)",
                  "surat beans (papadi)",
                  "turmeric (raw)",
                  "yam (ratalu)",
                  "spinach",
                  "banana",
                  "ber(zizyphus/borehannu)",
                  "ginger(dry)",
                  "guava",
                  "kinnow",
                  "turnip",
                  "leafy vegetable",
                  "papaya",
                  "peas cod",
                  "pineapple",
                  "mashrooms",
                  "colacasia",
                  "field pea",
                  "dalda",
                  "mahua",
                  "mustard oil",
                  "rice",
                  "sugar",
                  "wheat atta",
                  "white peas",
                  "beans",
                  "chapparad avare",
                  "chilly capsicum",
                  "green avare (w)",
                  "seemebadnekai",
                  "snake gourd",
                  "suvarna gadde",
                  "sweet pumpkin",
                  "kulthi(horse gram)",
                  "bunch beans",
                  "thondekai",
                  "tamarind seed",
                  "tamarind fruit",
                  "tender coconut",
                  "foxtail millet(navane)",
                  "green peas",
                  "tapioca",
                  "amphophalus",
                  "ashgourd",
                  "amaranthus",
                  "mango",
                  "black pepper",
                  "mango (raw-ripe)",
                  "coconut",
                  "rubber",
                  "copra",
                  "coconut oil",
                  "coconut seed",
                  "cowpea (lobia/karamani)",
                  "lime",
                  "pepper ungarbled",
                  "duster beans",
                  "coffee",
                  "mint(pudina)",
                  "gur(jaggery)",
                  "chrysanthemum(loose)",
                  "marigold(calcutta)",
                  "betal leaves",
                  "hen",
                  "jack fruit",
                  "fish",
                  "amla(nelli kai)",
                  "rat tail radish (mogari)",
                  "season leaves",
                  "squash(chappal kadoo)",
                  "moath dal",
                  "taramira",
                  "barley (jau)",
                  "soanf",
                  "cashewnuts",
                  "t.v. cumbu",
                  "turmeric",
                  "ragi (finger millet)",
                  "paddy(dhan)(basmati)",
                  "arhar dal(tur dal)",
                  "bengal gram dal (chana dal)",
                  "black gram dal (urd dal)",
                  "green gram dal (moong dal)",
                  "lentil (masur)(whole)",
                  "masur dal",
                  "ghee",
                  "peas(dry)",
                  "linseed",
                  "jute",
                  "tomato",
                  "tomato",
                  "black gram (urd beans)(whole)",
                  "lemon",
                  "jowar(sorghum)",
                  "bengal gram(gram)(whole)",
                  "paddy(dhan)(common)",
                  "maize",
                  "apple",
                  "banana - green",
                  "bhindi(ladies finger)",
                  "bitter gourd",
                  "bottle gourd",
                  "brinjal",
                  "cabbage",
                  "capsicum",
                  "carrot",
                  "cauliflower",
                  "chikoos(sapota)",
                  "coriander(leaves)",
                  "cucumbar(kheera)",
                  "garlic",
                  "ginger(green)",
                  "grapes",
                  "green chilli",
                  "",
                  "karbuja(musk melon)",
                  " khol",
                  "little gourd (kundru)",
                  "methi(leaves)",
                  "mousambi(sweet lime)",
                  "onion",
                  "orange",
                  "papaya (raw)",
                  "peas wet",
                  "pomegranate",
                  "potato",
                  "pumpkin",
                  "raddish",
                  "sweet potato",
                  "tinda",
                  "water melon",
                  "soyabean",
                  "cotton",
                  "cummin seed(jeera)",
                  "groundnut",
                  "sesamum(sesame",
                  "gingelly",
                  "til)",
                  "wheat",
                  "arhar (tur/red gram)(whole)",
                  "bajra(pearl millet/cumbu)",
                  "green gram (moong)(whole)",
                  "kabuli chana(chickpeas-white)",
                  "methi seeds",
                  "mustard",
                  "castor seed",
                  "guar seed(cluster beans seed)",
                  "isabgul (psyllium)",
                  "onion green",
                  "corriander seed",
                  "dry chillies",
                  "ground nut seed",
                  "cluster beans",
                  "beetroot",
                  "cowpea(veg)",
                  "drumstick",
                  "elephant yam (suran)",
                  "french beans (frasbean)",
                  "indian beans (seam)",
                  "pegeon pea (arhar fali)",
                  "pointed gourd (parval)",
                  "ridge gourd(tori)",
                  "surat beans (papadi)",
                  "turmeric (raw)",
                  "yam (ratalu)",
                  "spinach",
                  "banana",
                  "ber(zizyphus/borehannu)",
                  "ginger(dry)",
                  "guava",
                  "kinnow",
                  "turnip",
                  "leafy vegetable",
                  "papaya",
                  "peas cod",
                  "pineapple",
                  "mashrooms",
                  "colacasia",
                  "field pea",
                  "dalda",
                  "mahua",
                  "mustard oil",
                  "rice",
                  "sugar",
                  "wheat atta",
                  "white peas",
                  "beans",
                  "chapparad avare",
                  "chilly capsicum",
                  "green avare (w)",
                  "seemebadnekai",
                  "snake gourd",
                  "suvarna gadde",
                  "sweet pumpkin",
                  "kulthi(horse gram)",
                  "bunch beans",
                  "thondekai",
                  "arecanut(betelnut/supari)",
                  "tamarind seed",
                  "tamarind fruit",
                  "tender coconut",
                  "foxtail millet(navane)",
                  "green peas",
                  "tapioca",
                  "amphophalus",
                  "ashgourd",
                  "amaranthus",
                  "mango",
                  "black pepper",
                  "mango (raw-ripe)",
                  "coconut",
                  "rubber",
                  "copra",
                  "coconut oil",
                  "coconut seed",
                  "chili red",
                  "cowpea (lobia/karamani)",
                  "lime",
                  "pepper ungarbled",
                  "duster beans",
                  "coffee",
                  "mint(pudina)",
                  "gur(jaggery)",
                  "chrysanthemum(loose)",
                  "marigold(calcutta)",
                  "betal leaves",
                  "hen",
                  "jack fruit",
                  "fish",
                  "amla(nelli kai)",
                  "rat tail radish (mogari)",
                  "season leaves",
                  "squash(chappal kadoo)",
                  "moath dal",
                  "taramira",
                  "barley (jau)",
                  "soanf",
                  "cashewnuts",
                  "t.v. cumbu",
                  "turmeric",
                  "ragi (finger millet)",
                  "paddy(dhan)(basmati)",
                  "arhar dal(tur dal)",
                  "bengal gram dal (chana dal)",
                  "black gram dal (urd dal)",
                  "green gram dal (moong dal)",
                  "lentil (masur)(whole)",
                  "masur dal",
                  "ghee",
                  "peas(dry)",
                  "linseed",
                  "jute"
                ],
                label: "Commodities",
                onChanged: (result) {
                  setState(() {
                    commo = result;
                    print("selected cmmodity" + commo);
                  });
                },
                selectedItem: "tomato",
                showSearchBox: true,
                searchBoxDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.fromLTRB(12, 12, 8, 0),
                  labelText: "Search Commodity",
                ),
                popupTitle: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorDark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Commodity',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                popupShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
              ),
              Divider(),

              ///merge online and offline data in the same list and set custom max Height
              // DropdownSearch<UserModel>(
              //   items: [
              //     UserModel(name: "Offline name1", id: "999"),
              //     UserModel(name: "Offline name2", id: "0101")
              //   ],
              //   maxHeight: 300,
              //   onFind: (String filter) => getData(filter),
              //   label: "choose a user",
              //   onChanged: print,
              //   showSearchBox: true,
              // ),
              // Divider(),

              ///open dropdown programmatically
              // DropdownSearch<String>(
              //   items: ["no action", "confirm in the next dropdown"],
              //   label: "open another dropdown programmatically",
              //   onChanged: (String v) {
              //     if (v == "confirm in the next dropdown") {
              //       _openDropDownProgKey.currentState.openDropDownSearch();
              //     }
              //   },
              // ),
              // Padding(padding: EdgeInsets.all(4)),
              // DropdownSearch<String>(
              //   key: _openDropDownProgKey,
              //   items: ["Yes", "No"],
              //   label: "confirm",
              //   showSelectedItem: true,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   mainAxisSize: MainAxisSize.max,
              //   children: [
              //     RaisedButton(
              //         onPressed: () {
              //           _openDropDownProgKey.currentState.openDropDownSearch();
              //         },
              //         color: Theme.of(context).accentColor,
              //         child: Text("Open dropdownSearch")),
              //     RaisedButton(
              //         onPressed: () {
              //           _openDropDownProgKey.currentState
              //               .changeSelectedItem("No");
              //         },
              //         child: Text("set to 'NO'")),
              //     RaisedButton(
              //         onPressed: () {
              //           _openDropDownProgKey.currentState
              //               .changeSelectedItem("Yes");
              //         },
              //         child: Text("set to 'YES'")),
              //     RaisedButton(
              //         onPressed: () {
              //           _openDropDownProgKey.currentState
              //               .changeSelectedItem("Blabla");
              //         },
              //         child: Text("set to 'Blabla'")),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }

  // Widget _customDropDownExample(
  //     BuildContext context, UserModel item, String itemDesignation) {
  //   return Container(
  //     child: (item?.avatar == null)
  //         ? ListTile(
  //             contentPadding: EdgeInsets.all(0),
  //             leading: CircleAvatar(),
  //             title: Text("No item selected"),
  //           )
  //         : ListTile(
  //             contentPadding: EdgeInsets.all(0),
  //             leading: CircleAvatar(
  //               backgroundImage: NetworkImage(item.avatar),
  //             ),
  //             title: Text(item.name),
  //             subtitle: Text(
  //               item.createdAt.toString(),
  //             ),
  //           ),
  //   );
  // }

  // Widget _customPopupItemBuilderExample(
  //     BuildContext context, UserModel item, bool isSelected) {
  //   return Container(
  //     margin: EdgeInsets.symmetric(horizontal: 8),
  //     decoration: !isSelected
  //         ? null
  //         : BoxDecoration(
  //             border: Border.all(color: Theme.of(context).primaryColor),
  //             borderRadius: BorderRadius.circular(5),
  //             color: Colors.white,
  //           ),
  //     child: ListTile(
  //       selected: isSelected,
  //       title: Text(item.name),
  //       subtitle: Text(item.createdAt.toString()),
  //       leading: CircleAvatar(
  //         backgroundImage: NetworkImage(item.avatar),
  //       ),
  //     ),
  //   );
  // }

  // Widget _customPopupItemBuilderExample2(
  //     BuildContext context, UserModel item, bool isSelected) {
  //   return Container(
  //     margin: EdgeInsets.symmetric(horizontal: 8),
  //     decoration: !isSelected
  //         ? null
  //         : BoxDecoration(
  //             border: Border.all(color: Theme.of(context).primaryColor),
  //             borderRadius: BorderRadius.circular(5),
  //             color: Colors.white,
  //           ),
  //     child: ListTile(
  //       selected: isSelected,
  //       title: Text(item.name),
  //       subtitle: Text(item.createdAt.toString()),
  //       leading: CircleAvatar(
  //         backgroundImage: NetworkImage(item.avatar),
  //       ),
  //     ),
  //   );
  // }

  // Future<List<UserModel>> getData(filter) async {
  //   var response = await Dio().get(
  //     "http://5d85ccfb1e61af001471bf60.mockapi.io/user",
  //     queryParameters: {"filter": filter},
  //   );

  //   var models = UserModel.fromJsonList(response.data);
  //   return models;
  // }
}
