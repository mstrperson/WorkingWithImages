//PlayingCard card;

Deck theDeck;
// keep track of where to place teh card
int x = 0, y = 0;
void setup()
{
  size(1280, 800);
  
  //card = new PlayingCard(10, 10, 1, "S");
  
  // create a Deck!
  theDeck = new Deck();
}

void draw()
{
  PlayingCard card = theDeck.Deal();
  // move the card over~
  card.moveTo(x, y);
  // get ready for the next card.
  x+=20;
  card.drawSprite();
  // short delay so you can see the cards~
  delay(500);
}
