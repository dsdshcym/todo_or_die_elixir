defmodule TodoOrDieTest do
  use ExUnit.Case
  doctest TodoOrDie

  describe "due/3" do
    test "doesn't raise when today is before due date" do
      assert TodoOrDie.due("Fix Me", ~D[2018-12-31], by: ~D[2019-12-31])
    end

    test "raises when today is due date" do
      assert_raise RuntimeError, fn ->
        TodoOrDie.due("Fix Me", ~D[2018-12-31], by: ~D[2018-12-31])
      end
    end

    test "raises when today is beyond due date" do
      assert_raise RuntimeError, fn ->
        TodoOrDie.due("Fix Me", ~D[2019-01-01], by: ~D[2018-12-31])
      end
    end

    test "raises customized message based on input" do
      assert_raise RuntimeError, "TODO: \"Fix Me\" came due on 2019-06-23. Do it!", fn ->
        TodoOrDie.due("Fix Me", ~D[2020-01-01], by: ~D[2019-06-23])
      end
    end
  end
end
