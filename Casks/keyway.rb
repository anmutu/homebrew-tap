cask "keyway" do
  version "0.2.20"

  on_arm do
    url "https://keyway.one/downloads/Keyway_#{version}_aarch64.dmg"
    sha256 "b28d2251a8207def3a7b4d70aac3d3dd6d65504a43ea2ea3b3dcced4d8a06c79"
  end
  on_intel do
    url "https://keyway.one/downloads/Keyway_#{version}_x64.dmg"
    sha256 "1977508c105b211ae21464a565014cd364a5fa266c01278fae570c5e2e24e5c9"
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
