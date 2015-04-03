defmodule AMQPClient.Mixfile do
  use Mix.Project

  def project do
    [app: :amqp_client,
     version: "3.5.0",

     deps: deps,
     description: description,
     package: package,
     fetch: fetch]
  end

  defp deps do
    [{:rabbit_common, "~> 3.5.0"}]
  end

  defp description do
    """
    Erlang RabbitMQ/AMQP client.
    """
  end

  defp package do
    [contributors: ["Jon Brisbin"],
     licenses: ["MPL 1.1"],
     links: %{"GitHub" => "https://github.com/jbrisbin/amqp_client"},
     files: ["src", "include", "README.md", "rebar.config"]]
  end

  # Metadata for finding the package that will be published
  # Currently the only supported scm is :git
  # A :tag or :ref option is required, it should match the version of the
  # project that should be published
  defp fetch do
    [scm: :git,
     url: "git://github.com/jbrisbin/amqp_client.git",
     tag: "rabbitmq-3.5.0"]
  end
end
