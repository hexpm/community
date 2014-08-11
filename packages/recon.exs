# Publisher: github/msch
defmodule Recon.Mixfile do
  use Mix.Project

  def project do
    [app: :recon,
     version: "2.2.0",
     description: description,
     package: package,
     fetch: fetch]
  end

  defp description do
    """
    Recon wants to be a set of tools usable in production to diagnose Erlang problems or inspect production environment safely.
    """
  end

  defp package do
    [contributors: ["Frédéric Trottier-Hébert"],
     licenses: ["BSD 3-clause"],
     links: %{"GitHub" => "https://github.com/ferd/recon"},
     files: ["LICENSE", "README.md", "src", "rebar"]]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/ferd/recon.git",
     tag: "2.2.0"]
  end
end
