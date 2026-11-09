cask "keyway" do
  version "0.2.23"

  on_arm do
    url "https://keyway.one/downloads/Keyway_#{version}_aarch64.dmg"
    sha256 "3c1d3cca8df5131cc3be5d948cb133d32e9939999615f4557cab7f6e7fe32bff"
  end
  on_intel do
    url "https://keyway.one/downloads/Keyway_#{version}_x64.dmg"
    sha256 "235ad07c010958f766b10fa59201408485494fc58a0168b320d74b5026735932"
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
