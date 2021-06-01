class CharityInformationModel {
  CharityInformationModel(
    this.images,
    this.title,
    this.goal,
    this.name,
    this.contact,
    this.purpose,
    this.adress,
  );
  List<String> images;
  final String title;
  final String goal;
  final String name;
  final String contact;
  final String purpose;
  List<Address> adress;
}

class Address {
  final String village;
  final String commune;
  final String district;
  final String province;

  Address(this.village, this.commune, this.district, this.province);
}
