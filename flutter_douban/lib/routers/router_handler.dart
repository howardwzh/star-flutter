import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import '../views/search_result/index.dart';
import '../views/product/index.dart';

// app的首页
var searchResultHandle = new Handler(
  handlerFunc: (BuildContext context, Map params) {
    return SearchResult();
  },
);
var productHandle = new Handler(
  handlerFunc: (BuildContext context, Map params) {
    var title = params['title'][0];
    var id = params['id'][0];
    return Product(title: title, id: id);
  },
);
