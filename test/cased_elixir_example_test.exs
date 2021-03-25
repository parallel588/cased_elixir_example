defmodule CasedElixirExampleTest do
  use ExUnit.Case
  doctest CasedElixirExample

  test "greets the world" do
    assert CasedElixirExample.hello() == :world
  end
end
