class MotivationsData {
  final List<String> images;
  final List<String> mainText;
  final List<bool> boolFalse;

  MotivationsData(this.images, this.mainText, this.boolFalse);

  factory MotivationsData.init() => MotivationsData(
        [
          'assets/images/motive1.png',
          'assets/images/motive2.png',
          'assets/images/motive3.png',
          'assets/images/motive4.png',
        ],
        [
          'Financial Opportunity',
          'Job Opportunity',
          'Technology intrest',
          'Others',
        ],
        [
          false,
          false,
          false,
          false,
        ],
      );
}
