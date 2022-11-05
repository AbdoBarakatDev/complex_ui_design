import 'package:flutter/material.dart';
import 'package:test_task/app_colors.dart';
import 'package:test_task/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            buildHomeHeader(context),
            buildFunctionalButtons(),
            buildGridPictures(context),
          ],
        ),
      ),
    );
  }

  buildGridPictures(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                "assets/images/test.webp",
                fit: BoxFit.fill,
              ),
            );
          },
        ),
      ),
    );
  }

  buildHomeHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      color: mainColor,
      height: MediaQuery.of(context).size.height * 0.18,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  AppStrings.welcomeWord,
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Mina",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: personPictureBackgroundColor,
                  ),
                  Container(
                    height: double.infinity,
                    width: 50,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        color: mainColor,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(45))),
                  ),
                ],
              ),
              SizedBox(
                height: double.infinity,
                width: 100,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: personPictureBackgroundColor,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(45))),
                          height: 103,
                          width: 100,
                        ),
                        Expanded(
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Container(
                                height: 45,
                                width: 30,
                                color: personPictureBackgroundColor,
                              ),
                              Container(
                                width: double.infinity,
                                height: 45,
                                decoration: BoxDecoration(
                                    // color: Colors.red,
                                    color: mainColor,
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(50))),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage("assets/images/user_image.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  buildFunctionalButtons() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          splashColor: buttonLogoutColor,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: homeButtonsColor,
          onPressed: () {},
          child: Row(
            children: [
              Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  width: 55,
                  height: 55,
                  child: Image.asset(
                    "assets/icons/arrow_back.png",
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                width: 10,
              ),
              const Text("Logout"),
            ],
          ),
        ),
        MaterialButton(
          splashColor: buttonUploadColor,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: homeButtonsColor,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  width: 55,
                  height: 55,
                  child: Image.asset(
                    "assets/icons/arrow_up.png",
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                width: 10,
              ),
              const Text("Upload"),
            ],
          ),
        ),
      ],
    );
  }
}
