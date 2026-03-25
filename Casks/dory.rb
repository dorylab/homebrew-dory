cask "dory" do
  version "0.5.1"

  name "Dory"
  desc "The database manager for modern developers"
  homepage "https://github.com/dorylab/dory"

  if Hardware::CPU.intel?
    url "https://github.com/dorylab/dory/releases/download/v#{version}/Dory-#{version}-x64.dmg"
    sha256 "24e010db12069dbf61eb822a643c50a7079046201404ca7f455adef06158af2c"
  else
    url "https://github.com/dorylab/dory/releases/download/v#{version}/Dory-#{version}-arm64.dmg"
    sha256 "999e5982acec11b380e35e9eb4feb0903d24a72ff0cae99f4ae0140c92d43be3"
  end

  app "Dory.app"

  zap trash: [
    "~/Library/Application Support/Dory",
    "~/Library/Preferences/com.dory.app.plist",
    "~/Library/Caches/com.dory.app",
  ]
end
