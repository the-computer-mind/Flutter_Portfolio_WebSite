import 'package:flutter/material.dart';
import 'package:ShofickHossain/Model/Method.dart';
import 'package:ShofickHossain/presentation/layout/adaptive.dart';
import 'package:ShofickHossain/presentation/widgets/CustomText.dart';
import 'package:ShofickHossain/presentation/widgets/MainTiitle.dart';
import 'package:ShofickHossain/presentation/widgets/MobileProject.dart';
import 'package:ShofickHossain/presentation/widgets/OSImages.dart';
import 'package:ShofickHossain/presentation/widgets/buttons/nimbus_button.dart';
import 'package:ShofickHossain/presentation/widgets/content_area.dart';
import 'package:ShofickHossain/presentation/widgets/different_project_part.dart';
import 'package:ShofickHossain/presentation/widgets/nimbus_info_section.dart';
import 'package:ShofickHossain/presentation/widgets/project_item.dart';
import 'package:ShofickHossain/presentation/widgets/spaces.dart';
import 'package:ShofickHossain/values/values.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:visibility_detector/visibility_detector.dart';

const double kSpacing = 20.0;
const double kRunSpacing = 16.0;

class ProjectCategoryData {
  final String title;
  final int number;
  bool isSelected;

  ProjectCategoryData({
    required this.title,
    required this.number,
    this.isSelected = false,
  });
}

class ProjectsSection extends StatefulWidget {
  ProjectsSection({Key? key});

  @override
  _ProjectsSectionState createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _projectController;
  late Animation<double> _projectScaleAnimation;
  List<List<ProjectData>> projects = [
    Data.allProjects,
    Data.branding,
    Data.packaging,
    Data.photograhy,
    Data.webDesign,
  ];
  late List<ProjectData> selectedProject;
  late List<ProjectCategoryData> projectCategories;

