import 'package:flutter/material.dart';
import 'package:githubshow/common/fluter_loading.dart';
import 'package:go_router/go_router.dart';

class DetailsScreen extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Details Screen')),
        body: Row(
          children: [
            Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      margin: EdgeInsets.only(left: 50, right: 50),
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                      ),
                      child: Center(
                        child: Text("Github 的 用户相关的信息"),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.only(left: 50, right: 50),
                          decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                          ),
                          child: Center(
                            child: Text("Github 的 用户的雷达图"),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),

                        SizedBox(
                          width: 20,
                        ),
                      ],
                    )
                  ],
                )),
            SizedBox(
              width: 375,
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    child: Container(
                      height: 50,
                      color: Colors.cyan,
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
