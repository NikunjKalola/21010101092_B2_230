// class CardModel {
//   String user;
//   String cardNumber;
//   String cardExpired;
//   String cardType;
//   String cardBackground;
//   String cardElementTop;
//   String cardElementBottom;
//
//   CardModel(this.user, this.cardNumber, this.cardExpired, this.cardType,
//       this.cardBackground, this.cardElementTop, this.cardElementBottom);
// }
//
// // List<CardModel> cards = cardData
// //     .map(
// //       (item) => CardModel(
// //         item['user'],
// //         item['cardNumber'],
// //         item['cardExpired'],
// //         item['cardType'],
// //         item['cardBackground'],
// //         item['cardElementTop'],
// //         item['cardElementBottom'],
// //       ),
// //     )
// //     .toList();
// List<CardModel> cards = cardData
//     .map(
//       (e) => CardModel(
//         e['user']!.toString(),
//         e['cardNumber']!.toString(),
//         e['cardExpired']!.toString(),
//         e['cardType']!.toString(),
//         e['cardBackground']!.toString(),
//         e['cardElementTop']!.toString(),
//         e['cardElementBottom']!.toString(),
//       ),
//     )
//     .toList();
//
// var cardData = [
//   {
//     "user": "Jhon Doe",
//     "cardNumber": "4856 2341 2782 0283",
//     "cardExpired": "12/17",
//     "cardType": "12/17",
//     "cardBackground": 0xFF1E1E99,
//     "cardElementTop": "12/17",
//     "cardElementBottom": "12/17",
//   }
// ];
