import 'package:flutter/material.dart';
import 'package:cooking_recipes/model/resep_model.dart';
import 'package:cooking_recipes/detail_screen.dart';
import 'dart:math';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 1200) {
          // Tampilan web
          return MainMobilePageWeb(gridCount: 4);
        } else if (constraints.maxWidth >= 600) {
          // Tampilan tablet
          return MainMobilePageMid(gridCount: 4);
        } else {
          // Tampilan mobile
          return MainMobilePage(gridCount: 2);
        }
      },
    );
  }
}

// Mobile
class MainMobilePage extends StatelessWidget {
  const MainMobilePage({super.key, required this.gridCount});

  final int gridCount;

  ResepModel getRandomRecipe() {
    final random = Random();
    return resepList[random.nextInt(resepList.length)];
  }

  @override
  Widget build(BuildContext context) {
    final randomRecipe = getRandomRecipe();

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Teks judul
            Container(
              margin: const EdgeInsets.only(
                left: 24.0,
                top: 36.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Mau masak apa",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "hari ini?",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            // Rekomendasi resep
            Container(
              margin: const EdgeInsets.only(top: 24.0, left: 24.0),
              child: Text(
                "Rekomendasi resep hari ini",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 24.0, left: 24.0, bottom: 16.0, right: 24.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailScreen(resepModel: randomRecipe);
                      },
                    ),
                  );
                },
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            randomRecipe.imageAsset,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                randomRecipe.name,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                '${randomRecipe.portion} | ${randomRecipe.cookingTime}',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Explore Resep
            Container(
              margin: const EdgeInsets.only(top: 24.0, left: 24.0),
              child: Text(
                "Explore resep",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            // GridView
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 24.0, right: 24.0, bottom: 24.0, top: 16.0),
                child: GridView.count(
                    crossAxisCount: gridCount,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 4 / 6,
                    children: resepList.map((resep) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(resepModel: resep);
                          }));
                        },
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    resep.imageAsset,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  resep.name,
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                  bottom: 12.0,
                                ),
                                child: Text(
                                  '${resep.portion} | ${resep.cookingTime}',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Tablet
class MainMobilePageMid extends StatelessWidget {
  const MainMobilePageMid({super.key, required this.gridCount});

  final int gridCount;

  ResepModel getRandomRecipe() {
    final random = Random();
    return resepList[random.nextInt(resepList.length)];
  }

  @override
  Widget build(BuildContext context) {
    final randomRecipe = getRandomRecipe();

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Teks judul
            Container(
              margin: const EdgeInsets.only(
                left: 24.0,
                top: 36.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Mau masak apa",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "hari ini?",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            // Rekomendasi resep
            Container(
              margin: const EdgeInsets.only(top: 24.0, left: 24.0),
              child: Text(
                "Rekomendasi resep hari ini",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 24.0, left: 24.0, bottom: 16.0, right: 24.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailScreen(resepModel: randomRecipe);
                      },
                    ),
                  );
                },
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            randomRecipe.imageAsset,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 36.0, top: 36.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                randomRecipe.name,
                                style: TextStyle(
                                    fontSize: 32.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                '${randomRecipe.portion} | ${randomRecipe.cookingTime}',
                                style: TextStyle(fontSize: 24.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Explore Resep
            Container(
              margin: const EdgeInsets.only(top: 24.0, left: 24.0),
              child: Text(
                "Explore resep",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            // GridView
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 24.0, right: 24.0, bottom: 24.0, top: 16.0),
                child: GridView.count(
                    crossAxisCount: gridCount,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 4 / 6,
                    children: resepList.map((resep) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(resepModel: resep);
                          }));
                        },
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    resep.imageAsset,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  resep.name,
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                  bottom: 12.0,
                                ),
                                child: Text(
                                  '${resep.portion} | ${resep.cookingTime}',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Web
class MainMobilePageWeb extends StatelessWidget {
  const MainMobilePageWeb({super.key, required this.gridCount});

  final int gridCount;

  ResepModel getRandomRecipe() {
    final random = Random();
    return resepList[random.nextInt(resepList.length)];
  }

  @override
  Widget build(BuildContext context) {
    final randomRecipe = getRandomRecipe();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 32,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            width: 1200,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Teks Judul
                  const Text(
                    'Mau masak apa hari ini?',
                    style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 32),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Rekomendasi resep
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(
                              top: 24.0, left: 24.0, bottom: 16.0, right: 24.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return DetailScreen(
                                        resepModel: randomRecipe);
                                  },
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    randomRecipe.imageAsset,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    randomRecipe.name,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '${randomRecipe.portion} | ${randomRecipe.cookingTime}',
                                  style: const TextStyle(fontSize: 14.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 32),

                      // Explore Resep
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Explore resep',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              height: 600,
                              child: GridView.count(
                                crossAxisCount: gridCount,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                childAspectRatio: 4 / 6,
                                children: resepList.map((resep) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return DetailScreen(resepModel: resep);
                                      }));
                                    },
                                    child: Card(
                                      elevation: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Expanded(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.asset(
                                                resep.imageAsset,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8.0),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  resep.name,
                                                  style: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Text(
                                                  '${resep.portion} | ${resep.cookingTime}',
                                                  style: const TextStyle(
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
