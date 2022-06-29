// import 'package:flutter/material.dart';
// import 'package:flutter_offline/flutter_offline.dart';

// class MyAppABC extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("Connection"),
//           ),
//           body: Builder(
//             builder: (BuildContext context) {
//               return OfflineBuilder(
//                 connectivityBuilder: (BuildContext context,
//                     ConnectivityResult connectivity, Widget child) {
//                   final bool connected =
//                       connectivity != ConnectivityResult.none;
//                   return Stack(
//                     fit: StackFit.expand,
//                     children: [
//                       child,
//                       Positioned(
//                         left: 0.0,
//                         right: 0.0,
//                         height: 32.0,
//                         child: AnimatedContainer(
//                           duration: const Duration(milliseconds: 300),
//                           color:
//                               connected ? Color(0xFF00EE44) : Color(0xFFEE4400),
//                           child: connected
//                               ? Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: <Widget>[
//                                     Text(
//                                       "ONLINE",
//                                       style: TextStyle(color: Colors.white),
//                                     ),
//                                   ],
//                                 )
//                               : Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: <Widget>[
//                                     Text(
//                                       "OFFLINE",
//                                       style: TextStyle(color: Colors.white),
//                                     ),
//                                     SizedBox(
//                                       width: 8.0,
//                                     ),
//                                     SizedBox(
//                                       width: 12.0,
//                                       height: 12.0,
//                                       child: CircularProgressIndicator(
//                                         strokeWidth: 2.0,
//                                         valueColor:
//                                             AlwaysStoppedAnimation<Color>(
//                                                 Colors.white),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//                 child: Center(
//                   child: Text("ONLINE Or OFFLINE"),
//                 ),
//               );
//             },
//           )),
//     );
//   }
// }

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';

class OffilineChecker extends StatefulWidget {
  @override
  State<OffilineChecker> createState() => _OffilineCheckerState();
}

class _OffilineCheckerState extends State<OffilineChecker> {
  bool hasInternet = false;

  ConnectivityResult result = ConnectivityResult.none;

  // @override
  // void initState() {
  //   super.initState();
  //   InternetConnectionChecker().onStatusChange.listen((status) {
  //     final hasInternet1 = status = InternetConnectionStatus.connected;

  //     setState(() => this.hasInternet = hasInternet);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(10),
          shadowColor: Colors.blue,
        ),
        child: Text('Check'),
        onPressed: () async {
          hasInternet = await InternetConnectionChecker().hasConnection;
          result = await Connectivity().checkConnectivity();
          final text = hasInternet ? 'Has Internet' : 'No Internet Connection';
          if (result == ConnectivityResult.mobile) {
            showSimpleNotification(
              Text('$text: Mobile Network'),
            );
          } else if (result == ConnectivityResult.wifi) {
            showSimpleNotification(
              Text('$text: Wifi Network'),
            );
          } else {
            showSimpleNotification(
              Text('$text: No Network'),
            );
          }
        },
      )),
    );
  }
}
