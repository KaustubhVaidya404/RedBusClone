
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Row(
        children: [
          SvgPicture.asset(
            'assets/logo.svg',
            height: 30,
            width: 10,
          ),
        ],
      ),
    );
  }

  ListView buildBody() {
    return ListView(
      padding: const EdgeInsets.all(10.00),
    children: [
      const Text(
        'Bus Tickets',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(
            color: Colors.black,
            width: 0.5,
          ),
        ),
        color: Colors.white,
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/bus.svg',
                    height: 30,
                    width: 10,
                  ),
                ),
                const SizedBox(
                  width: 300,
                  height: 60,
                  child:
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'From'
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/bus.svg',
                    height: 30,
                    width: 10,
                  ),
                ),
                const SizedBox(
                  width: 300,
                  height: 60,
                  child:
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'To'
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/calendar.svg',
                    height: 30,
                    width: 10,
                  ),
                ),
                const Expanded(
                  child: ListTile(
                    subtitle: Text(
                      "Tue, 19 Sep",
                      style: TextStyle(
                        fontSize: 20.00,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    title: Text(
                        'Date of Journey',
                        style: TextStyle(fontSize: 10.0)
                    ),
                  ),
                ),
                ElevatedButton(onPressed: (){}, child: const Text("Today")),
                const SizedBox(width: 2.5),
                ElevatedButton(onPressed: (){}, child: const Text("Tomorrow")),
                const SizedBox(width: 2.5),
              ],
            ),
          ],
        ),
      ),
      ElevatedButton(onPressed: (){}, child: const Text('Search Buses')),
      const ListTile(
        title: Text(
          'Top destinations',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        subtitle: Text(
          'From Pune',
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 15
          ),
        ),
      ),
      SizedBox(
    height:150,
    width: 100,
    child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 120,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Flexible(flex: 1,child: Container(),),
                  const ListTile(
                    title: Text(
                      'Nagpur',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Text(
                      'Fom Rs.800',
                      style: TextStyle(
                        fontSize: 10,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50,),
            Container(
              width: 120,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Flexible(flex: 1,child: Container(),),
                  const ListTile(
                    title: Text(
                      'Aurangabad',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Text(
                      'Fom Rs.800',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 120,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Flexible(flex: 1,child: Container(),),
                  const ListTile(
                    title: Text(
                      'Delhi',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Text(
                      'Fom Rs.800',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 120,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Flexible(flex: 1,child: Container(),),
                  const ListTile(
                    title: Text(
                      'Bengal',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Text(
                      'Fom Rs.800',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 120,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Flexible(flex: 1,child: Container(),),
                  const ListTile(
                    title: Text(
                      'Bihar',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Text(
                      'Fom Rs.800',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const Text(
        'Rate Us',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      ElevatedButton(onPressed: (){}, child: const Text('Rate Us Now!!!')),
      const Column(
        children: [
          ListTile(
            title: Text(
              'Live PNR updates',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Text(
              'Get available train seats for WL PNR',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Train PRN'
            ),
          ),
        ],
      )
    ],
  );
  }
}
