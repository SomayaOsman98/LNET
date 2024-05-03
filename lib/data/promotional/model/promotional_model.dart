class Singlepromotional{
String? id;
String? address;
String? details;


Singlepromotional(
    {this.id,
      this.address,
      this.details,
    });

Singlepromotional.fromJson(Map<String, dynamic> json) {
  id = json['id'];
  address = json['address'];
  details = json['details'];
}
Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['address'] = address;
  data['details'] = details;
  return data;
}


}

