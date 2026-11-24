cask "schmear" do
  version "0.3.0"
  sha256 "dfad95100bf2ff68724f00d125f852aeee73be3c51cacf0ba45173b90b01ff32"

  url "https://github.com/kevin1chun/schmear/releases/download/v#{version}/Schmear.zip"
  name "Schmear"
  desc "Menu bar app for schmear: subscription pools, pace, delegations and tiers"
  homepage "https://github.com/kevin1chun/schmear"

  depends_on arch: :arm64
  depends_on formula: "kevin1chun/tap/schmear"
  depends_on macos: :sonoma

  app "Schmear.app"

  uninstall quit: "io.github.kevin1chun.schmear"

  caveats <<~EOS
    To uninstall, run `schmear uninstall` first, then:
      brew uninstall --cask schmear && brew uninstall schmear
  EOS
end
