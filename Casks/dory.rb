cask "dory" do
  version "0.24.2"

  name "Dory"
  desc "The database manager for modern developers"
  homepage "https://github.com/dorylab/dory"

  if Hardware::CPU.intel?
    url "https://github.com/dorylab/dory/releases/download/v#{version}/Dory-#{version}-x64.dmg"
    sha256 "9585ef414ad61c6867bb6cdd0d53feb3bd714cc3a85324f4effc63e913ad6859"
  else
    url "https://github.com/dorylab/dory/releases/download/v#{version}/Dory-#{version}-arm64.dmg"
    sha256 "c9f4ce18ac622a5132529582d5000ab397197ff26d4017c599ae3edc3bb822d6"
  end

  app "Dory.app"

  zap trash: [
    "~/Library/Application Support/Dory",
    "~/Library/Preferences/com.dory.app.plist",
    "~/Library/Caches/com.dory.app",
  ]
end
