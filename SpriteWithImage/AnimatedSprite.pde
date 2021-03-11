public class AnimatedSprite extends Sprite
{
  protected String[] frameFileNames;
  protected PImage img;
  protected int frameNumber;
  
  public AnimatedSprite(float x, float y, String[] frames)
  {
    super(x, y);
    frameNumber = 0;
    frameFileNames = frames;
  }
  
  public void drawSprite()
  {
    img = loadImage(frameFileNames[frameNumber]);
    img.resize(100, 100);
    image(img, x, y);
    if(frameCount % 5 == 0) // every 5th frame
    {
      frameNumber++;        
      frameNumber = frameNumber % frameFileNames.length;
    }
  }
}
