class homeblog {
  String firstString = "أرجعام حصري";
  String date = "11/12/2020";
  String image = "assets/images/blog.png";
  String tag = "Blogs3";
  String title = "حقق مصرف الراجحي ربحاً صافياً قدره 10.2 ";
  String subTitle = "مليار ريال للسنة المالية 2019";
  String timesAgo = "قبل 45 دقيقة";
  String commentsCount = "45";

  homeblog(
      {this.firstString,
      this.date,
      this.image,
      this.tag,
      this.title,
      this.subTitle,
      this.timesAgo,
      this.commentsCount});
}

List<homeblog> homeBlogs = [
  homeblog(
      firstString: "أرجعام حصري",
      date: "11/12/2020",
      image: "assets/images/blog.png",
      tag: "Blogs3",
      title: "حقق مصرف الراجحي ربحاً صافياً قدره 10.2 ",
      subTitle: "مليار ريال للسنة المالية 2019",
      timesAgo: "قبل 45 دقيقة",
      commentsCount: "45"),
  homeblog(
      firstString: "Big news",
      date: "16/02/2020",
      image: "assets/images/blog.png",
      tag: "Blogs2",
      title: "Today Beginning of retail subscription",
      subTitle: "In statements to TV",
      timesAgo: "45 mints ago ",
      commentsCount: "50"),
  homeblog(
      firstString: "أرجعام حصري",
      date: "11/12/2020",
      image: "assets/images/blog.png",
      tag: "Blogs1",
      title: "حقق مصرف الراجحي ربحاً صافياً قدره 10.2 ",
      subTitle: "مليار ريال للسنة المالية 2019",
      timesAgo: "قبل 45 دقيقة",
      commentsCount: "45")
];
