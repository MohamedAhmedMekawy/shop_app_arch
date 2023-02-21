import 'package:flutter/material.dart';
import 'package:shop_app_arch/shop_app/auth/register/presentation/widgets/text_form_field.dart';


class RegisterScreen extends StatelessWidget {

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Register', style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        DefaultFormField(
                            controller: nameController,
                            type: TextInputType.name,
                            validate: (value){
                              if(value.isEmpty){
                                return 'Please Enter Your Name';
                              }
                            },
                            prefix: Icons.person,
                            text: 'Name'),
                        SizedBox(
                          height: 20,
                        ),
                        DefaultFormField(
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            validate: (value){
                              if(value.isEmpty){
                                return 'Please Enter Your Email';
                              }
                            },
                            prefix: Icons.email_outlined,
                            text: 'Email'),
                        SizedBox(
                          height: 20,
                        ),
                        DefaultFormField(
                            controller: passwordController,
                            type: TextInputType.visiblePassword,
                            validate: (value){
                              if(value.isEmpty){
                                return 'Please Enter Your Password';
                              }
                            },
                            prefix: Icons.lock,

                            text: 'Password'),
                        SizedBox(
                          height: 20,
                        ),
                        DefaultFormField(
                            controller: phoneController,
                            type: TextInputType.phone,
                            validate: (value){
                              if(value.isEmpty){
                                return 'Please Enter Your Phone';
                              }
                            },
                            prefix: Icons.phone,
                            text: 'Phone'),
                        SizedBox(
                          height: 28,
                        ),

                       Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)
                                )
                            ),
                            child: MaterialButton(
                                child: Text(
                                  'Register', style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white
                                ),
                                ),
                                onPressed: (){

                                }),
                          ),

                      ],
                    )),
              ),
            )
        );

  }
}