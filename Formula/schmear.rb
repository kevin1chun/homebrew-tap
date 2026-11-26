class Schmear < Formula
  desc "Spread delegated agent tasks across your AI subscriptions"
  homepage "https://github.com/kevin1chun/schmear"
  url "https://registry.npmjs.org/schmear/-/schmear-0.6.0.tgz"
  sha256 "0e9adf1e547d3feff57b8fe46ad2b379e49980c4ef33ac39e5c04423fc57b9c8"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  def caveats
    <<~EOS
      Run `schmear init` to connect your agents and subscriptions.
      After `brew upgrade`, run `schmear init --yes` and restart your agents.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/schmear --version")
  end
end
