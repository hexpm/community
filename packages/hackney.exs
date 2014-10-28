defmodule Hackney.Mixfile do
  use Mix.Project

  def project do
    [app: :hackney,
     version: "0.14.3",
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
      {:idna, "1.0.1"},
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
    files: ["src", "include", "README.md", "LICENSE", "Makefile", "rebar.config" ]]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/benoitc/hackney.git",
     tag: "0.14.3"]
  end
end
