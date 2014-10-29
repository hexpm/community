defmodule LHttpC.Mixfile do
  use Mix.Project

  def project do
    [app: :lhttpc,
     version: "1.3.0",
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    []
  end

  defp description do
    "Lightweight HTTP/1.1 client"
  end

  defp package do
    [files: ~w(src include test doc util rebar.config CHANGELOG LICENCE README),
     contributors: ["Erlang Training and Consulting Ltd."],
     licenses: ["BSD"],
     links: %{"GitHub" => "https://github.com/talko/lhttpc"}]
   end
end
