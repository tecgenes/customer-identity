// ignore_for_file: must_be_immutable
import 'package:customer_identity/src/core/enums/alart_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AlartHandleing extends StatelessWidget {
  String tital;
  String discreption;
  AlartType alartType;

  AlartHandleing({
    required this.tital,
    required this.discreption,
    required this.alartType,
    super.key,
  });

  Color _backgroundColor(){
    switch(alartType){
      case AlartType.error:
        return const Color(0xFFC72C41);
      case AlartType.warning:
        return const Color(0xFFEF8D32);
      case AlartType.info:
        return const Color(0xFF0070E0);
      case AlartType.success:
        return const Color(0xFF0C7040);
    }
  }

  String _alartIconAssetPath(){
    switch(alartType){
      case AlartType.error:
        return "assets/icons/alart/error.svg";
      case AlartType.warning:
        return "assets/icons/alart/warning.svg";
      case AlartType.info:
        return "assets/icons/alart/info.svg";
      case AlartType.success:
        return "assets/icons/alart/success.svg";
    }
  }

  Color _bubblesColor(){
    switch(alartType){
      case AlartType.error:
        return const Color(0xFF801336);
      case AlartType.warning:
        return const Color(0xFFCC561E);
      case AlartType.info:
        return const Color(0xFF05478A);
      case AlartType.success:
        return const Color(0xFF004E32);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.05, vertical: Get.height * 0.008),
          height: 100,
          decoration:  BoxDecoration(
            color: _backgroundColor(),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 48,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      tital,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        discreption,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: ClipRRect(
            borderRadius:
            const BorderRadius.only(bottomLeft: Radius.circular(20)),
            child: SvgPicture.asset(
              "assets/icons/alart/bubbles.svg",
              height: 48,
              width: 40,
              color: _bubblesColor(),
            ),
          ),
        ),
        Positioned(
            top: -20,
            left: 0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/alart/fail.svg",
                  height: 40,
                  color: _bubblesColor(),
                ),
                Positioned(
                  top: 10,
                  child: SvgPicture.asset(
                    _alartIconAssetPath(),
                    height: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
