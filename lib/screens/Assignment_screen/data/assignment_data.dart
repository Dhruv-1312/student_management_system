class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData('DSA', 'B-Tree', '21-aug-2023', '25-aug-2023', 'Pending'),
  AssignmentData('DBMS', 'operator', '23-aug-2023', '29-aug-2023', 'Pending'),
  AssignmentData('Evs', 'ATMOD', '15-aug-2023', '17-aug-2023', 'Submitted'),
  AssignmentData(
      'AM', 'Binary operator', '12-aug-2023', '14-aug-2023', 'Submitted'),
];
