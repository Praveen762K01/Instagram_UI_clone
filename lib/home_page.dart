import 'package:flutter/material.dart';
import 'package:instagram/image_resource.dart';
import 'package:instagram/profileSource.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            storyTitle(),
            ProfileListWidet(),
            const Divider(
              thickness: 3,
            ),
            PostWidget(),
          ],
        ),
      ),
    );
  }

  Container PostWidget() {
    return Container(
      //height: 350,
      //width: double.infinity,
      //color: Colors.blue,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: InstaGradient(
                    imagePath: profileList[0].imagePath, size: 37),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(profileList[0].profileName),
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              'https://images.pexels.com/photos/13516347/pexels-photo-13516347.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load',
              height: 400,
              //width: double.infinity,
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
              IconButton(onPressed: () {}, icon: Icon(Icons.comment_rounded)),
              IconButton(onPressed: () {}, icon: Icon(Icons.send)),
              const Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_outline))
            ],
          ),
          Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Text("2,353 likes"),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Text("Sample Data    ###0000###"),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  SingleChildScrollView ProfileListWidet() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          YourStory(),
          for (int i = 0; i < profileList.length; i++) ...{
            StoryProfile(
                imagePath: profileList[i].imagePath,
                profileName: profileList[i].profileName),
          }
        ],
      ),
    );
  }

  Row storyTitle() {
    return Row(
      children: const [
        Text(
          "  Stories",
          style: TextStyle(),
        ),
        Spacer(),
        Icon(Icons.arrow_right),
        Text("Watch All  "),
      ],
    );
  }

  AppBar customAppBar() {
    return AppBar(
      backgroundColor: Colors.grey.shade200,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.camera_alt_outlined),
        color: Colors.black,
      ),
      title: Image.network(logo),
      elevation: 5,
      toolbarHeight: 50,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.send),
          color: Colors.black,
        ),
      ],
    );
  }
}

class YourStory extends StatelessWidget {
  const YourStory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Stack(
          children: [
            ClipOval(
              child: Image.network(
                profileList[0].imagePath,
                height: 65,
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Material(
                  borderRadius: BorderRadius.circular(60),
                  child: const Icon(
                    Icons.add_circle,
                    color: Colors.blue,
                  ),
                )),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(2.6),
          child: Text("Your Story"),
        ),
      ],
    ));
  }
}

class StoryProfile extends StatelessWidget {
  final String imagePath;
  final String profileName;

  const StoryProfile(
      {super.key, required this.imagePath, required this.profileName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          InstaGradient(imagePath: imagePath),
          Text(profileName),
        ],
      ),
    );
  }
}

class InstaGradient extends StatelessWidget {
  const InstaGradient({
    Key? key,
    required this.imagePath,
    this.size = 57,
  }) : super(key: key);
  final double size;

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: const LinearGradient(colors: [
          Color.fromARGB(255, 226, 177, 102),
          Color.fromARGB(253, 226, 87, 82),
          Color.fromARGB(255, 138, 118, 211),
          Color.fromARGB(255, 192, 96, 230),
        ]),
      ),
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: ClipOval(
          child: Image.network(
            imagePath,
            height: this.size,
          ),
        ),
      ),
    );
  }
}
