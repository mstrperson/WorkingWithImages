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

void playRound()
{
  PlayingCard card1 = player1.remove(0);
  PlayingCard card2 = player2.remove(0);
  
  card1.moveTo(100, 300);
  card1.drawSprite();
  
  card2.moveTo(500, 300);
  card2.drawSprite();
  
  // Player 1 wins
  if(card1.value > card2.value)
  {
    player1.add(card1);
    player1.add(card2);
  }
  // Player 2 wins
  else if(card2.value > card1.value)
  {
    player2.add(card1);
    player2.add(card2);
  }
  // TIE
  else
  {
    textSize(100);
    text("WAR!!!", 200, 100);
    
    ArrayList<PlayingCard> pile = new ArrayList<PlayingCard>();
    
    while(card1.value == card2.value)
    {
      pile.add(card1);
      pile.add(card2);
      
      card1 = player1.remove(0);
      card2 = player2.remove(0);
      
      card1.moveTo(100, 300);
      card1.drawSprite();
      
      card2.moveTo(500, 300);
      card2.drawSprite();
      
      delay(1000);
    }
    
    pile.add(card1);
    pile.add(card2);
    
    // Player 1 wins
    if(card1.value > card2.value)
    {
      for(PlayingCard card : pile)
      {
        player1.add(card);
      }
    }
    // Player 2 wins
    else if(card2.value > card1.value)
    {
      for(PlayingCard card : pile)
      {
        player2.add(card);
      }
    }
    
  } // End of WAR
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
