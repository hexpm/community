defmodule LHttpC.Mixfile do
  use Mix.Project

  def project do
    [app: :lhttpc,
     version: "1.3.0",
     description: description,
     package: package,
     deps: deps,
     fetch: fetch]
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

  defp fetch do
    [scm: :git,
     url: "https://github.com/talko/lhttpc.git",
     ref: "2d01a5f9c7543b77bdd57f44c92e72801f46e423"]
  end
end
