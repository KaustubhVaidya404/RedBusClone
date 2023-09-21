import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  ListView buildBody() {
    return ListView(
      children: [
        Container(
            padding: const EdgeInsets.all(20.00),
            child: Row(
              children: [
                Flexible(flex: 1,child: Container(),),
                ElevatedButton(
                  onPressed: (){},
                  child: const Text('Completed'),
                ),
                Flexible(flex: 1,child: Container(),),
                ElevatedButton(
                  onPressed: (){},
                  child: const Text('Cancelled'),
                ),
                Flexible(flex: 1,child: Container(),),
              ],
            )
        ),
        Flexible(flex: 1,child: Container(),)
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(
        'Bookings',
        style: TextStyle(
          fontSize: 22
        ),
      ),
    );
  }

}

