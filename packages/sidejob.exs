# Publisher: github/msch
#
# BE AWARE: Because side uses {vsn, git} even when tagged you need to manually replace
# {vsn, git} with {vsn, "2.0.0"} in src/sidejob.app.src before releasing!
defmodule Sidejob.Mixfile do
  use Mix.Project

  def project do
    [app: :sidejob,
     version: "2.0.0",
     description: description,
     package: package,
     fetch: fetch]
  end

  defp description do
    """
    sidejob is an Erlang library that implements a parallel, capacity-limited request pool.

    In sidejob, these pools are called resources. A resource is managed by multiple gen_server like
    processes which can be sent calls and casts using sidejob:call or sidejob:cast respectively.

    This library was originally written to support process bounding in Riak using the
    sidejob_supervisor behavior. In Riak, this is used to limit the number of concurrent get/put
    FSMs that can be active, failing client requests with {error, overload} if the limit is ever
    hit. The purpose being to provide a fail-safe mechanism during extreme overload scenarios.
    """
  end

  defp package do
    [contributors: ["Ulf Norell", "Joseph Blomstedt", "Ryan Zezeski", "Sean Cribbs",
       "Andrew Thompson", "Jared Morrow"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/basho/sidejob"},
     files: ["README.md", "rebar.config", "src"]]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/basho/sidejob.git",
     tag: "2.0.0"]
  end
end
