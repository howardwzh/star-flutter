import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _controller = new TextEditingController();

  String searchQuery = '';
  static String aaa = 'xxx';
  
  void updateSearchQuery(String newQuery) {
    setState(() {
      searchQuery = newQuery;
    });
  }

  void searchMe() {
     print(searchQuery);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(Icons.search, color: Colors.white,),
          onPressed: searchMe,
        ),
        hintText: 'Search...',
        hintStyle: TextStyle(color: Colors.white)
      ),
      onChanged: updateSearchQuery,
    );
  }
}
