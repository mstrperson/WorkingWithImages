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
    if(deck.size() > 0)
    {
      PlayingCard card = deck.get(0);
      deck.remove(0);
      return card;
    }
    else
    {
      return null;
    }
  }

  public boolean IsEmpty()
  {
    return deck.size() <= 0;
  }

  public void Shuffle()
  {
    for (int count = 0; count < 7; count++)
    {
      ArrayList<PlayingCard> left = new ArrayList<PlayingCard>();
      ArrayList<PlayingCard> right = new ArrayList<PlayingCard>();

      while(!this.IsEmpty())
      {
        float choice = random(100);
        if(choice > 50) left.add(this.Deal());
        else right.add(this.Deal());
      }

      while (left.size() > 0 || right.size() > 0)
      {
        for (int i = 0; i < random(1, 4); i++)
        {
          if (left.size() > 0)
          {
            deck.add(left.remove(0));
          }
        }
        for (int i = 0; i < random(1, 4); i++)
        {
          if (right.size() > 0)
          {
            deck.add(right.remove(0));
          }
        }
      }
    }
  }
}
