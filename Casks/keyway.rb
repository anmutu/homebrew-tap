cask "keyway" do
  version "0.2.19"

  on_arm do
    url "https://keyway.one/downloads/Keyway_#{version}_aarch64.dmg"
    sha256 "e4909b162d3ce73c69f8dcb69c6c2c866b1a4590fb8d03c7d3ac8be6a25b53fe"
  end
  on_intel do
    url "https://keyway.one/downloads/Keyway_#{version}_x64.dmg"
    sha256 "32289dadfc8666f7c92c7ff912d534a3783514240dfc2211f5de4fb0a0026244"
  end

  name "Keyway"
  desc "Local gateway for AI coding CLIs — switch providers without restarting sessions"
  homepage "https://keyway.one"

  auto_updates true
  depends_on macos: :ventura

  app "Keyway.app"

  zap trash: [
    "~/Library/Application Support/com.conduit.desktop",
    "~/Library/Caches/com.conduit.desktop",
    "~/Library/Preferences/com.conduit.desktop.plist",
    "~/Library/Saved Application State/com.conduit.desktop.savedState",
  ]
end
