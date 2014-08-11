# Hex Community

Hex community are packages the community maintains on Hex.

A package may be maintained by the community because the project authors have not yet published it to Hex.

Community packages are added to this repository as a mixfile with metadata describing the project and how to fetch it. To add a package or add a new version of a package simply send a pull request with the necessary changes to the package mixfile. When the pull request is merged the package will be published.

If your project have been published to Hex through Hex Community and you want to take over ownership send an email to admin@hex.pm with your Hex user details and the admins will transfer the package after verifing your ownership.

## Instructions

Instructions for adding a new package to Hex or releasing a new version of a package.

1. [Fork](https://github.com/hexpm/community/fork)

2. Clone and enter the forked repository `git clone git@github.com:myself/community.git && cd community`

3. Create the package file if it does not exist `touch packages/the_package.exs`

4. Edit the package file (see below for example file) `vim packages/the_package.exs`

5. Check out new branch `git checkout -b add-the_package`

6. Commit `git commit -a -m "Add the_package"`

7. Push `git push -u origin add-the_package`

8. Send [pull request](https://help.github.com/articles/creating-a-pull-request)

When the pull request has been merged the package will be published to Hex.

## Example package file

```elixir
defmodule ThePackage.Mixfile do
  use Mix.Project

  def project do
    [app: :the_package,
     version: "1.2.3",

     deps: deps,
     description: description,
     package: package,
     fetch: fetch]
  end

  # List of Hex dependencies, return empty list if package has no dependencies
  defp deps do
    [{:other_package, "~> 1.0"}]
  end

  defp description do
    """
    A few paragraphs describing of the package.
    """
  end

  defp package do
    [contributors: ["Eric Meadows-Jönsson", "José Valim"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/someone/the_package"},
     file: [...]] # make sure to add all files necessary for mix to compile the package here. (e.g. rebar.config)
  end

  # Metadata for finding the package that will be published
  # Currently the only supported scm is :git
  # A :tag or :ref option is required, it should match the version of the
  # project that should be published
  defp fetch do
    [scm: :git,
     url: "git://github.com/someone/the_package.git",
     tag: "v1.2.3"]
  end
end
```
