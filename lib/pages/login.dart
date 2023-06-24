import 'package:flutter/material.dart';
import 'package:flutter_finance_app/theams/colors.dart' as AppColors;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailCtl = TextEditingController();
  final _pwdCtl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: SafeArea(child: paintBody())),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _emailCtl.dispose();
    _pwdCtl.dispose();
  }

  BoxShadow getShaddow(Color? color) {
    final Color sColor = color ?? AppColors.grey;
    return BoxShadow(
      color: sColor.withOpacity(0.04),
      spreadRadius: 10,
      blurRadius: 5,
      // changes position of shadow
    );
  }

  Widget paintBody() {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Column(children: [
        const SizedBox(
          height: 70,
        ),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              boxShadow: [getShaddow(AppColors.buttoncolor)],
              shape: BoxShape.circle,
              //border: Border.all(width: 0.1, color: AppColors.buttoncolor),
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://www.inspirationde.com/wp-content/uploads/2018/11/n-1542696965gkn84-770x770.jpg"),
                  fit: BoxFit.cover)),
        ),
        const SizedBox(
          height: 50,
        ),
        textFiled('Email Address', Icons.email_outlined,
            'sudheer0508@gmail.com', false, _emailCtl),
        const SizedBox(
          height: 40,
        ),
        textFiled(
            'Password', Icons.key_off_outlined, '@@@####!!!@@', true, _pwdCtl),
        const SizedBox(
          height: 50,
        ),
        Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(boxShadow: [getShaddow(null)]),
              height: 60,
              width: double.infinity,
              child: FilledButton(
                style: FilledButton.styleFrom(
                    backgroundColor: AppColors.buttoncolor),
                onPressed: () {},
                child: const Text('Login'),
              ),
            ))
      ]),
    );
  }

  Widget textFiled(String label, IconData icon, String hintText,
      bool isObsecure, TextEditingController ctl) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(boxShadow: [
          getShaddow(null),
        ], borderRadius: BorderRadius.circular(25.3), color: AppColors.white),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
              ),
              TextField(
                obscureText: isObsecure,
                decoration: InputDecoration(
                  icon: Icon(icon),
                  hintText: hintText,
                ),
                controller: ctl,
              ),
            ],
          ),
        ));
  }
}
