import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard(
      {Key? key,
      required this.title,
      required this.picture,
      required this.link})
      : super(key: key);
  final String title;
  final String picture;
  final Widget link;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.3,
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => link),
            );
          },
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.width / 3.6,
                child: Image.asset('assets/images/$picture.png'),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 20,
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
    );
  }
}

//     return Card(
//       child: InkWell(
//         onTap: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => link));
//         },
//         child: Center(
//           child: ListTile(
//             title: Text(
//               title,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 color: Colors.black87,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//                 letterSpacing: 1,
//               ),
//             ),
//           ),
//         ),
//       ),
//       elevation: 5,
//       // margin: EdgeInsets.all(),
//       color: Colors.lightBlue,
//       shape: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//         borderSide: const BorderSide(color: Colors.lightBlue),
//       ),
//     );
//   }
// }
