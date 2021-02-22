public class AnimatedSprite extends Sprite
{
  protected String[] frameFileNames;
  protected PImage image;
  protected int frameNumber;
  
  public AnimatedSprite(float x, float y, String[] frames)
  {
    super(x, y);
    frameNumber = 0;
    frameFileNames = frames;
  }
  
  public void drawSprite()
  {
    image = loadImage(frameFileNames[frameNumber]);
    image.resize(100, 100);
    image(image, x, y);
    if(frameCount % 5 == 0)
    {
      frameNumber++;
      frameNumber = frameNumber % frameFileNames.length;
    }
  }
}
