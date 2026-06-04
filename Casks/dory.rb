cask "dory" do
  version "0.21.3"

  name "Dory"
  desc "The database manager for modern developers"
  homepage "https://github.com/dorylab/dory"

  if Hardware::CPU.intel?
    url "https://github.com/dorylab/dory/releases/download/v#{version}/Dory-#{version}-x64.dmg"
    sha256 "9a5b8d0de207ef6bbb2d52d390716d8ca6e6cd78b055d2c25d5256c801232b08"
  else
    url "https://github.com/dorylab/dory/releases/download/v#{version}/Dory-#{version}-arm64.dmg"
    sha256 "3f1b97fd2036033e4834f03a21b2227dcc8d454733541e99c7f8e2f7999cb679"
  end

  app "Dory.app"

  zap trash: [
    "~/Library/Application Support/Dory",
    "~/Library/Preferences/com.dory.app.plist",
    "~/Library/Caches/com.dory.app",
  ]
end
