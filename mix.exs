defmodule PaymentHub.MixProject do
  use Mix.Project

  def project do
    [
      app: :payment_hub,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:ethereumex, "~> 0.4.0"},
      {:abi, "~> 0.1.8", github: "exthereum/abi", override: true},
      {:exw3, "~> 0.4.2"}
    ]
  end
end
