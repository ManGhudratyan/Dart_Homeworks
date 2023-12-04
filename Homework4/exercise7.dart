void getStars() {
  for (var i = 0; i <= 4; i++) {
    String stars = '';
    for (var j = 0; j <= i; j++) {
      stars += '*';
    }
    print(stars);
  }
}

void main() {
  getStars();
}
