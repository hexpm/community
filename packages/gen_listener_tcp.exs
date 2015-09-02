defmodule GenListenerTcp.Mixfile do
  use Mix.Project

  def project do
    [app: :gen_listener_tcp,
     version: "0.3.1",
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
    Generic TCP Server
    """
  end

  defp package do
    [contributors: ["Andreas Schultz", 
                    "Andreas Stenius", 
                    "Dima Aleksandrov", 
                    "Essien Ita Essien", 
                    "Felix Lange", 
                    "Naitik Shah", 
                    "Robin Haberkorn", 
                    "Willy Failla",
                    "Yury Gargay"],
     links: %{"GitHub" => "https://github.com/travelping/gen_listener_tcp"},
     files: ["examples", "src", "tetrapak", "NEWS.md", "README.md", "rebar.config"]]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/travelping/gen_listener_tcp.git",
     tag: "0.3.1"]
  end
end
