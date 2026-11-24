cask "schmear" do
  version "0.4.0"
  sha256 "8cb87c28cd43e290d32d8f7f274b73a7c0594eaa284b5436a86bdbbd7663d3eb"

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
