defmodule TodoOrDie do
  @doc """
  Raises an exception when the task is overdue.

  iex> TodoOrDie.due("Remove this", by: ~D[2019-01-01])
  ** (RuntimeError) TODO: "Remove this" came due on 2019-01-01. Do it!
  """
  def due(description, today \\ Date.utc_today(), by: due_at) do
    if Date.compare(today, due_at) != :lt do
      raise "TODO: \"#{description}\" came due on #{due_at}. Do it!"
    else
      :ok
    end
  end
end
