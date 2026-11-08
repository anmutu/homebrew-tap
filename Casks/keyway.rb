cask "keyway" do
  version "0.2.18"

  on_arm do
    url "https://keyway.one/downloads/Keyway_#{version}_aarch64.dmg"
    sha256 "80067f07781a3e974dbbcfca15152a0e8c39ae718f7808d1654fa544d1d0b48c"
  end
  on_intel do
    url "https://keyway.one/downloads/Keyway_#{version}_x64.dmg"
    sha256 "3f01a1e31b96398791a4321a05a2feeac59a44ce4b3ee4c685d5ae09e1717a7b"
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
