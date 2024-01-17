cask "devenv" do
  #   arch arm: "arm64", intel: "amd64"
  version "0.2.0"

  name "Devenv Tool"
  desc "Developer environment toolkit"
  homepage "https://github.com/metafeather/tools/"

  # sha256 :no_check
  # sha256 arm: "e84d6b12f97a081ab22461c967d6ed97435fd19163420a0f92370333a50ff8b2",
  #   intel: "e84d6b12f97a081ab22461c967d6ed97435fd19163420a0f92370333a50ff8b2"
  # url "https://github.com/metafeather/tools/releases/download/v#{version}/devenv_#{os}_#{arch}.tar.gz"

  # livecheck do
  #   url :url
  #   strategy :github_latest
  # end

  # binary "devenv"

  # conflicts_with formula: "devenv"
  # deprecate! date: "2023-12-17", because: :discontinued

  depends_on formula: "metafeather/tools/devenv@0.2.0-rc"
  depends_on cask: "trunk-io"

  zap trash: [
    "~/.cache/devenv"
  ]
end
