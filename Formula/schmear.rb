class Schmear < Formula
  desc "Spread delegated agent tasks across your AI subscriptions"
  homepage "https://github.com/kevin1chun/schmear"
  url "https://registry.npmjs.org/schmear/-/schmear-0.3.0.tgz"
  sha256 "5b5b456c2252136721d1a5110b60a099ee371929bc12a516b68d209658823751"
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
