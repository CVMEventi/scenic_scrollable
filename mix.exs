defmodule Scenic.Scrollable.MixProject do
  use Mix.Project

  @github "https://github.com/nanaki04/scenic_scrollable"

  def project do
    [
      app: :scenic_scrollable,
      version: "0.1.0",
      description: "Scrollable component for the Scenic library",
      elixir: "~> 1.7",
      build_embedded: true,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Scenic Scrollable",
      source_url: @github,
      docs: [
        main: "Scenic.Scrollable",
        extras: ["README.md"]
      ],
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Scenic.Scrollable.Application, []},
      extra_applications: []
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:scenic, "~> 0.10"},
      {:scenic_driver_glfw, "~> 0.10", targets: :host},
      {:result_ex, "~> 0.1"},
      {:option_ex, "~> 0.2"},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.16", only: [:dev], runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      maintainers: ["Robert Jan Zwetsloot"],
      links: %{github: @github}
    ]
  end
end
