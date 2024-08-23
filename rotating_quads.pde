int firstQuadX = 0;
int firstQuadY = 30;
int quadHeight = 30;
int quadWidth = 30;
int angleChange;


void setup() {
  size(600, 600, P3D);
  noStroke();
}

void draw() {
  background(42, 68, 23);
    threeDQuads();
    
}

void threeDQuads() {
  fill(42, 255, 15);
  for (int x=firstQuadX; x<width; x=x+(quadWidth*2)) {
    for (int y=firstQuadY; y< height; y=y+(quadWidth*2)) {
      pushMatrix();
      translate(x, y);
      rotateX(radians(angleChange));
      rotateY(radians(-angleChange));
      quad(firstQuadX, firstQuadY, firstQuadX + 30, firstQuadY - 30, firstQuadX + 30, quadHeight, firstQuadX, quadHeight + 30);
      popMatrix();

      pushMatrix();
      translate(x + quadWidth * 2, y + quadHeight);
      scale(-1, 1);
      rotateX(radians(angleChange));
      rotateY(-radians(angleChange));
      quad(firstQuadX, firstQuadY, firstQuadX + 30, firstQuadY - 30, firstQuadX + 30, quadHeight, firstQuadX, quadHeight + 30);
      popMatrix();
    }
  }
  angleChange = angleChange + 1;
}
