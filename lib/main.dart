import 'package:first_project/screens/learn_about_crypto/learn_about_crypto_screen.dart';
import 'package:first_project/screens/mission_task_screen.dart';
import 'package:first_project/screens/motivations/motivations_screen.dart';
import 'package:first_project/screens/new_blockchain/new_blockchain_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() => runApp(
      MaterialApp(
        title: 'Localizations Sample App',
        localizationsDelegates: [
          AppLocalizations.delegate, // # Add this line
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
       supportedLocales: [
          Locale('en', ''),
          Locale('th', ''),
        ],
        theme: ThemeData(primaryColor: Colors.amber),
        //home: const Home(),
        initialRoute: '/',
        routes: {
          //'/': (context) => FoxWidget(),
          '/screen1': (context) => LearnAboutCryptoScreen(),
          '/screen2': (context) => newBlockchain(),
          '/screen3': (context) => MotivationsScreen(),
          '/screen4': (context) => MissionTaskWidget(),
        },
        home: Scaffold(

          //appBar: AppBar(title: const Text(_title)),
          body: LearnAboutCryptoScreen(),
          //learnAboutCrypto(),
        ),
      ),
    );

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
