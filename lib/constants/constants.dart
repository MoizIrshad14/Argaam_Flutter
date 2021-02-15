enum ExternalMenu { streamer, financialRatios }

extension ExternalMenuExtension on ExternalMenu {
  String get name {
    switch (this) {
      case ExternalMenu.streamer:
        return 'https://argaamv2mobileapis.argaam.com/v2.2/json/redirect-with-cookie?articleID=0&appId=0&key=&section=Streamer&langId=1';
      case ExternalMenu.financialRatios:
        return 'https://argaamv2mobileapis.argaam.com/v2.2/json/redirect-with-cookie?articleID=0&appId=0&key=&section=FinancialRatios&langId=1';
      default:
        return '';
    }
  }
}
