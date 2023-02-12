part of values;

class Data {
  static List<SocialButtonData> socialData = [
    SocialButtonData(
      tag: StringConst.TWITTER_URL,
      iconData: FontAwesomeIcons.twitter,
      url: StringConst.TWITTER_URL,
    ),
    SocialButtonData(
      tag: StringConst.FACEBOOK_URL,
      iconData: FontAwesomeIcons.facebook,
      url: StringConst.FACEBOOK_URL,
    ),
    SocialButtonData(
      tag: StringConst.LINKED_IN_URL,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
    SocialButtonData(
      tag: StringConst.INSTAGRAM_URL,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.INSTAGRAM_URL,
    ),
  ];
  static List<SocialButton2Data> socialData2 = [
    SocialButton2Data(
      title: StringConst.BEHANCE,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUB_URL,
      titleColor: AppColors.blue300,
      buttonColor: AppColors.blue300,
      iconColor: AppColors.white,
    ),
    SocialButton2Data(
      title: StringConst.DRIBBLE,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
      titleColor: AppColors.pink300,
      buttonColor: AppColors.pink300,
      iconColor: AppColors.white,
    ),
    SocialButton2Data(
      title: StringConst.WORKsample,
      iconData: FontAwesomeIcons.appStore,
      url:
          "https://play.google.com/store/apps/details?id=com.TheComputerMind.android",
      titleColor: AppColors.yellow300,
      buttonColor: AppColors.yellow300,
      iconColor: AppColors.white,
    ),
  ];

  static List<SkillLevelData> skillLevelData = [
    SkillLevelData(
      skill: StringConst.SKILLS_0,
      level: 100,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_1,
      level: 90,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_2,
      level: 80,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_3,
      level: 80,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_4,
      level: 80,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_5,
      level: 80,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_6,
      level: 70,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_7,
      level: 70,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_9,
      level: 70,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_10,
      level: 80,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_11,
      level: 70,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_12,
      level: 70,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_13,
      level: 70,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_14,
      level: 70,
    ),
    SkillLevelData(
      skill: StringConst.SKILLS_15,
      level: 70,
    ),
    SkillLevelData(
      skill: "FireBase",
      level: 70,
    ),
  ];

  static List<SkillCardData> skillCardData = [
    SkillCardData(
      title: "Btech In Computer Science",
      description:
          "Btect In CSE under MakAut University from BITe College on 2019-2023 july. CGPA-8.93 upto 7Th Sem, Last Semster(8Th) Going On.",
      iconData: FontAwesomeIcons.book,
    ),
    SkillCardData(
        title: "",
        description: "",
        iconData: Icons.pages_outlined), //not being used
    SkillCardData(
      title: "Higher Secondary In Science",
      description:
          "Completed HS from WBCHSE Board From Margram High School with 69.40% In 2018.",
      iconData: Icons.pages_outlined,
    ),
    SkillCardData(
      title: "Matriculation",
      description:
          "Completed Matriculation from WBBSE Board From Margram High School with 63.74% In 2015.",
      iconData: FontAwesomeIcons.handPaper,
    ),
    SkillCardData(
      title: "Basic Computer Application(BCA)",
      description: "Completed BCA From SITD with First Class In 2013.",
      iconData: FontAwesomeIcons.recordVinyl,
    ),
    SkillCardData(
        title: "",
        description: "",
        iconData: Icons.pages_outlined), //not being used
  ];
  static List<StatItemData> statItemsData = [
    StatItemData(
        value: int.parse(StringConst.HAPPY_CLIENTS_NUM),
        subtitle: StringConst.HAPPY_CLIENTS),
    StatItemData(
        value: int.parse(StringConst.YEARS_OF_EXPERIENCE_NUM),
        subtitle: StringConst.YEARS_OF_EXPERIENCE),
    StatItemData(
        value: int.parse(StringConst.INCREDIBLE_PROJECTS_NUM),
        subtitle: StringConst.INCREDIBLE_PROJECTS),
    StatItemData(
        value: int.parse(StringConst.AWARD_WINNING_NUM),
        subtitle: StringConst.AWARD_WINNING),
  ];

  static List<ProjectCategoryData> projectCategories = [
    ProjectCategoryData(title: StringConst.ALL, number: 6, isSelected: true),
    ProjectCategoryData(title: StringConst.BRANDING, number: 1),
    ProjectCategoryData(title: StringConst.PACKAGING, number: 1),
    ProjectCategoryData(title: StringConst.PHOTOGRAPHER, number: 2),
    ProjectCategoryData(title: StringConst.WEB_DESIGN, number: 3),
  ];

  static List<String> awards1 = [
    StringConst.AWARDS_1,
    StringConst.AWARDS_2,
    StringConst.AWARDS_3,
    StringConst.AWARDS_4,
    StringConst.AWARDS_5,
  ];
  static List<String> awards2 = [
    StringConst.AWARDS_6,
    StringConst.AWARDS_7,
    StringConst.AWARDS_8,
    StringConst.AWARDS_9,
    StringConst.AWARDS_10,
  ];
  static List<BlogCardData> blogData = [
    BlogCardData(
      category: StringConst.BLOG_CATEGORY_1,
      title: StringConst.BLOG_TITLE_1,
      date: "November 4, 2022",
      buttonText: "Goto Playstore",
      imageUrl: ImagePath.BLOG_01,
    ),
    BlogCardData(
      category: StringConst.BLOG_CATEGORY_2,
      title: StringConst.BLOG_TITLE_2,
      date: "Not Completed Yet",
      buttonText: StringConst.READ_MORE,
      imageUrl: ImagePath.BLOG_02,
    ),
    BlogCardData(
      category: StringConst.BLOG_CATEGORY_3,
      title: StringConst.BLOG_TITLE_3,
      date: "Not Completed Yet",
      buttonText: StringConst.READ_MORE,
      imageUrl: ImagePath.BLOG_03,
    ),
  ];

  static List<NimBusCardData> nimbusCardData = [
    NimBusCardData(
      title: StringConst.UI_UX,
      subtitle: StringConst.UI_UX_DESC,
      leadingIcon: Icons.done,
      trailingIcon: Icons.chevron_right,
    ),
    NimBusCardData(
      title: StringConst.PHOTOGRAPHER,
      subtitle: StringConst.PHOTOGRAPHER_DESC,
      leadingIcon: Icons.done,
      trailingIcon: Icons.chevron_right,
      circleBgColor: AppColors.yellow100,
    ),
    NimBusCardData(
      title: StringConst.FREELANCER,
      subtitle: StringConst.FREELANCER_DESC,
      leadingIcon: Icons.done,
      trailingIcon: Icons.chevron_right,
      leadingIconColor: AppColors.black,
      circleBgColor: AppColors.grey50,
    ),
  ];

  static List<ProjectData> allProjects = [
    ProjectData(
      title: StringConst.PORTFOLIO_1_TITLE,
      category: StringConst.PHOTOGRAPHY,
      projectCoverUrl: ImagePath.PORTFOLIO_1,
      width: 0.5,
      mobileHeight: 0.3,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_2_TITLE,
      category: StringConst.WEB_DESIGN,
      projectCoverUrl: ImagePath.PORTFOLIO_2,
      width: 0.225,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_3_TITLE,
      category: StringConst.BRANDING,
      projectCoverUrl: ImagePath.PORTFOLIO_3,
      width: 0.225,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_4_TITLE,
      category: StringConst.WEB_DESIGN,
      projectCoverUrl: ImagePath.PORTFOLIO_4,
      width: 0.2375,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_5_TITLE,
      category: StringConst.PACKAGING,
      projectCoverUrl: ImagePath.PORTFOLIO_5,
      width: 0.2375,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_6_TITLE,
      category: StringConst.PHOTOGRAPHY,
      projectCoverUrl: ImagePath.PORTFOLIO_6,
      width: 0.475,
      mobileHeight: 0.3,
    ),
  ];
  static List<ProjectData> branding = [
    ProjectData(
      title: StringConst.PORTFOLIO_3_TITLE,
      category: StringConst.BRANDING,
      projectCoverUrl: ImagePath.PORTFOLIO_3,
      width: 0.225,
    ),
  ];
  static List<ProjectData> packaging = [
    ProjectData(
      title: StringConst.PORTFOLIO_5_TITLE,
      category: StringConst.PACKAGING,
      projectCoverUrl: ImagePath.PORTFOLIO_5,
      width: 0.2375,
    ),
  ];
  static List<ProjectData> photograhy = [
    ProjectData(
      title: StringConst.PORTFOLIO_1_TITLE,
      category: StringConst.PHOTOGRAPHY,
      projectCoverUrl: ImagePath.PORTFOLIO_1,
      width: 0.5,
      mobileHeight: 0.3,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_6_TITLE,
      category: StringConst.PHOTOGRAPHY,
      projectCoverUrl: ImagePath.PORTFOLIO_6,
      width: 0.475,
      mobileHeight: 0.3,
    ),
  ];
  static List<ProjectData> webDesign = [
    ProjectData(
      title: StringConst.PORTFOLIO_2_TITLE,
      category: StringConst.WEB_DESIGN,
      projectCoverUrl: ImagePath.PORTFOLIO_2,
      width: 0.225,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_4_TITLE,
      category: StringConst.WEB_DESIGN,
      projectCoverUrl: ImagePath.PORTFOLIO_4,
      width: 0.2375,
    ),
    ProjectData(
      title: StringConst.PORTFOLIO_5_TITLE,
      category: StringConst.PACKAGING,
      projectCoverUrl: ImagePath.PORTFOLIO_5,
      width: 0.2375,
    ),
  ];
}
