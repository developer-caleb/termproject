class Rectangle {
  int width;
  int height;
  Rectangle(this.width, this.height);
  static Rectangle? example;
  Rectangle.square(int size) : this(size, size);
  //Rectangle.zero() : this(0, 0); //같음
  Rectangle.zero()
      : width = 0,
        height = 0;
  Rectangle.fromMap(Map<String, dynamic> map) : this(map['width'], map['height']);

  factory Rectangle.getExample(int width, int height) {
    return example ?? Rectangle(width, height);
  }

  factory Rectangle.flat(int a, int b) {
    if (a > b) {
      return Rectangle(a, b);
    } else {
      return Rectangle(b, a);
    }
    ;
  }

  @override
  String toString() {
    return 'Rectangle{width: $width, height: $height}, area : ${width * height}';
  }
}

void main() {
  var rect1 = Rectangle(300, 200);
  print(rect1);
  var square1 = Rectangle.square(500);
  print(square1);
  var rect2 = Rectangle.fromMap({'width': 200, 'height': 700});
  print(rect2);
  var rect3 = Rectangle.flat(100, 700);
  print(rect3);
}