  @override
  void initState() {
    super.initState();
    selectedProject = projects[0];
    projectCategories = Data.projectCategories;
    _projectController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _projectScaleAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _projectController,
        curve: Curves.fastOutSlowIn,
      ),
    );
  }

  @override
  void dispose() {
    _projectController.dispose();
    super.dispose();
  }

  Method method = Method();

  Future<void> _playProjectAnimation() async {
    try {
      await _projectController.forward().orCancel;
    } on TickerCanceled {
      // the animation got canceled, probably because it was disposed of
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double screenWidth = widthOfScreen(context) - (getSidePadding(context) * 2);
    double contentAreaWidth = screenWidth;
    return VisibilityDetector(
        key: Key('project-section-sm'),
        onVisibilityChanged: (visibilityInfo) {
          double visiblePercentage = visibilityInfo.visibleFraction * 100;
          if (visiblePercentage > 20) {
            _playProjectAnimation();
          }
        },
        child: LayoutBuilder(builder: (context, constraints) {
          return constraints.maxWidth >= 1000
              ? Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "UI Built Using Flutter, Nodejs",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    FeatureProject(
                      imagePath: "images/pic9.jpg",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/WhatsApp--UI-Clone");
                      },
                      projectDesc:
                          "A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.",
                      projectTitle: "WhatsaApp UI Clone",
                      tech1: "Flutter",
                      tech2: "Dart",
                      tech3: "Flutter UI",
                    ),

                    FeatureProject(
                      imagePath: "images/pic2.jpg",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/Flutter-Blog-App-using-Firebase");
                      },
                      projectDesc:
                          "A blog application using Flutter and firebase, In this project implement Firebase CURD operation, User can add post as well see all the post.",
                      projectTitle: "Blog Application",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "Firebase",
                    ),

                    FeatureProject(
                      imagePath: "images/pic3.png",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/Wallpaper-Hub-using-Flutter");
                      },
                      projectDesc:
                          "A Wallpaper application Using Pixel API, to show more than 5k+ images. User can Search any images, as well as Download and directly set Image as Wallpaper.",
                      projectTitle: "Wallpaper Hub",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "API",
                    ),

                    FeatureProject(
                      imagePath: "images/pic4.jpg",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/coronavirus-tracker-app");
                      },
                      projectDesc:
                          "A Flutter app to track Coronavirus outbreak, Current statistics of global total confirmed, deaths, recovered cases, Health news, coronavirus safety information and many more.",
                      projectTitle: "Covid19 Tracker",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "API",
                    ),
                    //ff
                    FeatureProject(
                      imagePath: "images/pic5.jpg",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/Gender-Predictor-Flutter-App");
                      },
                      projectDesc:
                          "In this app you can predict the gender with the help of name and probability of that name.",
                      projectTitle: "Gender Predictor",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "API",
                    ),

                    FeatureProject(
                      imagePath: "images/pic6.jpg",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/News-Hours-Apps-Using-Rest-API");
                      },
                      projectDesc:
                          "complete news Application using rest API API link- https://newsapi.org, you can get all news.",
                      projectTitle: "News Hour",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "API",
                    ),

                    FeatureProject(
                      imagePath: "images/pic7.jpg",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/Flutter-wallpaper-App-using-Firebase");
                      },
                      projectDesc:
                          "Flutter Wallpaper application using firebase as a backend with a cool animation, it show the all images that are store in firebase firestore.",
                      projectTitle: "Wallpaper App",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "Firebase",
                    ),

                    FeatureProject(
                      imagePath: "images/pic8.jpg",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/Flutter-Weather-Application");
                      },
                      projectDesc:
                          "Weather app. This weather app is one of best free weather apps with full features: Local weather, weather map (weather map service) and weather widgets. Widgets for Android: The weather radar widget free and clock widget weather with beautiful style.",
                      projectTitle: "Weather Application",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "API",
                    ),

                    FeatureProject(
                      imagePath: "images/pic10.jpg",
                      ontab: () {
                        //method.launchURL(
                        // "https://pub.dev/packages/flutter_onboarding_screen");
                      },
                      projectDesc:
                          "A flutter package which help developer in creating a onboarding screens of their app.",
                      projectTitle: "Flutter Onboarding Screen Package",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "Dart Package",
                    ),

                    FeatureProject(
                      imagePath: "images/pic11.jpg",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/Flutter-Neumorphic-Calculator-UI");
                      },
                      projectDesc: "To explore the flutter Neumorphic design",
                      projectTitle: "Neumorphic Design",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "Flutter UI",
                    ),

                    MainTiitle(
                      number: "0.4",
                      text: "Open Source Project",
                    ),

                    SizedBox(
                      height: size.height * 0.04,
                    ),

                    //other Projects
                    Container(
                      height: size.height * 0.86,
                      width: size.width - 100,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OSImages(
                                image: "images/pic101.png",
                              ),
                              OSImages(
                                image: "images/pic103.png",
                              ),
                              OSImages(
                                image: "images/pic111.gif",
                              ),
                              OSImages(
                                image: "images/pic113.jfif",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomText(
                                text: "Payment Getway",
                                textsize: 16.0,
                                color: Colors.white.withOpacity(0.4),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.75,
                              ),
                              CustomText(
                                text: "Chat App",
                                textsize: 16.0,
                                color: Colors.white.withOpacity(0.4),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.75,
                              ),
                              CustomText(
                                text: "Spotify Clone",
                                textsize: 16.0,
                                color: Colors.white.withOpacity(0.4),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.75,
                              ),
                              CustomText(
                                text: "TODO App",
                                textsize: 16.0,
                                color: Colors.white.withOpacity(0.4),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.75,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //other Projects
                    Container(
                      height: size.height * 0.86,
                      width: size.width - 100,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OSImages(
                                image: "images/pic114.png",
                              ),
                              OSImages(
                                image: "images/pic115.png",
                              ),
                              OSImages(
                                image: "images/pic116.jfif",
                              ),
                              OSImages(
                                image: "images/pic117.png",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomText(
                                text: "Spannish Audio",
                                textsize: 16.0,
                                color: Colors.white.withOpacity(0.4),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.75,
                              ),
                              CustomText(
                                text: "Drumpad",
                                textsize: 16.0,
                                color: Colors.white.withOpacity(0.4),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.75,
                              ),
                              CustomText(
                                text: "Currency Converter",
                                textsize: 16.0,
                                color: Colors.white.withOpacity(0.4),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.75,
                              ),
                              CustomText(
                                text: "Calculator",
                                textsize: 16.0,
                                color: Colors.white.withOpacity(0.4),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.75,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //other Projects
                    Container(
                      height: size.height * 0.86,
                      width: size.width - 100,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OSImages(
                                image: "images/pic118.jpeg",
                              ),
                              OSImages(
                                image: "images/pic119.jpeg",
                              ),
                              OSImages(
                                image: "images/pic120.png",
                              ),
                              OSImages(
                                image: "images/pic121.png",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomText(
                                text: "Prime Videos UI",
                                textsize: 16.0,
                                color: Colors.white.withOpacity(0.4),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.75,
                              ),
                              CustomText(
                                text: "Tic Tac Toe Game",
                                textsize: 16.0,
                                color: Colors.white.withOpacity(0.4),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.75,
                              ),
                              CustomText(
                                text: "Currency Converter UI",
                                textsize: 16.0,
                                color: Colors.white.withOpacity(0.4),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.75,
                              ),
                              CustomText(
                                text: "Love Calculator",
                                textsize: 16.0,
                                color: Colors.white.withOpacity(0.4),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.75,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    FeatureProject(
                      imagePath: "images/pic102.gif",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/Flutter-Web-SolMusic-Landing-Page");
                      },
                      projectDesc:
                          "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                      projectTitle: "SolMusic",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "Web",
                    ),

                    FeatureProject(
                      imagePath: "images/pic104.png",
                      ontab: () {
                        //method.launchURL("https://github.com/champ96k/Flutter-UI-Kit");
                      }, //
                      projectDesc:
                          "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                      projectTitle: "Sign Up and Sign In",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "Flutter UI",
                    ),

                    FeatureProject(
                      imagePath: "images/pic105.png",
                      ontab: () {
                        //method.launchURL("https://github.com/champ96k/Flutter-UI-Kit");
                      }, //
                      projectDesc:
                          "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                      projectTitle: "Sign up and Sign in",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "Flutter UI",
                    ),

                    FeatureProject(
                      imagePath: "images/pic106.png",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/Flowers-Shop-Mobile-App-Store");
                      },
                      projectDesc:
                          "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                      projectTitle: "Online Flowers Shop",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "Flutter UI",
                    ),

                    FeatureProject(
                      imagePath: "images/pic107.jfif",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/Food-Delivery-App-UI");
                      },
                      projectDesc:
                          "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                      projectTitle: "Food delivery App",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "Flutter UI",
                    ),

                    FeatureProject(
                      imagePath: "images/pic108.jfif",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/Flutter-Plant-Shop-UI-Design");
                      },
                      projectDesc:
                          "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                      projectTitle: "Plant Nursery App",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "Flutter UI",
                    ),

                    FeatureProject(
                      imagePath: "images/pic109.jfif",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/Foody-App-UI-Design");
                      },
                      projectDesc:
                          "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                      projectTitle: "Foody",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "Flutter UI",
                    ),

                    FeatureProject(
                      imagePath: "images/pic110.jfif",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/Flutter-Online-Food-Order-App-UI");
                      },
                      projectDesc:
                          "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                      projectTitle: "Online Food order",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "Flutter UI",
                    ),

                    FeatureProject(
                      imagePath: "images/pic501.png",
                      ontab: () {
                        //method.launchURL("https://github.com/champ96k/Ganpati-Bappa-");
                      }, //
                      projectDesc:
                          "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                      projectTitle: "Ganpati Bappa",
                      tech1: "Dart",
                      tech2: "Flutter",
                      tech3: "Flutter Animation",
                    ),

                    FeatureProject(
                      imagePath: "images/pic506.png",
                      ontab: () {
                        //method.launchURL(
                        // "https://github.com/champ96k/Netflix-Web-Clone-Using-Flutter");
                      },
                      projectDesc:
                          "A nicer look at your GitHub profile and repo stats. Includes data visualizations of your top languages, starred repositories, and sort through your top repos by number of stars, forks, and size.",
                      projectTitle: "Flutter Netflix Web",
                      tech1: "Dart",
                      tech2: "Flutter Wen",
                      tech3: "Flutter UI",
                    ),
                  ],
                )
              : Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "UI Built Using Flutter, Nodejs",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        Container(
                          width: size.width * 0.04,
                          height: 1.10,
                          color: Color(0xff303C55),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic9.jpg",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic2.jpg",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic3.png",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic4.jpg",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic5.jpg",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic6.jpg",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic7.jpg",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic8.jpg",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic10.jpg",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic11.jpg",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic102.gif",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic104.png",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic105.png",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic106.png",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic107.jfif",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic108.jfif",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic109.jfif",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    MobileProject(
                      ontab: () {},
                      image: "images/pic110.jfif",
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.42,
                          height: size.height * 0.6,
                          child: Image(
                            image: AssetImage("images/pic101.png"),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: size.width * 0.42,
                          height: size.height * 0.6,
                          child: Image(
                            image: AssetImage("images/pic103.png"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: size.height * 0.6,
                          child: Image(
                            image: AssetImage("images/pic111.gif"),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: size.width * 0.44,
                          height: size.height * 0.6,
                          child: Image(
                            image: AssetImage("images/pic113.jfif"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: size.height * 0.6,
                          child: Image(
                            image: AssetImage("images/pic114.png"),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: size.width * 0.44,
                          height: size.height * 0.6,
                          child: Image(
                            image: AssetImage("images/pic115.png"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: size.height * 0.6,
                          child: Image(
                            image: AssetImage("images/pic116.jfif"),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: size.width * 0.44,
                          height: size.height * 0.6,
                          child: Image(
                            image: AssetImage("images/pic117.png"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: size.height * 0.6,
                          child: Image(
                            image: AssetImage("images/pic118.jpeg"),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: size.width * 0.44,
                          height: size.height * 0.6,
                          child: Image(
                            image: AssetImage("images/pic119.jpeg"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: size.height * 0.6,
                          child: Image(
                            image: AssetImage("images/pic120.png"),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: size.width * 0.44,
                          height: size.height * 0.6,
                          child: Image(
                            image: AssetImage("images/pic121.png"),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
        }));
  }

  Widget _buildNimbusInfoSectionSm() {
    return NimbusInfoSection2(
      sectionTitle: StringConst.MY_WORKS,
      title1: StringConst.MEET_MY_PROJECTS,
      hasTitle2: false,
      body: StringConst.PROJECTS_DESC,
//      child: ,
    );
  }

  Widget _buildNimbusInfoSectionLg() {
    return NimbusInfoSection1(
      sectionTitle: StringConst.MY_WORKS,
      title1: StringConst.MEET_MY_PROJECTS,
      hasTitle2: false,
      body: StringConst.PROJECTS_DESC,
      child: Wrap(
        spacing: kSpacing,
        runSpacing: kRunSpacing,
        children: _buildProjectCategories(projectCategories),
      ),
    );
  }

  List<Widget> _buildProjectCategories(List<ProjectCategoryData> categories) {
    List<Widget> items = [];

    for (int index = 0; index < categories.length; index++) {
      items.add(
        ProjectCategory(
          title: categories[index].title,
          number: categories[index].number,
          isSelected: categories[index].isSelected,
          onTap: () => onProjectCategoryTap(index),
        ),
      );
    }
    return items;
  }

  List<Widget> _buildProjects(List<ProjectData> data, {bool isMobile = false}) {
    List<Widget> items = [];
    for (int index = 0; index < data.length; index++) {
      items.add(
        ScaleTransition(
          scale: _projectScaleAnimation,
          child: ProjectItem(
            width: isMobile
                ? assignWidth(context, data[index].mobileWidth)
                : assignWidth(context, data[index].width),
            height: isMobile
                ? assignHeight(context, data[index].mobileHeight)
                : assignHeight(context, data[index].height),
            bannerHeight: isMobile
                ? assignHeight(context, data[index].mobileHeight) / 2
                : assignHeight(context, data[index].height) / 3,
            title: data[index].title,
            subtitle: data[index].category,
            imageUrl: data[index].projectCoverUrl,
          ),
        ),
      );
    }

    return items;
  }

  void onProjectCategoryTap(index) {
    _projectController.reset();
    changeCategorySelected(index);
    setState(() {
      selectedProject = projects[index];
      _playProjectAnimation();
    });
  }

  changeCategorySelected(int selectedIndex) {
    for (int index = 0; index < projectCategories.length; index++) {
      if (index == selectedIndex) {
        setState(() {
          projectCategories[selectedIndex].isSelected = true;
        });
      } else {
        projectCategories[index].isSelected = false;
      }
    }
  }
}

class ProjectCategory extends StatefulWidget {
  ProjectCategory({
    required this.title,
    required this.number,
    this.titleColor = AppColors.black,
    this.numberColor = Colors.transparent,
    this.hoverColor = AppColors.primaryColor,
    this.titleStyle,
    this.numberStyle,
    this.onTap,
    this.isSelected = false,
  });

  final String title;
  final Color titleColor;
  final Color numberColor;
  final TextStyle? titleStyle;
  final int number;
  final Color hoverColor;
  final TextStyle? numberStyle;
  final GestureTapCallback? onTap;
  final bool isSelected;

  @override
  _ProjectCategoryState createState() => _ProjectCategoryState();
}

class _ProjectCategoryState extends State<ProjectCategory>
    with SingleTickerProviderStateMixin {
  bool _isHovering = false;
  late AnimationController _controller;
  late Color color;

  @override
  void initState() {
    super.initState();
    color = widget.titleColor;
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 450),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: InkWell(
        onTap: widget.onTap,
        hoverColor: Colors.transparent,
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: widget.title,
                style: widget.titleStyle?.copyWith(
                      color: colorOfCategory(),
                    ) ??
                    textTheme.subtitle1?.copyWith(
                      fontSize: Sizes.TEXT_SIZE_16,
                      color: colorOfCategory(),
                    ),
              ),
              WidgetSpan(
                child: widget.isSelected
                    ? numberOfProjectItems()
                    : FadeTransition(
                        opacity: _controller.view,
                        child: numberOfProjectItems(),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget numberOfProjectItems() {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Transform.translate(
      offset: const Offset(2, -8),
      child: Text(
        "(${widget.number})",
        textScaleFactor: 0.7,
        style: widget.numberStyle?.copyWith(
              color: widget.hoverColor,
            ) ??
            textTheme.subtitle1?.copyWith(
              fontSize: Sizes.TEXT_SIZE_16,
              color: widget.hoverColor,
            ),
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _isHovering = hovering;
    });
    if (hovering) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  Color colorOfSuperScript() {
    if (_isHovering) {
      return widget.hoverColor;
    } else if (widget.isSelected) {
      return widget.hoverColor;
    } else {
      return widget.numberColor;
    }
  }

  Color colorOfCategory() {
    if (_isHovering) {
      return widget.hoverColor;
    } else if (widget.isSelected) {
      return widget.hoverColor;
    } else {
      return widget.titleColor;
    }
  }
}
