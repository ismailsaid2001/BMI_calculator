import 'package:bmi_calculator/shared/components/components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(controller: emailController,prefix: Icons.email, type: TextInputType.emailAddress, onSubmit: (value){}, onChange:(value){} , label:'Email Address', validate:(value) {
                    if (value!.isEmpty) {
                      return 'email address must not be empty';
                    }
                    return null;
                  }, ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(suffix:Icons.remove_red_eye,prefix:Icons.lock,controller: passwordController,isPassword: true,
                    type: TextInputType.visiblePassword,
                    onSubmit: (value){},
                    onChange:(value){},
                    label: 'password',
                    validate:(String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Password must not be empty';
                    }
                    return null;

                  }, ) ,
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                      width: double.infinity,
                      color: Colors.blue,
                      child: defaultButton(
                          function: () {
                            if (formKey.currentState != null && formKey.currentState!.validate()) {
                              if (kDebugMode) {
                                print(emailController.text);
                                print(passwordController.text);
                              }
                            }
                          },
                          text: 'LOGIN')),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Register Now',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
