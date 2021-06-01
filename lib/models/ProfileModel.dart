class ProfileModel {
  ProfileModel({
    required this.basicInformation,
    required this.donatedBalance,
    required this.charityBalance,
    required this.myDonations,
    required this.donationsToMyCharity,
  });

  final List<String> basicInformation;
  final List<String> donatedBalance;
  final List<String> charityBalance;
  final List<MyDonations> myDonations;
  final List<DonationsToMyCharity> donationsToMyCharity;
}

class DonationsToMyCharity {
  final String donarName;
  final String donationAmount;
  final String donationPoint;
  DonationsToMyCharity(this.donarName, this.donationAmount, this.donationPoint);
}

class MyDonations {
  final String donationName;
  final String donationAmount;
  final String donationPoint;

  MyDonations(this.donationName, this.donationAmount, this.donationPoint);
}
