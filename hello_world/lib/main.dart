//Stateless

// import 'package:flutter/material.dart';

// void main(){
//   runApp(
//    MaterialApp(
//      title: "My App",
//      home: MyScaffold(),
//    )
//   );
// }
// class MyAppBar extends StatelessWidget{
//   MyAppBar ({this.title});
//   final title;
//   @override
//   Widget build(BuildContext context){
//     return  Container(
//       height: 48.0,
//       padding: const EdgeInsets.symmetric( vertical: 100.0 ),
//       decoration:  BoxDecoration (color: Colors.green),
//       child: Row(
//         children: <Widget>[
//           IconButton(
//             onPressed: null,
//             icon: Icon(Icons.menu),
//             tooltip: "Navigation menu",
//           ),
//           Expanded(
//             child: title,
//           ),
//           IconButton(
//             onPressed: null,
//             icon: Icon(Icons.search),
//             tooltip: "Navigation menu",
//           ),
//         ],
//       ) 
//       );
//   }
// }

// class MyScaffold extends StatelessWidget{

//   @override
//   Widget build (BuildContext context){
//     return Material(
//       child: Column(
//         children: <Widget>[
//           MyAppBar(title: Text(
//             'Example',
//             style: Theme.of(context).primaryTextTheme.bodyText1,
//           ),
//           ),
//           Expanded(
//             child: Center(
//               child: Text ('Hello World'),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
   
//   @override
//   Widget build(BuildContext context){
//     return  Center(
//       child: Text('Hello World',  textDirection: TextDirection.ltr),
//       );
//   }
// }

//Statefull
// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

// void main() => runApp(NewApp());

// class NewApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context){
//     final wordPair = WordPair.random();
//     return MaterialApp(
//       title: "Wel come my project",
//       home: RandomWords()
//     );
//   }
// }

// class RandomWords extends StatefulWidget{
//   @override
//   RandomWordsState createState() => RandomWordsState();
// }
// class RandomWordsState extends State<RandomWords>{
//   final _worlds = <WordPair>[];
//   final Set<WordPair> _saved = new Set<WordPair>();
//   @override
//   Widget build(BuildContext context){
//     final wordPair = WordPair.random();
//     return Scaffold(
//         appBar: AppBar(
//           title: Text ('Example Stateful'),
//           actions: <Widget>[
//             new IconButton(icon: const Icon(Icons.list), onPressed: _pushSaved)
//           ],
//         ),
//         body: Center(
//           child: ListView.builder(itemBuilder: (context, index){
//             if(index.isOdd)
//               return Divider();
//             if (index >= _worlds.length){
//               _worlds.addAll(generateWordPairs().take(10));
//             }
//             return _buildRow(_worlds[index]);
//           }),
//         ),
//     );
//   }
//   Widget _buildRow(WordPair wordPair){
//     final bool alreadySaved = _saved.contains(wordPair);
//     return ListTile(
//       title: Text(
//         wordPair.asUpperCase,
//         style: const TextStyle(fontSize:  20.0),
//       ),
//       trailing:  new Icon(
//         alreadySaved? Icons.favorite : Icons.favorite_border,
//         color: alreadySaved? Colors.red : null,
//       ),
//       onTap: (){
//         setState(() {
//           if (alreadySaved){
//             _saved.remove(wordPair);
//           }
//           else{
//             _saved.add(wordPair);
//           }
//         });
//       },
//     );
//   }
//   void _pushSaved(){
//     Navigator.of(context).push(
//       new MaterialPageRoute(builder: (BuildContext context){
//         final Iterable<ListTile> titles = _saved.map((WordPair pair){
//           return new ListTile(
//             title: new Text(
//               pair.asUpperCase,
//               style: const TextStyle(fontSize:  20.0),
//             ),
//           );
//         });
//         final List<Widget> divided = ListTile.divideTiles(tiles: titles, context:  context).toList();
//         return new Scaffold(
//           appBar: new AppBar(
//              title: const Text("Saved"),
//           ),
//           body: new ListView(children: divided),
//         );
       
//       }));
//   }
// }

//LAYOUT

import 'package:flutter/material.dart';

void main() => runApp(App());
class App extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return  Container(
      height: 100.0,
      padding: const EdgeInsets.symmetric(vertical: 60.0),
      decoration:  BoxDecoration (color: Colors.white10),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.cloud, 
            color: Colors.blue.shade900,
            ),
          Text("Chào buổi chiều, Cong"),
        ],
      ) 
      );
  } 
}




