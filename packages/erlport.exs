defmodule ErlPort.Mixfile do
  use Mix.Project

  def project do
    [app: :erlport,
     version: "1.0.0alpha",
     description: description,
     package: package,
     fetch: fetch]
  end

  defp description do
    """
    ErlPort is a library for Erlang which helps connect
    Erlang to a number of other programming languages.
    """
  end

  defp package do
    [contributors: ["Dmitry Vasiliev"],
     licenses: ["Simplified BSD"],
     links: %{"GitHub" => "https://github.com/hdima/erlport"},
     files: ~w(AUTHORS LICENSE TODO ebin rebar.config runtest testall CHANGES Makefile dialyzer.ignore package.exs release src testall.log CONTRIBUTORS README.rst doc priv releaseall test)]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/hdima/erlport.git",
     ref: "ce5e117324acde811065eefc7bd6036e080c137a"]
  end
end
