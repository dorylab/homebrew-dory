cask "dory" do
  version "0.4.10"

  name "Dory"
  desc "The database manager for modern developers"
  homepage "https://github.com/dorylab/dory"

  url "https://github.com/dorylab/dory/releases/download/v#{version}/Dory-#{version}-arm64.dmg"
  sha256 "e15d8f796f69a4ae4b3071dcc658c3b06400f3facbd8dd84743ca5beb1c362ad"

  depends_on arch: :arm64

  app "Dory.app"

  zap trash: [
    "~/Library/Application Support/Dory",
    "~/Library/Preferences/com.dory.app.plist",
    "~/Library/Caches/com.dory.app",
  ]
end
