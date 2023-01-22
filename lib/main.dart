import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Lady with an Ermine',
                style: TextStyle(fontSize: 22.0),
              ),
              background: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Lady_with_an_Ermine_-_Leonardo_da_Vinci_-_Google_Art_Project.jpg/480px-Lady_with_an_Ermine_-_Leonardo_da_Vinci_-_Google_Art_Project.jpg'),
            ),
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height *
                0.775, //قد ايش الصوره ماخذه حجمها بالصفحه

            //return button
            leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
            onPressed: () => Navigator.of(context).pop(),),

          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 600,
                width: 10,
                decoration: BoxDecoration(
                  color: Colors.brown[800],
                  border: Border.all(color: Colors.black, width: 0.4),
                ),
                //textSection Widget
                child: Center(
                  child: new Column(children: <Widget>[
                    //main title
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Lady with an Ermine by Leonardo da Vinci',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Lady with an Ermine is a work of art by Italian artist Leonardo da Vinci from around 1489–1490 and one of Polands national fortunes. The subject is Cecilia Gallerani, she was the lady of Ludovico Sforza, Duke of Milan, and Leonardo was in the Dukes administration.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ]),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
