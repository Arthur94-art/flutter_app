import 'package:flutter/material.dart';
import 'package:flutter_app/main_layout/provider/model.dart';
import 'package:flutter_app/main_layout/widgets/card_widget.dart';
import 'package:flutter_app/main_layout/widgets/modal_window.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(Icons.home),
          IconButton(
              onPressed: () => Data().navigateTo(context, ModalWindowWidget()),
              icon: Icon(Icons.add)),
          Row(
            children: [
              TextButton(
                  onPressed: () =>
                      Data().navigateByPathName('completed_list', context),
                  child: Row(
                    children: [
                      const Text('Completed', style: TextStyle(fontSize: 18)),
                      const SizedBox(width: 5),
                      Icon(
                        Icons.done_all_sharp,
                        color: Colors.lightGreen,
                      )
                    ],
                  )),
              TextButton(
                  onPressed: () =>
                      Data().navigateByPathName('archive_list', context),
                  child: Row(
                    children: [
                      const Text('Archive', style: TextStyle(fontSize: 18)),
                      const SizedBox(width: 5),
                      Icon(
                        Icons.send_and_archive_outlined,
                        color: Colors.grey[200],
                      )
                    ],
                  )),
            ],
          )
        ]),
      ),
      body: const CardWidget(
        textData: '',
      ),
    );
  }
}
