import 'package:customer_identity/src/widgets/account_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AccountScreen extends GetResponsiveView{
  AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    image: AssetImage("packages/customer_identity/assets/images/avatar.png"),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Text("Marwan Sallum", style: context.textTheme.titleLarge,),
              Text("masalloum2091@gmail.com", style: context.textTheme.bodySmall,),
              const SizedBox(height: 10,),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Edit Profile", style: context.textTheme.bodySmall,),
                ),
              ),
              const SizedBox(height: 30,),
              const Divider(),
              const SizedBox(height: 10,),
              AccountMenuWidget(onPress: (){},title: 'Setting',icon: LineAwesomeIcons.cog),
              AccountMenuWidget(onPress: (){},title: 'Billing Details',icon: LineAwesomeIcons.wallet),
              AccountMenuWidget(onPress: (){},title: 'User Management',icon: LineAwesomeIcons.user_check),
              const Divider(),
              const SizedBox(height: 10,),
              AccountMenuWidget(onPress: (){},title: 'Information',icon: LineAwesomeIcons.info),
              AccountMenuWidget(onPress: (){},title: 'Logout',icon: LineAwesomeIcons.alternate_sign_out, endIcon: false,)


            ],
          ),
        ),
      ),
    );
  }
}
