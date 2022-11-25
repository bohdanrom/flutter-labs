import 'package:flutter/material.dart';
import 'package:hello_world/curriculum.dart';

class WelcomePage extends StatelessWidget {
  final String? firstName, lastName, group;
  const WelcomePage(this.firstName, this.lastName, this.group, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, Map> curriculumPerGroup = scheduled;

    var groupMap = curriculumPerGroup[group];
    var groupEntriesLength = groupMap?.keys.length;
    var groupKeys = groupMap?.keys.toList();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome page'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: Text('Hello, $firstName $lastName',
                      style: const TextStyle(fontSize: 48))),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: groupEntriesLength,
                  itemBuilder: (context, index) {
                    var dayCurriculum =
                        groupMap?[groupKeys?[index]] as Map<int, String>;

                    return Column(children: [
                      Text("${groupKeys?[index]}\n"),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: dayCurriculum.keys.length,
                        itemBuilder: (context, index) {
                          var key = dayCurriculum.keys.toList()[index];
                          var value = dayCurriculum[key];

                          return Container(
                            height: 75,
                            margin: const EdgeInsets.all(10),
                            color: Colors.green,
                            child: Center(child: Text("$key: $value")),
                          );
                        },
                      ),
                    ]);
                  })
            ],
          ),
        ));
  }
}
