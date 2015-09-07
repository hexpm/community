defmodule Ezmq.Mixfile do
  use Mix.Project

  def project do
    [app: :ezmq,
     version: "0.2.1",
     deps: deps,
     description: description,
     package: package,
     fetch: fetch]
  end

  defp deps do
    [{:lager, "~> 2.1.1"},
     {:gen_listener_tcp, "~> 0.3.2"}]
  end

  defp description do
    """
    Native Erlang 0MQ implementation
    """
  end

  defp package do
    [contributors: ["Andreas Schultz",
                    "Anton N Ryabkov",
                    "Pieter Hintjens",
                    "Stéphane Wirtel",
                    "Zachary Kessin",
                    "plemanach"],
     licenses: ["MPL 2.0"],
     links: %{"GitHub" => "https://github.com/zeromq/ezmq"},
     files: ["examples", "include", "src", "test", "LICENSE", "Makefile", "README.md", "rebar.config", "rebar.config.travis"]] 
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/zeromq/ezmq.git",
     tag: "0.2.1"]
  end
end
