class MapPoint {
  final int id;
  final double coordX;
  final double coordY;

  MapPoint(this.id, this.coordX, this.coordY);

  factory MapPoint.fromJson(Map json) {
    return MapPoint(json['id'], json['coordX'], json['coordY']);
  }

  @override
  String toString() {
    return 'id: $id, coordX: $coordX, coordY: $coordY';
  }
}
