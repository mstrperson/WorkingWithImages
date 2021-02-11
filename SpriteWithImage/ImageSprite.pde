public class ImageSprite extends Sprite
{
  protected PImage img;
  
  public ImageSprite(float x, float y, String fileName)
  {
    super(x, y);
    img = loadImage(fileName);
  }
  
  public void drawSprite()
  {
    image(img, x, y);
    image(img, x-width, y);
    image(img, x+width, y);
    image(img, x-width, y+height);
    image(img, x+width, y-height);
    image(img, x-width, y-height);
    image(img, x+width, y+height);
    image(img, x, y+height);
    image(img, x, y-height);
  }
}
