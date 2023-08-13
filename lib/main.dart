import 'package:dashboard_application/constants.dart';
import 'package:dashboard_application/controllers/menu_App_controller.dart';
import 'package:dashboard_application/models/my_file.dart';
import 'package:dashboard_application/screens/dashboard/components/file_info.dart';
import 'package:dashboard_application/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    CloudStorageInfo store = CloudStorageInfo();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgCOlor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white),
          canvasColor: secondColor),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuAppController(),
          ),
        ],
        child: const MainScreen(),
      ),
    );
  }
}
