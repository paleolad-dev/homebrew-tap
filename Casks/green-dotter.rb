cask "green-dotter" do
  version "2.5.0"
  sha256 "edff73c606fc6d497b9d40fe208e0946e1c73abb65b6bd87f57f5ceaba7a7453"

  url "https://pub-1b4deb96fb394e94b8475c2142a4fa88.r2.dev/updates/#{version}/macos-universal/green-dotter-macos.app.tar.gz",
      verified: "pub-1b4deb96fb394e94b8475c2142a4fa88.r2.dev/"
  name "Green Dotter"
  desc "Keeps the computer active with cursor movement or clicks in a chosen area"
  homepage "https://green-dotter.com/"

  livecheck do
    url "https://green-dotter.com/"
    regex(/app-version["'>\s]*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :big_sur

  app "Green Dotter.app"

  zap trash: [
    "~/Library/Application Support/com.greendotter.app",
    "~/Library/Preferences/com.greendotter.app.plist",
    "~/Library/Saved Application State/com.greendotter.app.savedState",
  ]
end
