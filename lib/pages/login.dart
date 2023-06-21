import 'package:flutter/material.dart';

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
    return Scaffold(body: paintBody());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailCtl.dispose();
    _pwdCtl.dispose();
  }

  Widget paintBody() {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Column(children: [
        SizedBox(
          height: 70,
        ),
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1531256456869-ce942a665e80?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTI4fHxwcm9maWxlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
                  ),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 15, 5, 20),
          child: getForm(),
        )
      ]),
    );
  }

  Widget getForm() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 15, 20, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Email Address'),
          TextField(
            controller: _emailCtl,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text('Password'),
          TextField(
            controller: _pwdCtl,
          ),
        ],
      ),
    );
  }
}
