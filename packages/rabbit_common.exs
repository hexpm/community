defmodule RabbitCommon.Mixfile do
  use Mix.Project

  def project do
    [app: :rabbit_common,
     version: "3.5.0",

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
    Includes modules which are a runtime dependency of the RabbitMQ/AMQP Erlang client and
    are common to the RabbitMQ server.
    """
  end

  defp package do
    [contributors: ["Jon Brisbin"],
     licenses: ["MPL 1.1"],
     links: %{"GitHub" => "https://github.com/jbrisbin/rabbit_common"},
     files: ["src", "include", "README.md", "LICENSE-MPL-RabbitMQ", "LICENSE", "rebar.config"]]
  end

  # Metadata for finding the package that will be published
  # Currently the only supported scm is :git
  # A :tag or :ref option is required, it should match the version of the
  # project that should be published
  defp fetch do
    [scm: :git,
     url: "git://github.com/jbrisbin/rabbit_common.git",
     tag: "rabbitmq-3.5.0"]
  end
end
