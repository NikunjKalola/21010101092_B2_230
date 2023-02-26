class CardModel{
  String user ;
  String cardNumber ;
  String cardExpired = '';
  String cardType = '';
  String cardChip = '';

  CardModel(this.user,this.cardNumber,this.cardExpired,this.cardType,this.cardChip);

}
var cardData = [
  {
    "user": "nikunj kalola",
    "cardNumber": "1234 5678 9012 6789",
    "cardExpired": "12/27",
    "cardType": "assets/images/Visa_Inc._logo.svg.webp",
    "cardChip": "assets/images/microchip.webp",
  },
  {
    "user": "nikunj kalola",
    "cardNumber": "1234 5678 9012 6789",
    "cardExpired": "12/27",
    "cardType": "assets/images/Visa_Inc._logo.svg.webp",
    "cardChip": "assets/images/microchip.webp",
  },{
    "user": "nikunj kalola",
    "cardNumber": "1234 5678 9012 6789",
    "cardExpired": "12/27",
    "cardType": "assets/images/Visa_Inc._logo.svg.webp",
    "cardChip": "assets/images/microchip.webp",
  },
];

List<CardModel> cards = cardData.map((e) => CardModel(
  e['user']!,
  e['cardNumber']!,
  e['cardExpired']!,
  e['cardType']!,
  e['cardChip']!
),).toList();
