cask "rectangle-pro" do
  version "2.7.3,129"
  sha256 "4bc5d6d55248700c465a2c1722372e8e44242e22f57a2200169bbfd63fea1af5"

  url "https://rectangleapp.com/pro/downloads/Rectangle%20Pro%20#{version.csv.first}.dmg"
  name "Rectangle Pro"
  desc "Window snapping tool"
  homepage "https://rectangleapp.com/pro"

  livecheck do
    url "https://rectangleapp.com/pro/downloads/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Rectangle Pro.app"

  uninstall quit: "com.knollsoft.Hookshot"

  zap trash: [
    "~/Library/Application Support/Rectangle Pro",
    "~/Library/Caches/com.knollsoft.Hookshot",
    "~/Library/Cookies/com.knollsoft.Hookshot.binarycookies",
    "~/Library/HTTPStorages/com.knollsoft.Hookshot",
    "~/Library/HTTPStorages/com.knollsoft.Hookshot.binarycookies",
    "~/Library/Preferences/com.knollsoft.Hookshot.plist",
  ]
end
