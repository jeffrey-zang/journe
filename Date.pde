// Date class, making it easier to display dates with day, month, and year

class Date {
  int day;
  int month;
  int year;

  Date(int d, int m, int y) {
    this.day = d;
    this.month = m;
    this.year = y;
  }

  String display() { // Returns a string of the current day in dd/mm/yy format
    return str(this.day) + "/" + str(this.month) + "/" + str(this.year);
  }
}