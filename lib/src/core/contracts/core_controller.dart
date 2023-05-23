import 'package:customer_identity/src/core/contracts/core_usecase.dart';
import 'package:customer_identity/src/core/enums/alart_type.dart';
import 'package:customer_identity/src/core/mixins/alart_mixin.dart';
import 'package:customer_identity/src/core/mixins/loading_mixin.dart';
import 'package:customer_identity/src/core/mixins/validator_mixin.dart';
import 'package:customer_identity/src/widgets/alart_handleing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CoreController extends GetxController with ValidatorMixin, LoadingMixin, AlartMixin{
  CoreUsecase get coreUsecase;

  SnackbarController alartHandle({required String tital, required String discreption, AlartType alartType = AlartType.error}){
    return Get.showSnackbar(
      GetSnackBar(
        animationDuration: const Duration(seconds: 2),
        duration: const Duration(seconds: 5),
        backgroundColor: Colors.transparent,
        messageText: AlartHandleing(
          tital: tital,
          discreption: discreption,
          alartType: alartType,
        ),
      ),
    );
  }

  dismissKeyboard(){
    FocusManager.instance.primaryFocus?.unfocus();
  }
}