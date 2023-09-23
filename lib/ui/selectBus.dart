import 'package:flutter/material.dart';
import 'package:redbusclone/ui/home.dart';
import 'package:redbusclone/ui/selectSeat.dart';

class SelectBus extends StatefulWidget {
  const SelectBus({super.key});

  @override
  State<SelectBus> createState() => _SelectBusState();
}

class _SelectBusState extends State<SelectBus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap:(){},
                    child: const Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.00),
                            child: Icon(Icons.filter_alt),
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 5),
                            child: Text(
                              'Filter'
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: const Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.00),
                            child: Icon(Icons.sort),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                                'Sort'
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: const Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.00),
                            child: Icon(Icons.ac_unit),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                                'AC'
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: const Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.00),
                            child: Icon(Icons.airline_seat_flat),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                                'Sleeper'
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: const Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.00),
                            child: Icon(Icons.directions_bus),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                                'High Rated Bus'
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: const Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.00),
                            child: Icon(Icons.bus_alert),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                                'Live Tracking'
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.00),
            child: Column(
              children: [
                InkWell(
                  onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                    return const SelectSeat();
                  }));},
                  child: const Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  '15:00-10:30',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                  ),
                                ),
                                subtitle: Text(
                                  '18 seats'
                                ),
                              ),
                            ),
                            //Flexible(child: Container(), flex: 1,),
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  'From',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),
                                subtitle: Text(
                                    'Rs. 1700',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80,
                          child: ListTile(
                            title: Text(
                              'Reshma Tourist',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                              ),
                            ),
                            subtitle: Text(
                              'Bharat Benz',
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                    return const SelectSeat();
                  }));},
                  child: const Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  '13:00-09:30',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                subtitle: Text(
                                    '18 seats'
                                ),
                              ),
                            ),
                            //Flexible(child: Container(), flex: 1,),
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  'From',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),
                                subtitle: Text(
                                  'Rs. 1700',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80,
                          child: ListTile(
                            title: Text(
                              'Reshma Tourist',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            subtitle: Text(
                              'Bharat Benz',
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                    return const SelectSeat();
                  }));},
                  child: const Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  '16:00-10:00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                subtitle: Text(
                                    '9 seats'
                                ),
                              ),
                            ),
                            //Flexible(child: Container(), flex: 1,),
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  'From',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),
                                subtitle: Text(
                                  'Rs. 1700',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80,
                          child: ListTile(
                            title: Text(
                              'Sharma Tourist',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            subtitle: Text(
                              'Tata Benz',
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                    return const SelectSeat();
                  }));},
                  child: const Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  '17:00-09:30',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                subtitle: Text(
                                    '1 seats'
                                ),
                              ),
                            ),
                            //Flexible(child: Container(), flex: 1,),
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  'From',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),
                                subtitle: Text(
                                  'Rs. 1500',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80,
                          child: ListTile(
                            title: Text(
                              'Humsafar Tourist',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            subtitle: Text(
                              'Tata Benz',
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                    return const SelectSeat();
                  }));},
                  child: const Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  '16:00-10:30',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                subtitle: Text(
                                    '18 seats'
                                ),
                              ),
                            ),
                            //Flexible(child: Container(), flex: 1,),
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  'From',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),
                                subtitle: Text(
                                  'Rs. 1700',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80,
                          child: ListTile(
                            title: Text(
                              'Reshma Tourist',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            subtitle: Text(
                              'Bharat Benz',
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                    return const SelectSeat();
                  }));},
                  child: const Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  '15:00-10:30',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                subtitle: Text(
                                    '18 seats'
                                ),
                              ),
                            ),
                            //Flexible(child: Container(), flex: 1,),
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  'From',
                                  style: TextStyle(
                                      fontSize: 15
                                  ),
                                ),
                                subtitle: Text(
                                  'Rs. 1700',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80,
                          child: ListTile(
                            title: Text(
                              'Reshma Tourist',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            subtitle: Text(
                              'Bharat Benz',
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          IconButton(onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
            return const HomePage();
          }));}, icon: const Icon(Icons.arrow_back)),
          const Text(
            'Back'
          )
        ],
      ),
    );
  }
}

