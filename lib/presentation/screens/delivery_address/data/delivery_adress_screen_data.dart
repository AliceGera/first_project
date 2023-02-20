class DeliveryAddressScreenData {
  String? address;
  String? numberHouse;
  String? corps;
  String? structure;
  String? numberOfFlat;
  bool isValid;

  DeliveryAddressScreenData({
    this.address,
    this.numberHouse,
    this.corps,
    this.structure,
    this.numberOfFlat,
    this.isValid = false,
  });
}
