defmodule Eleveldb.Mixfile do
  use Mix.Project

  def project do
    [app: :eleveldb,
     version: "1.4.11",
    
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
    Basho's LevelDB storage engine for Erlang used in Riak.
    """
  end

  defp package do
    [contributors: ["Basho Technologies"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/basho/eleveldb"},
     files: ["c_src", "priv", "src", "test", "Makefile", "README.md", "rebar", "rebar.config", "rebar.config.script", "tools.mk"]]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/basho/eleveldb.git",
     tag: "v1.4.11"]
  end
end
