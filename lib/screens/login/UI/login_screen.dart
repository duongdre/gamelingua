import 'package:flutter/material.dart';
import 'package:gamelingua/gen/assets.gen.dart';
import 'package:gamelingua/gen/colors.gen.dart';
import 'package:gamelingua/utilities/utils/color_gradient.dart';
import '../../../services/firebase_services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const routeName = 'login';
  static const routePath = '/$routeName';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _emailController.text = "duongdre@gmail.com";
    _passwordController.text = "123456a@";
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        color: ColorName.loginBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 69.5,
              width: 68,
              padding: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
              decoration: BoxDecoration(
                gradient: ColorNameGradients.loginGradient,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.images.gamelinguaLogo.provider(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(hintText: 'you@email.com'),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () async {
                final message = await AuthService().login(
                  email: _emailController.text,
                  password: _passwordController.text,
                );
                if (message!.contains('Success')) {
                  // context.goNamed(HomeScreen.routeName);
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                  ),
                );
              },
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 30.0,
            ),
            TextButton(
              onPressed: () {
                // context.goNamed(CreateAccountScreen.routeName);
              },
              child: const Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
