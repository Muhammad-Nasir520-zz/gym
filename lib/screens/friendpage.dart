
import 'package:flutter/material.dart';
import 'package:gymapp/models/constants.dart';
class FriendsPage extends StatefulWidget {
  //FriendsPage({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  _FriendsPageState createState() => new _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(3, (i) => "Friend # $i");
  var items = List<String>();

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }
  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }


    @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(mainColor),
      appBar: new AppBar(
        title: new Text("Friends Page"),
        backgroundColor: Color(mainColor),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search,color: Color(primareyColor),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    subtitle: Text("0972492"),
                    leading: CircleAvatar(child: Icon(Icons.person_outline),),
                    title: Text('${items[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}