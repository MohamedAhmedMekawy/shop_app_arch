import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_arch/core/services/service_locator.dart';
import 'package:shop_app_arch/shop_app/auth/login/presentation/controller/login_bloc.dart';
import 'package:shop_app_arch/shop_app/auth/login/presentation/controller/login_state.dart';
import 'package:shop_app_arch/shop_app/auth/register/presentation/screens/auth_screen/register.dart';
import 'package:shop_app_arch/shop_app/auth/register/presentation/widgets/navigate.dart';
import 'package:shop_app_arch/shop_app/auth/register/presentation/widgets/text_button.dart';
import 'package:shop_app_arch/shop_app/auth/register/presentation/widgets/text_form_field.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => sl<LoginCubit>(),
        child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Scaffold(
                  body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome',
                          ),
                          Text(
                            'Back !',
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Hey! Good to see you again',
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'SIGN IN',
                          ),
                          DefaultFormField(
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'Please Enter Your Email';
                              }
                              return null;
                            },
                            prefix: Icons.email_outlined,
                            text: 'Email',
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          DefaultFormField(
                            controller: passwordController,
                            type: TextInputType.visiblePassword,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'Please Enter Your Password';
                              }
                              return null;
                            },
                            prefix: Icons.lock,
                            text: 'Password',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 40,
                            width: double.infinity,
                            color: Colors.grey[200],
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.blue,
                              child: MaterialButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      LoginCubit.get(context).signIn(
                                          email: emailController.text,
                                          password: passwordController.text);
                                    }
                                  },
                                  child: Icon(Icons.arrow_forward_outlined)),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Don\'t have an account ?',
                              ),
                              Expanded(
                                child: DefaultTextButton(
                                  function: () {
                                    navigateTo(context, RegisterScreen());
                                  },
                                  text: 'Register Now',
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ));
            }));
  }
}
