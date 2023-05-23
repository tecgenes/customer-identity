import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AuthenticatorMiddleware extends GetMiddleware{
  @override
  RouteSettings? redirect(String? route) {
    // if(appMemory.getToken() != null){
    //   bool hasExpired = JwtDecoder.isExpired(appMemory.getToken());
    //   if(!hasExpired) return const RouteSettings(name: AppRouter.landing);
    // }
    // return null;
  }
}