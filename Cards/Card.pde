public class PlayingCard extends Sprite
{
  PImage image;
  int value;
  String suit;
  
  public PlayingCard(float x, float y, int val, String suit)
  {
    super(x, y);
    this.value = val;
    this.suit = suit;
    image = loadImage(String.format("images/%d%s.png", val, suit));
  }
  
  
  public void drawSprite()
  {
    image(image, x, y);
  }
}
