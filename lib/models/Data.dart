class Data {
  final String bankName;
  final String name;
  final String mobileNo;
  final String location;
  final String id;

  Data({
    this.bankName,
    this.name,
    this.mobileNo,
    this.location,
    this.id,
  });
}

List<Data> dataList = [
  Data(
      bankName: 'HDFC (INTEGERATED)',
      name: 'Kamal',
      mobileNo: '9090908993',
      location: 'polka',
      id: 'DECAL_200511_4'),
  Data(
      bankName: 'HDFC ',
      name: 'Sunita',
      mobileNo: '9237127211',
      location: 'Delhi',
      id: 'CTN_200511_1'),
  Data(
    bankName: 'HDFC (INTEGERATED) ',
    name: 'Dhanesh',
    mobileNo: '9876543210',
    location: 'Mumbai',
      id: 'DECAL_200512_4'

  ),
];
