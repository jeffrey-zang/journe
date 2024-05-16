class Date {
  int day;
  int month;
  int year;

  Date() {
    this.day = day();
    this.month = month();
    this.year = year();
  }

  String display() {
    return str(this.day) + "/" + str(this.month) + "/" + str(this.year);
  }
}