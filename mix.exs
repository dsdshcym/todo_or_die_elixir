defmodule TodoOrDie.MixProject do
  use Mix.Project

  def project do
    [
      app: :todo_or_die,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      description: "Mark TODOs with a deadline. Once it's due, your app won't compile.",
      package: [
        name: "todo_or_die",
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/dsdshcym/todo_or_die_elixir"}
      ],
      deps: deps(),
      name: "TODO or Die",
      source_url: "https://github.com/dsdshcym/todo_or_die_elixir"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
