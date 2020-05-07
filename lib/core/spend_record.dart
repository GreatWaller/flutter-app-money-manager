class SpendRecord {
  int id;
  int userId;
  DateTime creationTime;
  int year;
  int month;
  int day;
  int type;
  int color;
  int bookingType;
  double amount;

  SpendRecord({
    this.userId,
    this.bookingType,
    this.type,
    this.color,
    this.amount,
  });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'userId': userId,
      'bookingType': bookingType,
      'amount': amount,
    };
    return map;
  }

  SpendRecord.fromMap(Map<String,dynamic> map){
    id=map['id'];
    userId=map['userId'];
    bookingType=map['bookingType'];
    amount=map['amount'];
  }
}
