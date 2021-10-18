import 'package:WeLoveCanoeSlalom/card_for_menu.dart';
import 'package:WeLoveCanoeSlalom/history_page.dart';
import 'package:WeLoveCanoeSlalom/morning_test.dart';
import 'package:WeLoveCanoeSlalom/rules_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Removing banner "Debug" from right corner of the app
      debugShowCheckedModeBanner: false,
      title: 'Мы любим гребной слалом',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Мы любим гребной слалом'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Diary widget starts from here
                  Container(
                    width: MediaQuery.of(context).size.width * 0.42,
                    height: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    // Material widget needed to show effect of clicking
                    // And also you have to add border radius, so the effect
                    // would not have sharp corners
                    child: Material(
                      borderRadius: BorderRadius.circular(
                        (15),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MorningTest(),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              height: MediaQuery.of(context).size.width / 3.5,
                              child:
                                  Image.asset('assets/images/diary_image.png'),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  'ЗАПОЛНИТЬ\nДНЕВНИК',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 20,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Diary widget ends here
                  //
                  // Calendar widget starts here
                  Container(
                    width: MediaQuery.of(context).size.width * 0.42,
                    height: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(
                        (15),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              height: MediaQuery.of(context).size.width / 3.6,
                              child: Image.asset(
                                  'assets/images/calendar_image.png'),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  'КАЛЕНДАРЬ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 20,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Calendar widget ends here
                ],
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  MenuCard(
                    title: 'Немного\nИстории',
                    picture: 'scroll',
                    link: HistoryPage(),
                  ),
                  MenuCard(
                    title: 'Правила',
                    picture: 'rules',
                    link: RulesPage(),
                  ),
                  MenuCard(
                    title: 'Подготовка',
                    picture: 'training',
                    link: RulesPage(),
                  ),
                  MenuCard(
                    title: 'Восстанов\nление',
                    picture: 'rest',
                    link: RulesPage(),
                  ),
                  MenuCard(
                    title: 'Питание',
                    picture: 'food',
                    link: RulesPage(),
                  ),
                  MenuCard(
                    title: 'Снаряжение',
                    picture: 'equipment',
                    link: RulesPage(),
                  ),
                  MenuCard(
                    title: 'Антидопинг',
                    picture: 'doping',
                    link: RulesPage(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class MenuPage extends StatelessWidget {
//   const Me
// }
