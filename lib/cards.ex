defmodule Cards do

  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  @spec shuffle(any()) :: [any()]
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @spec contains?(any(), any()) :: boolean()
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @spec deal(any(), integer()) :: {[any()], [any()]}
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
end
