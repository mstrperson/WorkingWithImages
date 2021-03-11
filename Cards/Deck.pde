public class Deck
{
  // All those Suits!
  private String[] suits = { "S", "D", "C", "H" };
  
  ArrayList<PlayingCard> deck;
  
  public Deck()
  {
    deck = new ArrayList<PlayingCard>();
    
    // go through each suit~
    for(String suit : suits)
    {
      // go through each Value~
      for(int val = 1; val < 14; val++)
      {
        deck.add(new PlayingCard(0, 0, val, suit));
      }
    }    
  }
  
  // Deal a card from the deck
  public PlayingCard Deal()
  {
    PlayingCard card = deck.get(0);
    deck.remove(0);
    return card;
  }
}
