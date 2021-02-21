class HomeArticlesResponse {
  int statusCode;
  String statusMessage;
  List<Data> data;

  HomeArticlesResponse({this.statusCode, this.statusMessage, this.data});

  HomeArticlesResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['StatusCode'];
    statusMessage = json['StatusMessage'];
    if (json['Data'] != null) {
      data = new List<Data>();
      json['Data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StatusCode'] = this.statusCode;
    data['StatusMessage'] = this.statusMessage;
    if (this.data != null) {
      data['Data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int iconID;
  int articleID;
  bool isCommentable;
  Null argaamID;
  String articleBody;
  String title;
  String articleText;
  String body;
  String summary;
  String source;
  String articleSource;
  String postedDate;
  String summaryIsNull;
  int index;
  String pubOn;
  int associatedImageID;
  String hasAssociatedImage;
  int titleLength;
  int priority;
  String articleLink;
  int moreArticlesCount;
  int commentsCount;
  bool hasAttachments;
  List<String> attachments;
  bool isExternal;
  int appID;
  String shortUrl;
  bool isFromArgaamPlus;
  bool isLocked;
  String restrictedPackages;
  int articleTypeID;
  int argaamPlusArticleID;
  int totalCount;
  bool showMore;
  Null contenttypeid;
  String contentUrl;
  String articleImageUrl;
  int viewCount;
  bool toBeHighLighted;
  String displayTime;
  bool isFavorite;
  Null contentID;
  int points;
  bool buyLater;
  bool isInsufficient;
  String insufficientMessage;
  int price;
  bool isPurchased;
  bool subscriptionLock;
  bool isShowThumbnailImage;
  bool isCompanyArticle;
  String webViewBody;
  bool tTSEnabled;
  Null tTSLink;

  Data(
      {this.iconID,
      this.articleID,
      this.isCommentable,
      this.argaamID,
      this.articleBody,
      this.title,
      this.articleText,
      this.body,
      this.summary,
      this.source,
      this.articleSource,
      this.postedDate,
      this.summaryIsNull,
      this.index,
      this.pubOn,
      this.associatedImageID,
      this.hasAssociatedImage,
      this.titleLength,
      this.priority,
      this.articleLink,
      this.moreArticlesCount,
      this.commentsCount,
      this.hasAttachments,
      this.attachments,
      this.isExternal,
      this.appID,
      this.shortUrl,
      this.isFromArgaamPlus,
      this.isLocked,
      this.restrictedPackages,
      this.articleTypeID,
      this.argaamPlusArticleID,
      this.totalCount,
      this.showMore,
      this.contenttypeid,
      this.contentUrl,
      this.articleImageUrl,
      this.viewCount,
      this.toBeHighLighted,
      this.displayTime,
      this.isFavorite,
      this.contentID,
      this.points,
      this.buyLater,
      this.isInsufficient,
      this.insufficientMessage,
      this.price,
      this.isPurchased,
      this.subscriptionLock,
      this.isShowThumbnailImage,
      this.isCompanyArticle,
      this.webViewBody,
      this.tTSEnabled,
      this.tTSLink});

  Data.fromJson(Map<String, dynamic> json) {
    iconID = json['IconID'];
    articleID = json['ArticleID'];
    isCommentable = json['IsCommentable'];
    argaamID = json['ArgaamID'];
    articleBody = json['ArticleBody'];
    title = json['Title'];
    articleText = json['ArticleText'];
    body = json['Body'];
    summary = json['Summary'];
    source = json['Source'];
    articleSource = json['ArticleSource'];
    postedDate = json['PostedDate'];
    summaryIsNull = json['SummaryIsNull'];
    index = json['Index'];
    pubOn = json['PubOn'];
    associatedImageID = json['AssociatedImageID'];
    hasAssociatedImage = json['HasAssociatedImage'];
    titleLength = json['TitleLength'];
    priority = json['Priority'];
    articleLink = json['ArticleLink'];
    moreArticlesCount = json['MoreArticlesCount'];
    commentsCount = json['CommentsCount'];
    hasAttachments = json['HasAttachments'];
    attachments = json['Attachments'].cast<String>();
    isExternal = json['IsExternal'];
    appID = json['AppID'];
    shortUrl = json['ShortUrl'];
    isFromArgaamPlus = json['IsFromArgaamPlus'];
    isLocked = json['IsLocked'];
    restrictedPackages = json['RestrictedPackages'];
    articleTypeID = json['ArticleTypeID'];
    argaamPlusArticleID = json['ArgaamPlusArticleID'];
    totalCount = json['TotalCount'];
    showMore = json['ShowMore'];
    contenttypeid = json['contenttypeid'];
    contentUrl = json['ContentUrl'];
    articleImageUrl = json['ArticleImageUrl'];
    viewCount = json['ViewCount'];
    toBeHighLighted = json['ToBeHighLighted'];
    displayTime = json['DisplayTime'];
    isFavorite = json['IsFavorite'];
    contentID = json['ContentID'];
    points = json['Points'];
    buyLater = json['BuyLater'];
    isInsufficient = json['IsInsufficient'];
    insufficientMessage = json['InsufficientMessage'];
    price = json['Price'];
    isPurchased = json['IsPurchased'];
    subscriptionLock = json['SubscriptionLock'];
    isShowThumbnailImage = json['IsShowThumbnailImage'];
    isCompanyArticle = json['IsCompanyArticle'];
    webViewBody = json['WebViewBody'];
    tTSEnabled = json['TTSEnabled'];
    tTSLink = json['TTSLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IconID'] = this.iconID;
    data['ArticleID'] = this.articleID;
    data['IsCommentable'] = this.isCommentable;
    data['ArgaamID'] = this.argaamID;
    data['ArticleBody'] = this.articleBody;
    data['Title'] = this.title;
    data['ArticleText'] = this.articleText;
    data['Body'] = this.body;
    data['Summary'] = this.summary;
    data['Source'] = this.source;
    data['ArticleSource'] = this.articleSource;
    data['PostedDate'] = this.postedDate;
    data['SummaryIsNull'] = this.summaryIsNull;
    data['Index'] = this.index;
    data['PubOn'] = this.pubOn;
    data['AssociatedImageID'] = this.associatedImageID;
    data['HasAssociatedImage'] = this.hasAssociatedImage;
    data['TitleLength'] = this.titleLength;
    data['Priority'] = this.priority;
    data['ArticleLink'] = this.articleLink;
    data['MoreArticlesCount'] = this.moreArticlesCount;
    data['CommentsCount'] = this.commentsCount;
    data['HasAttachments'] = this.hasAttachments;
    data['Attachments'] = this.attachments;
    data['IsExternal'] = this.isExternal;
    data['AppID'] = this.appID;
    data['ShortUrl'] = this.shortUrl;
    data['IsFromArgaamPlus'] = this.isFromArgaamPlus;
    data['IsLocked'] = this.isLocked;
    data['RestrictedPackages'] = this.restrictedPackages;
    data['ArticleTypeID'] = this.articleTypeID;
    data['ArgaamPlusArticleID'] = this.argaamPlusArticleID;
    data['TotalCount'] = this.totalCount;
    data['ShowMore'] = this.showMore;
    data['contenttypeid'] = this.contenttypeid;
    data['ContentUrl'] = this.contentUrl;
    data['ArticleImageUrl'] = this.articleImageUrl;
    data['ViewCount'] = this.viewCount;
    data['ToBeHighLighted'] = this.toBeHighLighted;
    data['DisplayTime'] = this.displayTime;
    data['IsFavorite'] = this.isFavorite;
    data['ContentID'] = this.contentID;
    data['Points'] = this.points;
    data['BuyLater'] = this.buyLater;
    data['IsInsufficient'] = this.isInsufficient;
    data['InsufficientMessage'] = this.insufficientMessage;
    data['Price'] = this.price;
    data['IsPurchased'] = this.isPurchased;
    data['SubscriptionLock'] = this.subscriptionLock;
    data['IsShowThumbnailImage'] = this.isShowThumbnailImage;
    data['IsCompanyArticle'] = this.isCompanyArticle;
    data['WebViewBody'] = this.webViewBody;
    data['TTSEnabled'] = this.tTSEnabled;
    data['TTSLink'] = this.tTSLink;
    return data;
  }
}
