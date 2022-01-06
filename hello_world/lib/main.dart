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

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}
class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title});
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.cloud, 
            color: Colors.blue.shade900,
            ),
          Expanded(
            child: Text(
              "Chào buổi chiều, Cong",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                height: 2,
              ),
            ),
          ),
          IconButton(
            onPressed: null,
             icon: Icon(
               Icons.favorite, 
               color: Colors.red,
              ),
             focusColor: Colors.black,
          ),
          IconButton(
            onPressed: null, 
            icon: Icon(Icons.notifications),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'Example title',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12,),
            child: TextField(
              decoration: InputDecoration( 
                prefixIcon: Icon(Icons.search, color: Colors.grey,),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20), 
                  ),
                hintText: 'Enter a search term',
              ),
            ),
          ),
          Row(
            
          ),
        ],  
      ),
    );
  }
}

