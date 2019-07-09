import 'package:flutter/material.dart';

class Sort extends StatefulWidget {
  final String title;
  final List subclass;
  const Sort({Key key, this.title, this.subclass}) : super(key: key);

  @override
  _SortState createState() => _SortState();
}

class _SortState extends State<Sort> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[];
  TabController _tabController;

  @override
  void initState() { 
    super.initState();
    for (int i = 0; i < widget.subclass.length; i++) {
      myTabs.add(Tab(
        text: widget.subclass[i]['name']
      ));
    }
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            child: Row(children: <Widget>[
              Container(
                width: 60,
                child: Text(widget.title, style: TextStyle(fontSize: 20.0))
              ),
              Expanded(
                child: TabBar(
                  controller: _tabController,
                  tabs: myTabs,
                  labelColor: Colors.blueAccent,
                  unselectedLabelColor: Colors.black,
                  isScrollable: true
                )
              )
            ],)  
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: myTabs.map((Tab tab) {
                return Row(children: <Widget>[
                  Expanded(child: Image(image: AssetImage('assets/images/banner-cera.jpg'), fit: BoxFit.fill, height: 150.0,),),
                  Expanded(child: Image(image: AssetImage('assets/images/banner-cera.jpg'), fit: BoxFit.fill, height: 150.0,),),
                  Expanded(child: Image(image: AssetImage('assets/images/banner-cera.jpg'), fit: BoxFit.fill, height: 150.0,),),
                ]);
              }).toList(),
            )
          )
        ],
      )
    );
  }
}
