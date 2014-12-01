defmodule Hackney.Mixfile do
  use Mix.Project

  def project do
    [app: :ssl_verify_hostname,
     version: "1.0.0",
     description: description,
     package: package,
     deps: deps,
     fetch: fetch]
  end

  defp description do
    """
    Hostname verification library for Erlang
    """
  end

  defp deps do
    [
    ]
  end

  defp package do
    [contributors: ["Ilya Khaprov"],
    licenses: ["MIT"],
    links: %{"GitHub" => "https://github.com/benoitc/ssl_verify_hostname"},
    files: ["src", "README.md", "LICENSE", "Makefile", ]]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/benoitc/ssl_verify_hostname.git",
     tag: "1.0.0"]
  end
end
