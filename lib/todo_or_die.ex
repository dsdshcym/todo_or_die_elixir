defmodule TodoOrDie do
  @doc """
  Raises an exception when the task is overdue.

  iex> TodoOrDie.due("Remove this", by: ~D[2019-01-01])
  ** (TodoOrDie.OverdueError) TODO: "Remove this" came due on 2019-01-01. Do it!
  """
  def due(description, today \\ Date.utc_today(), by: due_at) do
    if Date.compare(today, due_at) != :lt do
      raise TodoOrDie.OverdueError, todo: description, due_at: due_at
    else
      :ok
    end
  end
end
