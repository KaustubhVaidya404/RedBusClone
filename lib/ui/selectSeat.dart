import 'package:flutter/material.dart';
import 'package:redbusclone/ui/bookingPage.dart';
import 'package:redbusclone/ui/selectBus.dart';
import 'package:book_my_seat/book_my_seat.dart';

class SelectSeat extends StatefulWidget {
  const SelectSeat({super.key});

  @override
  State<SelectSeat> createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  Set<SeatNumber> selectedSeats = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(),
    );
  }

  SafeArea buildBody() {
    return SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            const Text("Front of bus is this side"),
            const SizedBox(
              height: 32,
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(20.00),
                child: SizedBox(
                  // width: double.maxFinite,
                  // height: 500,
                  child: SeatLayoutWidget(
                    onSeatStateChanged: (rowI, colI, seatState) {
                      if (seatState == SeatState.selected) {
                        selectedSeats.add(SeatNumber(rowI: rowI, colI: colI));
                      } else {
                        selectedSeats.remove(SeatNumber(rowI: rowI, colI: colI));
                      }
                    },
                    stateModel: const SeatLayoutStateModel(
                      rows: 10,
                      cols: 7,
                      seatSvgSize: 45,
                      pathSelectedSeat: 'assets/seat_selected.svg',
                      pathDisabledSeat: 'assets/seat_disbaled.svg',
                      pathSoldSeat: 'assets/seat_sold.svg',
                      pathUnSelectedSeat: 'assets/seat_unselected.svg',
                      currentSeatsState: [
                        [
                          SeatState.disabled,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.sold,
                        ],
                        [
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                        [
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.sold,
                          SeatState.sold,
                          SeatState.sold,
                        ],
                        [
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                        [
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.sold,
                          SeatState.sold,
                        ],
                        [
                          SeatState.sold,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                        [
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                        [
                          SeatState.sold,
                          SeatState.sold,
                          SeatState.unselected,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                        [
                          SeatState.empty,
                          SeatState.empty,
                          SeatState.empty,
                          SeatState.empty,
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.sold,
                        ],
                        [
                          SeatState.unselected,
                          SeatState.unselected,
                          SeatState.sold,
                          SeatState.sold,
                          SeatState.sold,
                          SeatState.unselected,
                          SeatState.unselected,
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(24.00),
              child: TextButton(onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                return const SelectBus();
              }));},
                child: const Text(
                  'Confirm Booking',
                  style: TextStyle(
                      fontSize: 22
                  ),
                ),
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
            return const SelectBus();
          }));}, icon: const Icon(Icons.arrow_back)),
          const Text(
              'Back'
          )
        ],
      ),
    );
  }
}

class SeatNumber {
  final int rowI;
  final int colI;

  const SeatNumber({required this.rowI, required this.colI});

  @override
  bool operator ==(Object other) {
    return rowI == (other as SeatNumber).rowI && colI == other.colI;
  }

  @override
  int get hashCode => rowI.hashCode;

  @override
  String toString() {
    return '[$rowI][$colI]';
  }
}

