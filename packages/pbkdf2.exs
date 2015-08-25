defmodule PBKKDF2.Mixfile do
  use Mix.Project

  def project do
    [app: :pbkdf2,
     version: "2.0.0",

     description: description,
     package: package,
     fetch: fetch]
  end

  defp description do
    """
    A PBKDF2 implementation for Erlang extracted from Apache CouchDB
    """
  end

  defp package do
    [licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/basho/erlang-pbkdf2"},
     files: ["src", "README.md", "LICENSE", "rebar.config"]]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/basho/erlang-pbkdf2.git",
     tag: "2.0.0"]
  end
end
