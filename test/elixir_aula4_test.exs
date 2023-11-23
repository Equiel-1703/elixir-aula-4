defmodule ElixirAula4Test do
  use ExUnit.Case
  doctest ElixirAula4

  test "greets the world" do
    assert ElixirAula4.hello() == :world
  end
end
