cask "green-dotter" do
  version "2.9.1"
  sha256 "52025598e46372c575f9b1c092222152586bb9478a07c0ea6bb81a45ec4e9b4c"

  url "https://pub-1b4deb96fb394e94b8475c2142a4fa88.r2.dev/updates/#{version}/macos-universal/green-dotter-macos.app.tar.gz"
  name "Green Dotter"
  desc "Keeps the computer active with cursor movement or clicks in a chosen area"
  homepage "https://green-dotter.com/"

  livecheck do
    url "https://green-dotter.com/"
    regex(/app-version["'>\s]*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "Green Dotter.app"

  zap trash: [
    "~/Library/Application Support/com.greendotter.app",
    "~/Library/Preferences/com.greendotter.app.plist",
    "~/Library/Saved Application State/com.greendotter.app.savedState",
  ]
end
