defmodule ThePackage.Mixfile do
  use Mix.Project

  def project do
    [app: :the_package,
     version: "1.0.6",
     deps: deps,
     description: description,
     package: package,
     fetch: fetch]
  end

  defp deps do
    []
  end

  defp description do
    """
    Non-blocking Erlang Redis client with focus on performance and robustness
    """
  end

  defp package do
    [contributors: ["Knut Nesheim"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/wooga/eredis"},
     files: ~w(include priv src Makefile Emakefile.src rebar.config
               CHANGELOG.md README.md LICENSE AUTHORS)]
  end

  defp contributors do
    [
      "Knut Nesheim",
      "tomlion",
      "Metin Akat",
      "Ville Tuulos",
      "adzeitor",
      "Valentino Volonghi",
      "Dave Peticolas",
      "Ransom Richardson",
      "Michael Gregson",
      "Matthew Conway",
      "Aleksey Morarash",
      "Mikl Kurkov",
      "Seth Falcon",
    ]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/wooga/eredis",
     tag: "v1.0.6"]
  end
end
