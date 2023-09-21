import 'package:flutter/material.dart';
import 'package:redbusclone/ui/logIn.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Account"
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(12.00),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12.00),
                  child: const CircleAvatar(
                    child: Icon(Icons.account_circle_outlined),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(12.00),
                  child: const Column(
                    children: [
                      Text('Kaustubh Vaidya', style: TextStyle(fontSize: 20),),
                      Text('Male, 20 years, 99*****88'),
                    ],
                  ),
                ),
                Flexible(flex: 1,child: Container(),),
                IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(24.00),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'My Bookings',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                    Flexible(flex: 1,child: Container(),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
                Row(
                  children: [
                    const Text(
                      'Wallet',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    Flexible(flex: 1,child: Container(),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
                Row(
                  children: [
                    const Text(
                      'Cards',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    Flexible(flex: 1,child: Container(),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
                Row(
                  children: [
                    const Text(
                      'Co-Passenger (Bus)',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    Flexible(flex: 1,child: Container(),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
                Row(
                  children: [
                    const Text(
                      'Trending videos',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    Flexible(flex: 1,child: Container(),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
                Row(
                  children: [
                    const Text(
                      'Refer and earn',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    Flexible(flex: 1,child: Container(),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
                Row(
                  children: [
                    const Text(
                      'Offers',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    Flexible(flex: 1,child: Container(),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
                Row(
                  children: [
                    const Text(
                      'Help',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    Flexible(flex: 1,child: Container(),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
                Row(
                  children: [
                    const Text(
                      'Call support',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    Flexible(flex: 1,child: Container(),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
                Row(
                  children: [
                    const Text(
                      'About us',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    Flexible(flex: 1,child: Container(),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
                Row(
                  children: [
                    const Text(
                      'Settings',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    Flexible(flex: 1,child: Container(),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
                Row(
                  children: [
                    const Text(
                      'Feedback',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    Flexible(flex: 1,child: Container(),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(24.00),
            child: TextButton(onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
              return const LogInSignInPage();
            }));},
              child: const Text(
                  'Log Out',
                style: TextStyle(
                  fontSize: 18
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


