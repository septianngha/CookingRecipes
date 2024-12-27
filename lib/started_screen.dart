import 'package:cooking_recipes/main_screen.dart';
import 'package:flutter/material.dart';

var startedTextStyle = TextStyle(
  fontFamily: 'Sriracha',
  fontSize: 35.0,
);

class StartedScreen extends StatelessWidget {
  const StartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 1200) {
          // Tampilan web
          return StartedWebPage();
        } else if (constraints.maxWidth >= 800) {
          // Tampilan tablet
          return StartedMobilePageMid();
        } else {
          // Tampilan mobile
          return StartedMobilePage();
        }
      },
    );
  }
}

// Started Mobile Page
class StartedMobilePage extends StatelessWidget {
  const StartedMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/started_image.png',
              fit: BoxFit.contain,
              width: 350,
              height: 350,
            ),
            Text(
              "It's cooking time",
              style: startedTextStyle,
            ),
            Text(
              "Let's do it!",
              style: startedTextStyle,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainScreen();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: const Text(
                  'Get started',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'NunitoSans',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Started Mobile Page Mid (Tablet)
class StartedMobilePageMid extends StatelessWidget {
  const StartedMobilePageMid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/started_image.png',
              fit: BoxFit.contain,
              width: 550,
              height: 550,
            ),
            Text(
              "It's cooking time",
              style: TextStyle(
                fontSize: 48,
                fontFamily: 'Sriracha',
              ),
            ),
            Text(
              "Let's do it!",
              style: TextStyle(
                fontSize: 48,
                fontFamily: 'Sriracha',
              ),
            ),
            SizedBox(height: 55),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainScreen();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 14.0,
                ),
                child: const Text(
                  'Get started',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'NunitoSans',
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

// Started Web Page
class StartedWebPage extends StatelessWidget {
  const StartedWebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/started_image.png',
              fit: BoxFit.contain,
              width: 350,
              height: 350,
            ),
            Text(
              "It's cooking time",
              style: startedTextStyle,
            ),
            Text(
              "Let's do it!",
              style: startedTextStyle,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainScreen();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: const Text(
                  'Get started',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'NunitoSans',
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
