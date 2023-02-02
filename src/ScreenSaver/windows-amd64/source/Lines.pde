class Lines {
  // class variables
  float xpos, ypos, strokeW, lineLength;

  // Constructor
  Lines(float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    lineLength = tempLength;
  }

  // Display
  void display() {
    strokeW = random(1, 2);
    lineLength = random(1, 50);
    stroke(random(200), random(100), random(10));
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos = random(width);
      ypos = random(height);
    } else {
      if (random(100)>95) {
        strokeWeight(strokeW);
        moveLeft(xpos, ypos, lineLength);
      } else if (random(100)>95) {
        strokeWeight(strokeW);
        moveUp(xpos, ypos, lineLength);
      } else if (random(100)>95) {
        strokeWeight(strokeW);
        moveDown(xpos, ypos, lineLength);
      } else if(random(100)>95) {
        strokeWeight(strokeW);
        moveRight(xpos, ypos, lineLength);
      }
    }
  }
  void moveRight(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX + i, startY);
      xpos = startX + i;
      ypos = startY;
    }
  }

  void moveLeft(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX - i, startY);
      xpos = startX - i;
      ypos = startY;
    }
  }

  void moveUp(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX, startY - i);
      xpos = startX;
      ypos = startY - i;
    }
  }

  void moveDown(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX, startY + i);
      xpos = startX;
      ypos = startY + i;
    }
  }
}
