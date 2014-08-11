defmodule Gproc.Mixfile do
  use Mix.Project

  def project do
    [app: :gproc,
     version: "0.3.0",
     description: description,
     package: package,
     fetch: fetch]
  end

  defp description do
    """
    Gproc is a process dictionary for Erlang, which provides a number of useful features beyond what the built-in dictionary has:

    * Use any term as a process alias
    * Register a process under several aliases
    * Non-unique properties can be registered simultaneously by many processes
    * QLC and match specification interface for efficient queries on the dictionary
    * Await registration, let's you wait until a process registers itself
    * Atomically give away registered names and properties to another process
    * Counters, and aggregated counters, which automatically maintain the total of all counters with a given name
    * Global registry, with all the above functions applied to a network of nodes
    """
  end

  defp package do
    [contributors: ["Ulf Wiger", "Joseph Wayne Norton "],
     licenses: ["EPL 1.1"],
     links: %{"GitHub" => "https://github.com/uwiger/gproc"}]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/uwiger/gproc.git",
     tag: "0.3"]
  end
end
