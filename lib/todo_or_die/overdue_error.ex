defmodule TodoOrDie.OverdueError do
  defexception [:message]

  @impl true
  def exception(todo: todo, due_at: due_at) do
    %__MODULE__{message: "TODO: \"#{todo}\" came due on #{due_at}. Do it!"}
  end
end
