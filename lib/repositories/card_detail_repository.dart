import 'package:trilhaapp/model/card_detail.dart';

class CardDetailRepository {
  Future<CardDetail> get() async {
    await Future.delayed(Duration(seconds: 3));
    return CardDetail(
      1,
      "Meu Card",
      "http://hermes.digitalinnovation.one/assets/diome/logo.png",
      "A nível organizacional, a constante divulgação das informações agrega valor ao estabelecimento do impacto na agilidade decisória.",
    );
  }
}
