class Schmear < Formula
  desc "Spread delegated agent tasks across your AI subscriptions"
  homepage "https://github.com/kevin1chun/schmear"
  url "https://registry.npmjs.org/schmear/-/schmear-0.3.1.tgz"
  sha256 "bd23e51701e61d90de7e7a8f0f0b65bfecdbb5cc582bf83cbc96cf853aaede9b"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args, "--omit=optional"
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
