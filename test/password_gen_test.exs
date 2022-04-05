defmodule PasswordGenTest do
  use ExUnit.Case
  doctest PasswordGen

  test "take a string" do
    assert PasswordGen.take_string() == true
  end
end
