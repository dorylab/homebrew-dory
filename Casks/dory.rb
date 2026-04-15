cask "dory" do
  version "0.7.10"

  name "Dory"
  desc "The database manager for modern developers"
  homepage "https://github.com/dorylab/dory"

  if Hardware::CPU.intel?
    url "https://github.com/dorylab/dory/releases/download/v#{version}/Dory-#{version}-x64.dmg"
    sha256 "c0ec9fa374f056b52be38d4299a609990af046b1e37f9b304463cea23cc0373b"
  else
    url "https://github.com/dorylab/dory/releases/download/v#{version}/Dory-#{version}-arm64.dmg"
    sha256 "d7f66eb0c5f3da18465d8b1a3bbed15a451ea479ba9dd81102f16a12c68f0d69"
  end

  app "Dory.app"

  zap trash: [
    "~/Library/Application Support/Dory",
    "~/Library/Preferences/com.dory.app.plist",
    "~/Library/Caches/com.dory.app",
  ]
end
