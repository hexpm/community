defmodule Ranch.Mixfile do
  use Mix.Project

  def project do
    [app: :ranch,
     version: "1.1.0",

     description: description,
     package: package,
     fetch: fetch]
  end

  defp description do
    """
    Socket acceptor pool for TCP protocols.
    """
  end

  defp package do
    [contributors: ["Loïc Hoguin"],
     licenses: ["ISC"],
     links: %{"GitHub" => "https://github.com/ninenines/ranch"},
     files: ["src", "include", "README.md", "LICENSE", "AUTHORS", "Makefile", "erlang.mk"]]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/ninenines/ranch.git",
     tag: "1.1.0"]
  end
end
