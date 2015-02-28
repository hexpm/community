defmodule PlainFSM.Mixfile do
  use Mix.Project

  def project do
    [app: :plain_fsm,
     version: "1.0.0",
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
    This package provides an OTP behaviour for writing plain Erlang FSMs,
    alleviating a long-standing gripe of mine - Ulf Wiger (ulf@feuerlabs.com) - 
    that the OTP behaviours, for all their power, force programmers into a 
    coding style that is very much different from that taught in the Basic 
    Erlang Course (or the book, or online tutorials, ...) -- the type of 
    programming that made us want to use Erlang in the first place.
    """
  end

  defp package do
    [files: ~w(src rebar.config README.md Makefile include doc rebar),
     contributors: ["Ulf Wiger"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/uwiger/plain_fsm.git"}]
  end

  defp fetch do
    [
      scm: :git,
      url: "https://github.com/uwiger/plain_fsm.git",
      tag: "1.0.0"
    ]
  end
  
end