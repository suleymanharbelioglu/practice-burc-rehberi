class BurcModel {
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetay;
  final String _burcKucukResim;
  final String _burcBuyukResim;
  burcAdi() {
    return _burcAdi;
  }

  burcTarihi() {
    return _burcTarihi;
  }

  burcDetay() => _burcDetay;
  burcKucukResim() => _burcKucukResim;
  burcBuyukResim() => _burcBuyukResim;

  BurcModel({
    required String burcAdi,
    required String burcTarihi,
    required String burcDetay,
    required String burcKucukResim,
    required String burcBuyukResim,
  }) : _burcAdi = burcAdi,
       _burcTarihi = burcTarihi,
       _burcDetay = burcDetay,
       _burcKucukResim = burcKucukResim,
       _burcBuyukResim = burcBuyukResim;

  @override
  String toString() {
    // TODO: implement toString
    return "burcAdi : $_burcAdi- burcBuyukResim : $_burcBuyukResim";
  }
}
