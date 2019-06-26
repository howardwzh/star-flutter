import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import '../views/search_result/index.dart';

// app的首页
var searchResultHandle = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return SearchResult();
  },
);
