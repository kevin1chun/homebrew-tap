cask "schmear" do
  version "0.2.1"
  sha256 "e60f0730b89e7c2bffa2c12e93669f14033e06cec623042cac925f549c5c0113"

  url "https://github.com/kevin1chun/schmear/releases/download/v#{version}/Schmear.zip"
  name "Schmear"
  desc "Menu bar app for schmear: subscription pools, pace, delegations and tiers"
  homepage "https://github.com/kevin1chun/schmear"

  depends_on arch: :arm64
  depends_on macos: :sonoma
  depends_on formula: "kevin1chun/tap/schmear"

  app "Schmear.app"

  uninstall quit: "io.github.kevin1chun.schmear"

  caveats <<~EOS
    Run `schmear init` to connect your agents and subscriptions.
    To uninstall, run `schmear uninstall` first, then:
      brew uninstall --cask schmear && brew uninstall schmear
  EOS
end
