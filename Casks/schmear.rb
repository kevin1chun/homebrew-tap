cask "schmear" do
  version "0.5.3"
  sha256 "ac158b1a09fcffbe51ff8965dc106b42c316f4cf6d54eb0d1918f06e33564186"

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
