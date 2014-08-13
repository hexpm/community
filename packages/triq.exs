defmodule Triq.Mixfile do
  use Mix.Project

  def project do
    [app: :triq,
      version: "0.1.0",
      description: description,
      package: package,
      deps: [],
      fetch: fetch,
    ]
  end

  defp description, do:
    "QuickCheck clone for Erlang"

  defp package do
    [contributors:
       ["Kresten Krab Thorup",
        "Tuncer Ayaz",
        "Anders Nygren",
        "Erik Søe Sørensen",
        "Dave Smith",
        "Michael Uvarov",
        "Magnus Henoch",
        "James Fish",
        "Andrew Pennebaker",
       ],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/krestenkrab/triq"},
     files: ["src", "include", "config", "LICENSE", "NOTICE",
              "README.markdown", "rebar.config"],
    ]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/krestenkrab/triq.git",
     ref: "0c1a00d"
    ]
  end
end
