defmodule ErlangSyslog.Mixfile do
  use Mix.Project

  def project do
    [app: :syslog,
     version: "1.0.2",
     description: description,
     package: package,
     deps: deps]
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
end
