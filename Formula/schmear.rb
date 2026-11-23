class Schmear < Formula
  desc "Spread delegated agent tasks across your AI subscriptions"
  homepage "https://github.com/kevin1chun/schmear"
  url "https://registry.npmjs.org/schmear/-/schmear-0.2.1.tgz"
  sha256 "1ed88e2beebb964bf11fd8d52bae8b19819f8143a23f59a15be1e14764d90daa"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args, "--omit=optional"
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/schmear --version")
  end
end
