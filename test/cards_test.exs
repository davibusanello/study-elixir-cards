defmodule CardsTest do
  use ExUnit.Case, async: true
  doctest Cards

  setup_all do
    default_deck = [
      "Ace of Spades",
      "Two of Spades",
      "Three of Spades",
      "Four of Spades",
      "Five of Spades",
      "Ace of Clubs",
      "Two of Clubs",
      "Three of Clubs",
      "Four of Clubs",
      "Five of Clubs",
      "Ace of Hearts",
      "Two of Hearts",
      "Three of Hearts",
      "Four of Hearts",
      "Five of Hearts",
      "Ace of Diamonds",
      "Two of Diamonds",
      "Three of Diamonds",
      "Four of Diamonds",
      "Five of Diamonds"
    ]

    {:ok, default_valid_deck: default_deck}
  end

  describe "Cards.create_deck" do
    test "the created deck should be a list" do
      assert is_list(Cards.create_deck())
    end

    test "the created deck should have 20 items" do
      assert Enum.count(Cards.create_deck())
    end

    test "the default created deck should be a list of strings", %{
      default_valid_deck: default_valid_deck
    } do
      assert Cards.create_deck() == default_valid_deck
    end
  end

  describe "Cards.shuffle" do
    test "the deck should be shuffled", %{default_valid_deck: default_valid_deck} do
      deck = Cards.create_deck()
      refute Cards.shuffle(deck) == default_valid_deck
    end
  end

  describe "Cards.contains?" do
    test "the deck should have Ace of Spades card" do
      deck = Cards.create_deck()
      assert Cards.contains?(deck, "Ace of Spades")
    end

    test "the deck should not have Hiva card" do
      deck = Cards.create_deck()
      refute Cards.contains?(deck, "Hiva")
    end
  end

  describe "Cards.deal" do
    test "the deck should be separated", %{default_valid_deck: default_valid_deck} do
      deck = Cards.create_deck()
      refute Cards.deal(deck, 5) == default_valid_deck
    end
  end
end
