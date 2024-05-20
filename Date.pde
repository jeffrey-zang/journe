class Date {
  int day;
  int month;
  int year;

  Date(int d, int m, int y) {
    this.day = d;
    this.month = m;
    this.year = y;
  }

  String display() {
    return str(this.day) + "/" + str(this.month) + "/" + str(this.year);
  }
}