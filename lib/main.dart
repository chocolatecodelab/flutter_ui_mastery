import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_mastery/components/custom_button.dart';
import 'package:ui_mastery/components/custom_text_field.dart';
import 'package:ui_mastery/constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Mastery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.quicksandTextTheme()),
      home: const MyHomePage(title: 'Flutter UI Mastery'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool passwordSee = true; // Untuk menampilkan atau menyembunyikan password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
            style:
                TextManager.bodyLarge.copyWith(color: ColorManager.whiteGrey)),
        backgroundColor: ColorManager.primaryColor,
      ),
      body: Center(
          child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Custom TextField", style: TextManager.title),
            SizedBox(height: 20),
            CustomTextField(
              hintText: "Enter your email",
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            CustomTextField(
              hintText: "Enter your password",
              obsecureText: passwordSee,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                  icon: Icon(
                    passwordSee ? Icons.visibility : Icons.visibility_off,
                    color: ColorManager.fieldColor,
                  ),
                  onPressed: () {
                    setState(() {
                      passwordSee = !passwordSee;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
                onPressed: () {},
                widget: Text("Submit"),
                trailingWidget: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 14,
                ))
          ],
        ),
      )),
    );
  }
}
