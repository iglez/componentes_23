import 'package:componentes_23/router/app_routes.dart';
import 'package:componentes_23/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Home'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
          //   return ListTile(
          //     leading: const Icon(Icons.access_time_outlined),
          //     title: const Text('Nombre de ruta'),
          //     onTap: () {
          //       // final route =
          //       //     MaterialPageRoute(builder: (context) => ListView1Screen());

          //       // Navigator.push(context, route);
          //       // // Navigator.pushReplacement(context, route);

          //       Navigator.pushNamed(context, 'card');
          //     },
          //   );
          // },
          // separatorBuilder: (_, __) => Divider(),
          // itemCount: 10),

          return ListTile(
              leading: Icon(AppRoutes.menuOptions[index].icon),
              title: Text(AppRoutes.menuOptions[index].name),
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
              },
            );
          },
          separatorBuilder: (_, __) => Divider(),
          itemCount: AppRoutes.menuOptions.length
        ),
    );
  }
}
