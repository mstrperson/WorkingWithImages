ImageSprite star;

void setup()
{
  size(800, 600);
  star = new ImageSprite(100, 100, "star.png");
}

void draw()
{
  background(255);
  star.keyboardControl();
  star.drawSprite();
}
