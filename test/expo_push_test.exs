defmodule ExpoPushTest do
  use ExUnit.Case
  doctest ExpoPush

  test "greets the world" do
    assert ExpoPush.hello() == :world
  end
end
