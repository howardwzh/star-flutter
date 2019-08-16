import 'package:flutter/material.dart';

class Sort extends StatefulWidget {
  @override
  _SortState createState() => _SortState();
}

class _SortState extends State<Sort> {
  String sort1 = '综合';

  List<DropdownMenuItem> getListData(){
    final List<DropdownMenuItem> items =  List();
    items.add(DropdownMenuItem(
      child: Text('综合'),
      value: '综合',
    ));
    items.add(DropdownMenuItem(
      child: Text('最新上架'),
      value: '最新上架',
    ));
    items.add(DropdownMenuItem(
      child: Text('价格最低'),
      value: '价格最低',
    ));
    items.add(DropdownMenuItem(
      child: Text('价格最高'),
      value: '价格最高',
    ));
    return items;
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Center(
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1)
                  ),
                  hint: Text('请选择'),
                  items: getListData(),
                  value: sort1,
                  //下拉菜单item点击之后的回调
                  onChanged: (T){
                    setState(() {
                      sort1 = T;
                    });
                  }
                )
              )
            )
          ),
          Expanded(child: Center(
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1)
                  ),
                  hint: Text('请选择'),
                  items: getListData(),
                  value: sort1,
                  //下拉菜单item点击之后的回调
                  onChanged: (T){
                    setState(() {
                      sort1 = T;
                    });
                  }
                )
              )
            )),
          Expanded(child: Center(
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1)
                  ),
                  hint: Text('请选择'),
                  items: getListData(),
                  value: sort1,
                  //下拉菜单item点击之后的回调
                  onChanged: (T){
                    setState(() {
                      sort1 = T;
                    });
                  }
                )
              )
            )),
          Expanded(child: Center(
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1)
                  ),
                  hint: Text('请选择'),
                  items: getListData(),
                  value: sort1,
                  //下拉菜单item点击之后的回调
                  onChanged: (T){
                    setState(() {
                      sort1 = T;
                    });
                  }
                )
              )
            )),
        ],
      ),
      height: 48.0,
    );
  }
}
