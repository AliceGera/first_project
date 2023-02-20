import 'package:first_project/di/injector.dart';
import 'package:first_project/screens/learn_about_crypto/learn_about_crypto_screen.dart';
import 'package:first_project/screens/mission_task_screen.dart';
import 'package:first_project/screens/motivations/motivations_screen.dart';
import 'package:first_project/screens/new_blockchain/new_blockchain_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  configureInjector();
  runApp(
    MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: const [
        AppLocalizations.delegate, // # Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('th', ''),
        Locale('ru', ''),
      ],
      theme: ThemeData(primaryColor: Colors.amber),
      //home: const Home(),
      initialRoute: '/',
      routes: {
        //'/': (context) => FoxWidget(),
        '/screen1': (context) => const LearnAboutCryptoScreen(),
        '/screen2': (context) => const newBlockchain(),
        '/screen3': (context) => const MotivationsScreen(),
        '/screen4': (context) => const MissionTaskWidget(),
      },
      home: const Scaffold(
        //appBar: AppBar(title: const Text(_title)),
        body: LearnAboutCryptoScreen(),
        //learnAboutCrypto(),
      ),
    ),
  );
}

/*class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: <Widget>[
        learnAboutCrypto(),
        FoxWidget(),
        learnAboutCrypto(),
      ],
    );
  }
}*/
