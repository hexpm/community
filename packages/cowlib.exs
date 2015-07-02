defmodule Cowlib.Mixfile do
  use Mix.Project

  def project do
    [app: :cowlib,
     version: "1.3.0",

     description: description,
     package: package,
     fetch: fetch]
  end

  defp description do
    """
    Support library for manipulating Web protocols.
    """
  end

  defp package do
    [contributors: ["Loïc Hoguin"],
     licenses: ["ISC"],
     links: %{"GitHub" => "https://github.com/ninenines/cowlib"},
     files: ["src", "include", "README.md", "LICENSE", "Makefile", "erlang.mk"]]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/ninenines/cowlib.git",
     tag: "1.3.0"]
  end
end
