defmodule Hackney.Mixfile do
  use Mix.Project

  def project do
    [app: :hackney,
     version: "1.2.0",
     description: description,
     package: package,
     deps: deps,
     fetch: fetch]
  end

  defp description do
    """
    HTTP client library in Erlang
    """
  end

  defp deps do
    [
      {:idna, "~> 1.0.2"},
      {:ssl_verify_hostname, "~> 1.0.5"},
    ]
  end

  defp package do
    [contributors:
      ["Benoit Chesneau",
       "Adam Rutkowski",
       "ILYA Khlopotov",
       "Leo Lou",
       "Tristan Sloughter",
       "Erik Timan",
       "Bip Thelin",
       "José Valim",
       "Дамјан Георгиевски",
       "Alexander Zhuravlev",
       "Anthony Grimes",
       "Bob Ippolito",
       "Mahesh Paolini-Subramanya",
       "Jesse Gumm",
       "Daniel White",
       "Chris Andrews",
       "Alexey Aniskin",
       "Yuki Ito",
       "Yuriy Bogdanov",
       "Ben Murphy",
       "Richard Jones",
      ],
    licenses: ["Apache 2.0"],
    links: %{"GitHub" => "https://github.com/benoitc/hackney"},
    files: ["src", "include", "priv", "README.md", "LICENSE", "Makefile", "rebar.config"]]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/benoitc/hackney.git",
     tag: "1.2.0"]
  end
end
