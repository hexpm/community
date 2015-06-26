defmodule Pgsql.Mixfile do
  use Mix.Project

  def project do
    [app: :pgsql,
     version: "25",
     language: :erlang,

     deps: deps,
     description: description,
     package: package,
     fetch: fetch]
  end

  # List of Hex dependencies, return empty list if package has no dependencies
  defp deps do
    []
  end

  defp description do
    """
    Erlang PostgreSQL Driver

    This driver is an OTP-compliant PostgreSQL driver. Connections are OTP-supervised processes.

    This implementation was initially inspired and derived from existing database drivers, and especially Will Glozer's and Christian Sunesson's PostgreSQL drivers, yet has eventually little in common with those. API and features are different.

    In particular, this driver has the following features:

    OTP-supervision and OTP-upgrades;
    * transparently handling many PostgreSQL types, including arrays, numerics and geometric types;
    * cancellation of running queries using out-of-band protocol;
    * SSL support;
    * timeout for queries;
    * iteration on results using protocol-level implicit portals and cursors, with fold, map and foreach;
    * mapping of types to Erlang using a mapping of known types, handling new types that may arise through the life of the connection (this feature is an improvement of oidmap handling in Christian Sunesson's driver);
    * handling both floating point and integer datetimes (this feature is an improvement of timestamp handling in Will Glozer's driver).
    """
  end

  defp package do
    [contributors: ["Paul Guyot"],
     licenses: ["BSD"],
     links: %{"GitHub" => "https://github.com/semiocast/pgsql"},
     files: ~w(src LICENSE README.md rebar.config rebar.config.script)
  end

  # Metadata for finding the package that will be published
  # Currently the only supported scm is :git
  # A :tag or :ref option is required, it should match the version of the
  # project that should be published
  defp fetch do
    [scm: :git,
     url: "git://github.com/semiocast/pgsql.git",
     tag: "25"]
  end
end

