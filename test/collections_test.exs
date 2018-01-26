defmodule CollectionsTest do
  use ExUnit.Case

  test 'Get the length of an array' do
    assert Collections.getLength([0,1,2,3]) == 4
  end

  test 'Get the head of a list' do
    assert hd([:a, :b, :c]) == :a
  end

  test 'Get the rest of the list' do
    assert tl([:a, :y, :z]) === [:y, :z]
  end

  test 'Get the largest element in the list' do
    assert Enum.max([9, 99, 3,4]) == 99
  end

  test 'Sort a list' do
    assert Enum.max(Enum.random(0..100000)) === 9999
  end


end
