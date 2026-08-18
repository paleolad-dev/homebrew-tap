cask "green-dotter" do
  version "2.4.0"
  sha256 "d9446e6a8568137158048682f46cda5035c17338ede38c3fdacf6f7e47db8173"

  url "https://pub-1b4deb96fb394e94b8475c2142a4fa88.r2.dev/updates/#{version}/macos-universal/green-dotter-macos.app.tar.gz",
      verified: "pub-1b4deb96fb394e94b8475c2142a4fa88.r2.dev/"
  name "Green Dotter"
  desc "Keeps the Mac active with cursor movement or clicks in a chosen area"
  homepage "https://green-dotter.com/"

  livecheck do
    url "https://green-dotter.com/"
    regex(/app-version["'>\s]*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  app "Green Dotter.app"

  zap trash: [
    "~/Library/Application Support/com.greendotter.app",
    "~/Library/Preferences/com.greendotter.app.plist",
    "~/Library/Saved Application State/com.greendotter.app.savedState",
  ]
end
