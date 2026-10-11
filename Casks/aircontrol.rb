cask "aircontrol" do
  version "0.5.0"
  sha256 "70ddca8a3858e5b77b86ad9c95236135516ad66571974800d7eb6051413c30a4"

  url "https://getaircontrol.vercel.app/AirControl-#{version}.dmg"
  name "AirControl"
  desc "Control your Mac with in-air hand gestures from the webcam — fully on-device"
  homepage "https://getaircontrol.vercel.app"

  depends_on macos: ">= :sonoma"

  app "AirControl.app"

  caveats <<~EOS
    AirControl is a paid app: get a license key at https://getaircontrol.vercel.app
    and paste it the first time the app opens (one activation, then it never
    touches the network again).

    First run: click the hand icon in the menu bar → Enable AirControl,
    allow Camera access, and flip the AirControl switch in
    System Settings → Privacy & Security → Accessibility (the prompt only
    opens the page). Everything runs on-device.
  EOS

  zap trash: [
    "~/Library/Preferences/com.ronaktoprani.aircontrol.plist",
  ]
end
