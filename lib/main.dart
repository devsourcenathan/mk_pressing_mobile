import 'package:flutter/material.dart';
import 'package:mk_pressing/screens/auth/splash_screen.dart';
import 'package:mk_pressing/utilities/config.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = 'https://byjsyfvpgytjndwhypbx.supabase.co';
// const supabaseKey = String.fromEnvironment('SUPABASE_KEY');
const supabaseKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ5anN5ZnZwZ3l0am5kd2h5cGJ4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTY5ODM3MjQsImV4cCI6MjAzMjU1OTcyNH0.UuUjSnoLXObUiRz_EmS1lYcVf-D2F6KuoAoLdqIhzqc';
Future<void> main() async {
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseKey,
  );

  runApp(const MyApp());
}

// Get a reference your Supabase client
final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        primarySwatch: primaryColor,
      ),
      home: const MySplashScreen(),
    );
  }
}
