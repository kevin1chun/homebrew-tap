class Schmear < Formula
  desc "Spread delegated agent tasks across your AI subscriptions"
  homepage "https://github.com/kevin1chun/schmear"
  url "https://registry.npmjs.org/schmear/-/schmear-0.5.3.tgz"
  sha256 "920adb1a8dce09b11dbfe1bd05eb1d3c251f79d7f9db9f106e1eb6cb99eaeb40"
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
