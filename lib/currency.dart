class Currency {
  String code;
  String name;
  String flag;
  double rate;

  Currency({this.code, this.name, this.flag, this.rate});
  factory Currency.fromJson(dynamic json) {
    String str = json['code'];
    str = str.substring(0,2);
    if(str == 'IL')
      str = 'PS';
    String n = json['name'];
    if(n == 'Israeli New Sheqel')
      n = 'Palestinian New Shekel';
    return Currency(
      code: json['code'] as String,
      name: n,
      rate: json['rate'] as double,
      flag: 'https://www.countryflags.io/$str/shiny/64.png',
    );
  }

}