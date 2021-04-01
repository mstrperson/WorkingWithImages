public class Deck
{
  // All those Suits!
  private String[] suits = { "S", "D", "C", "H" };

  ArrayList<PlayingCard> deck;

  public Deck()
  {
    deck = new ArrayList<PlayingCard>();

    // go through each suit~
    for (String suit : suits)
    {
      // go through each Value~
      for (int val = 1; val < 14; val++)
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

  void Shuffle()
  {
    // I need a place to store the split deck parts
    ArrayList<PlayingCard> left  = new ArrayList<PlayingCard>();
    ArrayList<PlayingCard> right = new ArrayList<PlayingCard>();

    // take between 18 and 32 cards and move them to the Left pile.
    for (int i = 0; i < random(18, 32); i++)
    {
      left.add(this.Deal());
    }
    // put all the rest of the cards in the right pile.
    while (! this.isEmpty())
    {
      right.add(this.Deal());
    }

    // UNTIL  Left has no cards  AND  Right has no cards...
    while (! (left.size() == 0 && right.size() == 0))
    {
      for (int i = 0; i < random(1, 4); i++)
      {
        // IF the right pile Has Cards!
        if ( right.size() > 0)
        {
          deck.add(right.remove(0));
        }
      }
      for (int i = 0; i < random(1, 4); i++)
      {
        // IF the LEFT pile Has Cards!
        if ( left.size() > 0)
        {
          deck.add(left.remove(0));
        }
      }
    }
  }

  // Check to see if the deck is empty.
  boolean isEmpty()
  {
    return deck.size() == 0;
  }
}
