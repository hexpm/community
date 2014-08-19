defmodule Jiffy.Mixfile do
  use Mix.Project

  def project do
    [app: :jiffy,
     version: "0.0.1",
     description: description,
     package: package,
     deps: deps,
     fetch: fetch]
  end

  defp description do
    """
    JSON NIFs for Erlang
    """
  end

  defp deps do
    []
  end

  defp package do
    [contributors: ["Paul J. Davis"],
    licenses: ["MIT"],
    links: %{"GitHub" => "https://github.com/davisp/jiffy"},
    files: ["c_src", "plugins", "src", "README.md", "LICENSE", "Makefile", "rebar.config"]]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/davisp/jiffy.git",
     ref: "2dbf89f51c547914e994f51457140df9e9a1ca83"]
  end
end
