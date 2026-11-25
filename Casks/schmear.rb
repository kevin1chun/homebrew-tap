cask "schmear" do
  version "0.5.1"
  sha256 "660daa9afd5c0fb2316c8ab90b008d12b6f4cc42ded544bc9a2f8f88092c9ad5"

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
