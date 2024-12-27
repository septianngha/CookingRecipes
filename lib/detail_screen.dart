import 'package:flutter/material.dart';
import 'package:cooking_recipes/model/resep_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.resepModel});

  final ResepModel resepModel;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 1200) {
          // Tampilan web
          return DetailMobilePageWeb(resepModel: resepModel);
        } else if (constraints.maxWidth >= 600) {
          // Tampilan tablet
          return DetailMobilePageMid(resepModel: resepModel);
        } else {
          // Tampilan mobile
          return DetailMobilePage(resepModel: resepModel);
        }
      },
    );
  }
}

class SavingButton extends StatefulWidget {
  const SavingButton({super.key});

  @override
  SavingButtonState createState() => SavingButtonState();
}

class SavingButtonState extends State<SavingButton> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isSaved ? Icons.bookmark : Icons.bookmark_border,
        color: isSaved ? Colors.white : Colors.white,
      ),
      onPressed: () {
        setState(() {
          isSaved = !isSaved;
        });
      },
    );
  }
}


// Mobile
class DetailMobilePage extends StatelessWidget {
  const DetailMobilePage({super.key, required this.resepModel});

  final ResepModel resepModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    resepModel.imageAsset,
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          child: SavingButton(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),


            Container(
              margin: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: Text(
                resepModel.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'NunitoSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.dinner_dining),
                      const SizedBox(height: 8.0),
                      Text(
                        resepModel.portion,
                        style: TextStyle(fontFamily: 'NunitoSans'),
                      ),
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(height: 8.0),
                      Text(
                        resepModel.cookingTime,
                        style: TextStyle(fontFamily: 'NunitoSans'),
                      ),
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      Icon(Icons.map),
                      SizedBox(height: 8.0),
                      Text(
                        resepModel.origin,
                        style: TextStyle(fontFamily: 'NunitoSans'),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                resepModel.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'NunitoSans',
                ),
              ),
            ),


            // Menampilkan Ingredients
            Padding(
              padding: const EdgeInsets.only(left: 28.0, top: 16.0),
              child: Text(
                'Ingredients',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'NunitoSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: resepModel.ingredientsList.map((ingredient) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 4.0, left: 16.0),
                    child: Text(
                      ingredient,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),


            // Menampilkan Step by Step
            Padding(
              padding: const EdgeInsets.only(left: 28.0, top: 16.0),
              child: Text(
                'Step-by-Step',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'NunitoSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: resepModel.steps.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.circle),
                    title: Text(resepModel.steps[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Tablet
class DetailMobilePageMid extends StatelessWidget {
  const DetailMobilePageMid({super.key, required this.resepModel});

  final ResepModel resepModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    resepModel.imageAsset,
                    fit: BoxFit.cover,
                  ),
                ),

                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          child: SavingButton(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Container(
              margin: const EdgeInsets.only(top: 22.0, bottom: 8.0),
              child: Text(
                resepModel.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 42.0,
                  fontFamily: 'NunitoSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(
                        Icons.dinner_dining,
                        size: 48.0,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        resepModel.portion,
                        style:
                            TextStyle(fontFamily: 'NunitoSans', fontSize: 16.0),
                      ),
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        size: 48.0,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        resepModel.cookingTime,
                        style:
                            TextStyle(fontFamily: 'NunitoSans', fontSize: 16.0),
                      ),
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.map,
                        size: 48.0,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        resepModel.origin,
                        style:
                            TextStyle(fontFamily: 'NunitoSans', fontSize: 16.0),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                resepModel.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'NunitoSans',
                ),
              ),
            ),


            // Menampilkan Ingredients
            Padding(
              padding: const EdgeInsets.only(left: 48.0, top: 24.0),
              child: Text(
                'Ingredients',
                style: TextStyle(
                  fontSize: 26.0,
                  fontFamily: 'NunitoSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: resepModel.ingredientsList.map((ingredient) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 4.0, left: 16.0),
                    child: Text(
                      ingredient,
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),


            // Menampilkan Step by Step
            Padding(
              padding: const EdgeInsets.only(left: 48.0, top: 24.0),
              child: Text(
                'Step-by-Step',
                style: TextStyle(
                  fontSize: 26.0,
                  fontFamily: 'NunitoSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(32.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: resepModel.steps.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.circle),
                    title: Text(
                      resepModel.steps[index],
                      style: TextStyle(fontFamily: 'NunitoSans'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Web
class DetailMobilePageWeb extends StatelessWidget {
  const DetailMobilePageWeb({super.key, required this.resepModel});

  final ResepModel resepModel;

  @override
  Widget build(BuildContext context) {
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    resepModel.imageAsset,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: 16,
                                  left: 16,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 16,
                                  right: 16,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                    child: SavingButton(),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 32),
                      Expanded(
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Text(
                                  resepModel.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 26.0,
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.dinner_dining),
                                    const SizedBox(width: 8.0),
                                    Text(
                                      resepModel.portion,
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 8.0),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.access_time),
                                    const SizedBox(width: 8.0),
                                    Text(
                                      resepModel.cookingTime,
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 8.0),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.map),
                                    const SizedBox(width: 8.0),
                                    Text(resepModel.origin),
                                  ],
                                ),

                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16.0,
                                  ),
                                  child: Text(
                                    resepModel.description,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'NunitoSans',
                                    ),
                                  ),
                                ),


                                // Menampilkan Ingredients
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        'Ingredients',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'NunitoSans',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 8.0),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: resepModel.ingredientsList
                                          .map((ingredient) {
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 4.0, left: 2.0),
                                          child: Text(
                                            ingredient,
                                            style: TextStyle(
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ],
                                ),


                                // Menampilkan Step by Step
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 4.0,
                                        top: 16.0,
                                      ),
                                      child: Text(
                                        'Step-by-Step',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'NunitoSans',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Container(
                                  padding: const EdgeInsets.only(
                                    top: 16.0,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          itemCount: resepModel.steps.length,
                                          itemBuilder: (context, index) {
                                            return ListTile(
                                              leading: Icon(Icons.circle),
                                              title: Text(
                                                resepModel.steps[index],
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
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
