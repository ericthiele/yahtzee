categories = %{
  "Yahtzee" => :yahtzee,
  "Chance" => :chance,
  "Sixes" => :sixes,
  "Fives" => :fives,
  "Fours" => :fours,
  "Threes" => :threes,
  "Twoes" => :twoes,
  "Ones" => :ones,
  "Pair" => :pair,
  "Two pairs" => :two_pair,
  "Three of a kind" => :three_of_a_kind,
  "Four of a kind" => :four_of_a_kind,
  "Small straight" => :small_straight,
  "Large straight" => :large_straight,
  "Full house" => :full_house
}

valid_dice = %{
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6
}


  defmodule Yahtzee do
  @moduledoc """
  How play `Yahtzee`.
  """

  @doc """
  Score the dice by the category
  ## Examples

      iex> Yahtzee.score(:chance, [1, 2, 3, 4, 5])
      15
  """
  def score(:chance, list) do
    Enum.sum(list)
  end

  def check_category(category) do
    Yahtzee.categories[category] when Yahtzee.categories[category] != nil
  end

  def check_dice(dice) do

  end
end

# driver
category = Yahtzee.check_category(IO.gets("What category?\n"))

roll = IO.gets("roll?\n")
  |> String.split(" ",",","\n",trim: true)
  |> Enum.map(&String.to_integer/1)

#if Enum.size(roll) == 6 do
#  IO.inspect
#end
#Yahtzee.score(category, roll)
