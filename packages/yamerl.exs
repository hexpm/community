defmodule Yamerl.Mixfile do
  use Mix.Project

  def project do
    [app: :yamerl,
     version: "0.3.1-1",
      
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
    YAML 1.2 parser in pure Erlang
    """
  end

  defp package do
    [files: ~w(src include rebar.config),
     contributors: ["Yakaz", "Jean-Sébastien Pédron"],
     licenses: ["BSD 2-Clause"],
     links: %{
      "GitHub" => "https://github.com/yakaz/yamerl",
      "Doc" => "https://github.com/yakaz/yamerl/tree/master/doc"
     }]
   end
   
   defp fetch do
     [scm: :git,
      url: "git://github.com/yakaz/yamerl.git",
      tag: "v0.3.1-1"]
   end
end