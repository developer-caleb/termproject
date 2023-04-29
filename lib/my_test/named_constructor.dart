class Rectangle {
  int width;
  int height;
  Rectangle(this.width, this.height);
  Rectangle.square(int size) : this(size, size);
  Rectangle.zero() : this(0, 0);
  Rectangle.fromMap(Map<String, dynamic> map) : this(map['width'], map['height']);
  @override
  String toString() {
    return 'Rectangle{width: $width, height: $height}';
  }
}

void main() {
  var rect1 = Rectangle(300, 200);
  print(rect1);
  var square1 = Rectangle.square(500);
  print(square1);
  var rect2 = Rectangle.fromMap({'width': 200, 'height': 700});
  print(rect2);
}
