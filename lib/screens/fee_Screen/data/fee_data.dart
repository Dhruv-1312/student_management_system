class FeeData {
  final String AssignmentNo;
  final String Month;
  final String Date;
  final String status;
  final String LateDate;
  final String btn;

  FeeData(this.AssignmentNo, this.Month, this.Date, this.status, this.LateDate,
      this.btn);
}

List<FeeData> fee = [
  FeeData(
      '1st', 'september', '10-sept-2023', 'Pending', '20-sept-2023', 'upload'),
  FeeData('2nd', 'August', '15-aug-2023', 'Submit', '20-aug-2023', 'Download'),
  FeeData('3rd', 'August', '12-aug-2023', 'submit', '20-augt-2023', 'Download'),
  FeeData('4th', 'August', '10-aug-2023', 'submit', '20-aug-2023', 'Download'),
];
