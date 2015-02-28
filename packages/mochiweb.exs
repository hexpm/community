defmodule Mochiweb.Mixfile do
  use Mix.Project

  def project do
    [app: :mochiweb,
     version: "2.12.2",

     description: description,
     package: package,
     fetch: fetch,
     deps: deps]
  end

  defp description do
    """
    MochiWeb is an Erlang library for building lightweight HTTP servers.
    """
  end

  defp deps do
    []
  end

  defp package do
    [contributors: ["Mochi Media, Inc.", "Bob Ippolito"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/mochi/mochiweb"},
     files: ["src", "include", "README", "LICENSE", "CHANGES.md", "rebar.config", "Makefile"]]
  end

  defp fetch do
    [scm: :git,
     url: "git@github.com:mochi/mochiweb.git",
     tag: "2.12.2"]
  end
end
