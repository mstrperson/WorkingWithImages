// Here's the Deck
Deck theDeck;
// keep track of where to place teh card
int x = 0, y = 0;

ArrayList<PlayingCard> player1 = new ArrayList<PlayingCard>();
ArrayList<PlayingCard> player2 = new ArrayList<PlayingCard>();

void setup()
{
  size(1280, 720);
  
  // create a Deck!
  theDeck = new Deck();
  // Shuffle the Deck.
  for(int i = 0; i < 7; i++)
  {
    theDeck.Shuffle();
  }
}


void dealHands()
{
  // until I run out of cards....
  while( ! theDeck.isEmpty())
  {
    player1.add(theDeck.Deal());
    // MAKE SURE THAT WASN"T THE LAST CARD!!!
    if(! theDeck.isEmpty())
    {
      player2.add(theDeck.Deal());
    }
  }
}



void draw()
{
  if( !theDeck.isEmpty() )
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
}
