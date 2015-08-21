# Publisher: github/msch
defmodule Eper.Mixfile do
  use Mix.Project

  def project do
    [app: :eper,
     version: "0.93.0",
     description: description,
     package: package,
     fetch: fetch]
  end

  defp description do
    """
    Erlang Performance and Debugging Tools

    sherk - a profiler, similar to Linux oprofile or MacOs shark
    gperf - a graphical performance monitor; shows CPU, memory and network usage
    dtop  - similar to unix top
    redbug- similar to the OTP dbg application, but safer, better etc.
    """
  end

  defp package do
    [contributors: ["Mats Cronqvist"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/massemanet/eper"},
     files: ["AUTHORS", "COPYING", "README", "rebar", "rebar.config", "rebar.config.script", "src", "priv"]]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/massemanet/eper.git",
     tag: "0.93.0"]
  end
end
