defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello()
      :world

  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    cards = for value <- values do
      for suit <- suits do
        "#{value} of #{suit}"
      end
    end

    List.flatten(cards)
  end

  @spec shuffle(any()) :: [any()]
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @spec contains?(any(), any()) :: boolean()
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
