import 'package:dribbbledanimation/Screens/cafe/index.dart';
import 'package:dribbbledanimation/Screens/rassemblement/index.dart';
import 'package:dribbbledanimation/Screens/restaurant/index.dart';
import 'package:flutter/material.dart';
import 'package:dribbbledanimation/Screens/Home/index.dart';
import 'package:dribbbledanimation/Screens/Login/index.dart';


class Routes {
  Routes() {
    runApp(new MaterialApp(
     
      debugShowCheckedModeBanner: false,
      // home: new LoginScreen(),
      // onGenerateRoute: (RouteSettings settings) {
      //   switch (settings.name) {
      //     case '/login':
      //       return new MyCustomRoute(
      //         builder: (_) => new LoginScreen(),
      //         settings: settings,
      //       );

      //     case '/home':
      //       return new MyCustomRoute(
      //         builder: (_) => new HomeScreen(),
      //         settings: settings,
      //       );

      //     case '/restaurant':
      //       return new MyCustomRoute(
      //         builder: (_) => new Restaurant(),
      //         settings: settings,
      //       );

      //     case '/cafe':
      //       return new MyCustomRoute(
      //         builder: (_) => new Cafe(),
      //         settings: settings,
      //       ); 

          // case '/gathering':
      //       return new MyCustomRoute(
      //         builder: (_) => new Gathering(),
      //         settings: settings,
      //       );     
      //   }
      // },
    routes:{
      '/home' : (context)=> HomeScreen(),
      '/login' : (context) => LoginScreen(),
      '/restaurant' : (context) => Restaurant(),
      '/cafe' : (context) => Cafe(),
      '/gathering' : (context) => Gathering(),
    },
    initialRoute: '/home',
 title: "Dribbble Animation App",
    ));
  }
}

// class MyCustomRoute<T> extends MaterialPageRoute<T> {
//   MyCustomRoute({WidgetBuilder builder, RouteSettings settings})
//       : super(builder: builder, settings: settings);

//   @override
//   Widget buildTransitions(BuildContext context, Animation<double> animation,
//       Animation<double> secondaryAnimation, Widget child) {
//     if (settings.isInitialRoute) return child;
//     return new FadeTransition(opacity: animation, child: child);
//   }
// }
