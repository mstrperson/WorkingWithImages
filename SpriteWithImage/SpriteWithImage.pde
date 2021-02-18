ImageSprite star;

void setup()
{
  size(800, 600);
  // x and y position and then the file name
  star = new ImageSprite(100, 100, "star_transparent.png");
}

void draw()
{
  background(0, 72, 180);
  if(keyPressed) star.keyboardControl();
  star.drawSprite();
}

// Converts "White" to "Transparent".
void ConvertImageToTransparentBackground(String fileName, String outputFileName)
{
  PImage temp = loadImage(fileName);
  PImage newImg = createImage(temp.width, temp.height, ARGB);
  for(int i=0; i < temp.width; i++)
  {
    for(int j=0; j < temp.height; j++)
    {
      int n = j*temp.width + i;
      if(temp.pixels[n] == color(255))
        newImg.pixels[n] = color(0,0,0, 0);
      else
        newImg.pixels[n] = temp.pixels[n];
    }
  }
  
  newImg.save(outputFileName);
}
