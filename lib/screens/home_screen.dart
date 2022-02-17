import 'package:aplicacion_multiple_1/routes/app_routes.dart';
import 'package:aplicacion_multiple_1/theme/app_theme.dart';
import 'package:aplicacion_multiple_1/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('componentes en Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(AppRoutes.menuOptions.elementAt(index).icon,
                      color: AppTheme.primary),
                  title: Text(AppRoutes.menuOptions.elementAt(index).name),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const Listview1Screen()
                    //     );
                    // Navigator.pushReplacement(context, route);
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions.elementAt(index).route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
