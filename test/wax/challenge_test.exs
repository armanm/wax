defmodule Wax.ChallengeTest do
  use ExUnit.Case, async: true

  alias Wax.Challenge

  describe "new/1" do
    test "generates bytes" do
      assert Challenge.new([]).bytes
    end

    test "does not override bytes when provided as an option" do
      assert %{bytes: "abcd"} = Challenge.new(bytes: "abcd")
    end
  end
end
