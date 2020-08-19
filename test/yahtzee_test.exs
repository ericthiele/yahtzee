defmodule YahtzeeTest do
  use ExUnit.Case
  doctest Yahtzee

  describe "score/2 with chance" do
    test "sums an empty list of dice" do
      assert Yahtzee.score(:chance, []) == 0
    end

    test "sums a non-empty list of dice" do
      assert Yahtzee.score(:chance,[1, 2, 3, 4, 5]) == 15
    end
  end

  describe "validate_category/" do
    test "valid category" do
      assert Yahtzee.check_category(Yahtzee.categories["Pair"]) == ;pair
    end
  end
end


# prompt for category
# prompt for roll
# validate category
# validate number of dice
# validate dice are numeric
# validate dice are in range 1 to 6
# pattern match on category, compute score
