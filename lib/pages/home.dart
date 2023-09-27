import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_aranyani_mobile_app/components/home/drawer.dart';
import 'package:project_aranyani_mobile_app/pages/community/community_home.dart';
import 'package:project_aranyani_mobile_app/testing/prototype.dart';
import 'package:rive/rive.dart';

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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: "Share",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Theme.of(context).colorScheme.primary,
                textColor: Theme.of(context).colorScheme.secondary,
                fontSize: 16.0,
              );
            },
            icon: const Icon(Icons.share_rounded),
          ),
          IconButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: "How to increase rating",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Theme.of(context).colorScheme.primary,
                textColor: Theme.of(context).colorScheme.secondary,
                fontSize: 16.0,
              );
            },
            icon: const Icon(Icons.question_mark_rounded),
          ),
        ],
      ),
      drawer: const HomeDrawer(),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Your Rating: ',
                  style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.headlineSmall!.fontSize,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Text(
                  Prototype.ratingValue.toString(),
                  style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.headlineSmall!.fontSize,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
            const SizedBox.square(
              dimension: 500,
              child: RiveAnimation.asset(
                'assets/animations/tree3.riv',
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Recent Update: ",
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
                Text(
                  "You bought a car with high emissions. \nYour rating has decreased by 10 points.",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const CommunityHome();
              },
            ),
          );
        },
        tooltip: 'Increment',
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.people_rounded),
      ),
    );
  }
}
