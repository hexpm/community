defmodule Idna.Mixfile do
  use Mix.Project

  def project do
    [app: :idna,
     version: "1.0.1",
     description: description,
     package: package,
     fetch: fetch]
  end

  defp description do
    """
    A pure Erlang IDNA implementation.
    """
  end

  defp package do
    [contributors:
      [
       "Tim Fletcher",
       "Benoit Chesneau",
      ],
    licenses: ["MIT"],
    links: %{"GitHub" => "https://github.com/benoitc/erlang-idna"},
    files: ["src", "ebin", "README.md", "License.txt", "Makefile", "Emakefile" ]]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/benoitc/erlang-idna.git",
     tag: "1.0.1"]
  end
end
