cask "keyway" do
  version "0.2.21"

  on_arm do
    url "https://keyway.one/downloads/Keyway_#{version}_aarch64.dmg"
    sha256 "f0f6bef9dd48b5c9afbfeb8ab98643ea7ddd9314e5b0a2c5ef7b00dc45ca8125"
  end
  on_intel do
    url "https://keyway.one/downloads/Keyway_#{version}_x64.dmg"
    sha256 "5c531c027eb9d721508421f7fbd6c08a1bc274b3867e56185637a95f7a2dc039"
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
