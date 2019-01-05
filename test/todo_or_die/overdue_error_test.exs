defmodule TodoOrDie.OverdueErrorTest do
  use ExUnit.Case

  alias TodoOrDie.OverdueError

  test "renders message correctly" do
    assert_raise OverdueError, "TODO: \"Fix Me\" came due on 2019-06-23. Do it!", fn ->
      raise OverdueError, todo: "Fix Me", due_at: ~D[2019-06-23]
    end
  end
end
