import 'package:flutter/material.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          scrollDirection: Axis.vertical,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverToBoxAdapter(
              //headerSilverBuilder only accepts slivers
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('My Top Widget'),
                  ),
                  TabBar(
                    tabs: [
                      Tab(child: Text('Available')),
                      Tab(child: Text('Taken')),
                    ],
                  ),
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: [
              // I wrapped large widgets in the SingleChildScrollView
              ListView.builder(
                itemBuilder: (context, index) => Text("$index"),
              ),
              const Text('2'),
            ],
          ),
        ),
      ),
    );
  }
}
