defmodule TodoOrDieTest do
  use ExUnit.Case
  doctest TodoOrDie

  test "greets the world" do
    assert TodoOrDie.hello() == :world
  end
end
