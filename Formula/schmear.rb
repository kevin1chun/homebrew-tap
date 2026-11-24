class Schmear < Formula
  desc "Spread delegated agent tasks across your AI subscriptions"
  homepage "https://github.com/kevin1chun/schmear"
  url "https://registry.npmjs.org/schmear/-/schmear-0.4.0.tgz"
  sha256 "64a07bad803b383f7e5c07d69155eb3f9246d109b400006240b06fd7e6d3bd48"
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
