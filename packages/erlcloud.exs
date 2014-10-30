defmodule ErlCloud.Mixfile do
  use Mix.Project

  def project do
    [app: :erlcloud,
     version: "0.9.1",
     language: :erlang,
     description: description,
     package: package,
     deps: deps,
     fetch: fetch]
  end

  defp deps do
    [{:jsx, "~> 2.1.1"},
     {:lhttpc, "~> 1.3.0"},
     {:meck, "~> 0.8.2"}]
  end

  defp description do
    "Cloud Computing library for erlang"
  end

  defp package do
    [files: ~w(src include rebar.config rebar.config.script README.md COPYRIGHT),
     contributors: ["Gleb Peregud"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/gleber/erlcloud"}]
   end

  defp fetch do
    [scm: :git,
     url: "https://github.com/gleber/erlcloud.git",
     tag: "v0.9.1"]
  end
end
