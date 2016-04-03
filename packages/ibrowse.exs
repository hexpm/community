defmodule IBrowse.Mixfile do
  use Mix.Project

  def project do
    [app: :ibrowse,
     version: "4.1.2",
     description: description,
     package: package,
     deps: deps,
     fetch: fetch]
  end

  defp deps do
    []
  end

  defp description do
    """
    A HTTP client written in erlang.
    """
  end

  defp package do
    [contributors:
      [ "Adam Kocoloski",
        "Andrew Tunnell-Jones",
        "Anthony Molinaro",
        "Benoit Chesneau (https://github.com/benoitc)",
        "Chris Newcombe",
        "Dan Kelley",
        "Derek Upham",
        "Eric Merritt",
        "Erik Reitsma",
        "Filipe David Manana",
        "Geoff Cant",
        "Jeroen Koops",
        "Jo?o Lopes",
        "Joseph Wayne Norton",
        "Karol Skocik",
        "Konstantin Nikiforov",
        "Kostis Sagonas",
        "Marcelo Gornstein (https://github.com/marcelog)",
        "Matthew Reilly",
        "Michael Terry",
        "Oscar Hellstr?m",
        "Paul J. Davis",
        "Peter Kristensen",
        "Ram Krishnan",
        "Richard Cameron",
        "Robert Newson (https://github.com/rnewson)",
        "Ryan Flynn",
        "Ryan Zezeski",
        "Sean Hinde",
        "Serge Polkovnikov (https://github.com/serge2)",
        "Sergey Samokhi",
        "Seth Falcon",
        "Steve Vinoski",
        "Thomas Lindgren",
        "Youn?s Hafri",
        "Yury Gargay (https://github.com/surik)",
        "fholzhauser (https://github.com/fholzhauser/)",
        "hyperthunk (https://github.com/hyperthunk/)",
        "Mistagrooves (https://github.com/Mistagrooves/)",
        "tholschuh (https://github.com/tholschuh/)",
        "https://github.com/apauley",
        "https://github.com/AeroNotix",
        "https://github.com/dis",
        "https://github.com/f355",
        "https://github.com/flycodepl",
        "https://github.com/helllamer",
        "https://github.com/marutha",
        "https://github.com/nrdufour",
        "https://github.com/pib",
        "https://github.com/puzza007",
        "https://github.com/rflynn",
        "https://github.com/Vagabond",
        "https://github.com/divolgin",
      ],
      licenses: ["LGPL", "BSD"],
      links: %{"GitHub" => "https://github.com/cmullaparthi/ibrowse"},
      files: ~w(doc src include priv LICENSE BSD_LICENSE README.md CHANGELOG rebar rebar.config Makefile)
    ]
  end

  defp fetch do
    [scm: :git,
     url: "git@github.com:cmullaparthi/ibrowse.git",
     tag: "4.1.2"]
  end
end
