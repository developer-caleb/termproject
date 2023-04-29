abstract class Insect {
  void crawl() {
    print('crawling');
  }
}

abstract class AirborneInsect extends Insect implements Flutterings {
  void buzz() {
    print('buzzing annoyingly');
  }

  @override
  void flutter() {}
}

class Flutterings {
  void flutter() {
    print('fluttering');
  }
}

class Mosquito extends AirborneInsect {
  void doMosquitoThings() {
    crawl();
    flutter();
    buzz();
    print('sucking blood');
  }
}

abstract class Bird {
  void chirp() {
    print('chirp chirp');
  }

  void flutter() {
    print('fluttering');
  }
}

class Swallow extends Bird {
  void doSwallowThing() {
    chirp();
    flutter();
    print('eating a mosquito');
  }
}

void main() {
  Swallow swallow = Swallow();
  swallow.doSwallowThing();
}
