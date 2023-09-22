import 'package:flutter/material.dart';
import 'storyBrain.dart';

StoryBrain storyBrain = StoryBrain();

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Destini(),
    ),
  ));
}

class Destini extends StatefulWidget {
  const Destini({super.key});

  @override
  State<Destini> createState() => _DestiniState();
}

class _DestiniState extends State<Destini> {
  void handleNextStory(int next) {
    debugPrint("NEXT: $next");
    if (next >= 0) {
      setState(() {
        storyBrain.nextStory(next);
      });
    } else {
      setState(() {
        storyBrain.setStoryEnd();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    storyBrain.getStory(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: "Skranji",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      letterSpacing: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: !storyBrain.getIsStoryEnd(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange)),
                      onPressed: () =>
                          handleNextStory(storyBrain.getChoise1NextStep()),
                      child: Text(
                        storyBrain.getChoice1(),
                        style: const TextStyle(
                            color: Colors.black, fontFamily: "Skranji"),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.limeAccent)),
                      onPressed: () =>
                          handleNextStory(storyBrain.getChoise2NextStep()),
                      child: Text(
                        storyBrain.getChoice2(),
                        style: const TextStyle(
                            color: Colors.black, fontFamily: "Skranji"),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Visibility(
                visible: storyBrain.getIsStoryEnd(),
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      storyBrain.resetTheStory();
                    });
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: const Text(
                    "Reset The Story",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Skranji",
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      letterSpacing: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
