import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    title: 'First App',
    home: Scaffold(
      appBar: AppBar(
        title: Text("List widget"),
      ),
      body: MyApp4(),
    ),
  ));
}
// class MyApp2 extends StatefulWidget {
//   const MyApp2({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp2> createState() => _MyApp2State();
// }
//
// class _MyApp2State extends State<MyApp2> {
//   String txt = "";
//   @override
//   void initState() {
//     txt = "Hello Statefull widget";
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center,children :[
//               Text(txt),
//               ElevatedButton(
//                   onPressed:(){
//                     setState(() {
//                       txt = "xyz";
//                     });
//                     print("onPressed $txt");
//                   },
//                 child: Text("Change"),
//               )
//               ]
//       ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Center(child:Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         CustomButton('yes'),
//         SizedBox(height: 10),
//         CustomButton('no'),
//       ],
//     ),
//     );
//   }
// }
// class CustomButton extends StatelessWidget{
//   final String title;
//   CustomButton(this.title);
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: (){
//         print("Hello MR");
//       },
//       child: Container(
//         height: 50,
//         width: 100,
//         decoration: BoxDecoration(shape: BoxShape.rectangle, color: Colors.blue,),
//         child: Center(child: Text(title)),
//       ),
//     );
//   }
// }
// class MyApp3 extends StatelessWidget {
//   const MyApp3({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       //crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text("Hi"),
//         Text("this"),
//         Text("is"),
//         Text("row"),
//       ],
//     );
//   }
// }
class MyApp4 extends StatefulWidget {
  const MyApp4({Key? key}) : super(key: key);

  @override
  State<MyApp4> createState() => _MyApp4State();
}

class _MyApp4State extends State<MyApp4> {
  List<int> list = [];
  @override
  void initState() {
    for (int i = 1; i <= 50; i++) {
      list.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext cnx, int index) {
          return ListTile(
            title: Text("Item no ${list[index]}"),
            leading: Container(
              height: 10,
              width: 10,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            ),
            trailing: Icon(Icons.arrow_forward),
          );
        });
    //   ListView (
    //   children: [
    //     ListTile(
    //       title: Text("Item 1"),
    //       leading: Container(
    //         height: 10,
    //         width: 10,
    //         decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),
    //       ),
    //       trailing: Icon(Icons.arrow_forward),
    //     ),
    //     ListTile(
    //       title: Text("Item 2"),leading: Container(
    //       height: 10,
    //       width: 10,
    //       decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),
    //     ),
    //       trailing: Icon(Icons.arrow_forward),
    //     ),
    //     ListTile(
    //       title: Text("Item 3"),leading: Container(
    //       height: 10,
    //       width: 10,
    //       decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),
    //     ),
    //       trailing: Icon(Icons.arrow_forward),
    //     ),
    //   ],
    // );
  }
}
