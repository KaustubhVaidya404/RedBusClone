import 'package:flutter/material.dart';

class LogInSignInPage extends StatefulWidget {
  const LogInSignInPage({super.key});

  @override
  State<LogInSignInPage> createState() => _LogInSignInPageState();
}

class _LogInSignInPageState extends State<LogInSignInPage> {

  bool setValue = false;
  int setDigit = 0;

  changeState(int value){
    if(value == 0){
      setValue = false;
    }
    else{
      setValue = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(flex: 1,child: Container(),),
          const Text(
            'Create Account or Sign in',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Mobile Number',
              ),
            ),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: const Text('Generate OTP (ONE TIME PASSWORD)')),
          const SizedBox(height: 20,),
          const Text(
            'OR',
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 25
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Continue with Google',
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              Checkbox(value: setValue, onChanged: changeState(1)),
              const Expanded(
                child: Text(
                  'By logging in you agree to our Terms and Conditions and Privacy Policy',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12
                  ),
                ),
              ),
            ],
          ),
          Flexible(flex: 1,child: Container(),),
          const Divider(
            color: Colors.black,
            thickness: 0.5,
          ),
          const Text(
            'Have a Referal Code',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20
            ),
          ),
        ],
      ),
    );
  }
}
