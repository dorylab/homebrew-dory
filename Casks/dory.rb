cask "dory" do
  version "0.22.0"

  name "Dory"
  desc "The database manager for modern developers"
  homepage "https://github.com/dorylab/dory"

  if Hardware::CPU.intel?
    url "https://github.com/dorylab/dory/releases/download/v#{version}/Dory-#{version}-x64.dmg"
    sha256 "774f7ab14560f1331d69b29af7d469623868c4e911c0928cad25bb3568c19ad2"
  else
    url "https://github.com/dorylab/dory/releases/download/v#{version}/Dory-#{version}-arm64.dmg"
    sha256 "80ee8cad99cd08ac72006eb6f5af2070c04faec18b27f9a436078adb714f8565"
  end

  app "Dory.app"

  zap trash: [
    "~/Library/Application Support/Dory",
    "~/Library/Preferences/com.dory.app.plist",
    "~/Library/Caches/com.dory.app",
  ]
end
