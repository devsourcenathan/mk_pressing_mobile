import 'package:flutter/material.dart';
import 'package:mk_pressing/screens/auth/auth_screen.dart';
import 'package:mk_pressing/screens/auth/home_screen.dart';
import 'package:mk_pressing/screens/main_screen.dart';

import 'package:supabase_auth_ui/supabase_auth_ui.dart';

final activeSession = Supabase.instance.client.auth.currentSession;

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: activeSession == null ? AuthScreen() : MainScreen()),
    );
  }
}
