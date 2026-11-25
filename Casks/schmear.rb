cask "schmear" do
  version "0.5.4"
  sha256 "5e513ebdee8480ef701f9f58aec0400c3395e6b9d6b7b110d2a1badfb61f4ebb"

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
