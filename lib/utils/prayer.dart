class Prayer {
  List listData;
  List<Map> blocks = [];

  Prayer(this.listData) {
    blocks = List<Map>.from(listData);
  }

  @override
  String toString() {
    return listData.toString();
  }
}
