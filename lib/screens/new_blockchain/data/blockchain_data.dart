class BlockchainData{
  final List<String> images;
  final List<String> mainText;
  final List<String> text;

  BlockchainData(this.images, this.mainText, this.text);

  factory BlockchainData.init() => BlockchainData(
      [
        'assets/images/img_paper_plan.png',
        'assets/images/img_plan.png',
        'assets/images/img_racket.png',
      ],
      [
        'Are you new to Blockchain?',
        'DeFi, Staking & Web 3.0?',
        'Do you use Apps on the daily?',
      ],
      [
        'Well then, welcome to the wonderful world of\n Blockchain! Press "Next" to get started.',
        'If any of these sound familiar to you, then you are\n probably skilled in the ways of crypto with\n limited knowledge of this industry.',
        'DThen you are probably already quite the\n blockchain expert that is only interested in very\n specific knowledge.',
      ]
  );
}