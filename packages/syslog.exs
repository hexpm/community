defmodule ErlangSyslog.Mixfile do
  use Mix.Project

  def project do
    [app: :syslog,
     version: "1.0.2",
     description: description,
     package: package,
     deps: deps,
     fetch: fetch]
  end

  defp deps do
    []
  end

  defp description do
    "Erlang port driver for interacting with syslog via syslog"
  end

  defp package do
    [files: ~w(src c_src README.md),
     contributors: ["Andrew Thompson"],
     licenses: ["BSD"],
     links: %{"GitHub" => "https://github.com/Vagabond/erlang-syslog"}]
  end

  defp fetch do
    [scm: :git,
     url: "https://github.com/Vagabond/erlang-syslog.git",
     ref: "26d74c89e339297b4c6638d5b578a80fe88170da"]
  end
end
