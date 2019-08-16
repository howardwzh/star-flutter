
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import './router_handler.dart';

class Routes {
  static String searchResult = "/search-result";
  static String product = "/product";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {}
    );
    router.define(searchResult, handler: searchResultHandle);
    router.define(product, handler: productHandle);
  }
}
