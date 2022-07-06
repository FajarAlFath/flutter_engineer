import 'package:flutter/material.dart';
import 'package:flutter_bayeue/model/api/category_api.dart';
import 'package:flutter_bayeue/model/response_category.dart';
import 'package:unicons/unicons.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final CategoryApi _api = CategoryApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 227, 244, 254),
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            UniconsLine.angle_left_b,
            color: Colors.black,
            size: 40,
          ),
        ),
        title: Text(
          'Setting',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.black.withOpacity(0.8)),
        ),
      ),
      body: Column(
        children: [
          FutureBuilder<List<Result>?>(
              future: _api.getCategory(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Result> listresult = snapshot.data!;
                  return Expanded(
                      child: ListView.builder(
                    itemCount: listresult.length,
                    itemBuilder: (context, index) {
                      return Text(listresult[index].name);
                    },
                  ));
                } else {
                  return const CircularProgressIndicator();
                }
              })

          // GridView.builder(
          //   physics: const NeverScrollableScrollPhysics(),
          //   shrinkWrap: true,
          //   gridDelegate:
          //       const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          //   itemBuilder: (context, i) {
          //     final CategoryRespon data = category.response[i];
          //     return Card(
          //       shape:
          //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //       elevation: 5,
          //       shadowColor: Colors.grey,
          //       child: InkWell(
          //         splashColor: Colors.blue.withAlpha(50),
          //         onTap: () {},
          //         child: SizedBox(
          //           height: 80,
          //           width: 80,
          //           child: Row(
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.all(2),
          //                 child: Container(
          //                   height: 40,
          //                   width: 40,
          //                   decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.circular(10),
          //                     color: Colors.grey.shade300,
          //                   ),
          //                   child: Icon(
          //                     UniconsLine.user,
          //                     color: Colors.blue.withOpacity(0.8),
          //                   ),
          //                 ),
          //               ),
          //               Column(
          //                 children: [
          //                   Text(
          //                     data.name[i],
          //                     style: const TextStyle(
          //                         fontWeight: FontWeight.bold, fontSize: 20),
          //                   )
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //     );
          //   },
          //   itemCount: category.response.length,
          // ),
        ],
      ),
    );
  }
}
