class Report {
   int id=100;
  double longitude;
  double latitude;
  String type;
  String urlToImage;
  String time;



  Report(
      {
      this.longitude = 0,
      this.latitude = 0,
      this.type = '',
      this.urlToImage = '',
      this.time = ''});



  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id']=this.id;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['type'] = this.type;
    data['urlToImage'] = this.urlToImage;
    data['time'] = this.time;
    return data;
  }
}
