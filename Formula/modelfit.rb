class Modelfit < Formula
  desc "Detect the best local LLM for your machine (offline, zero-dependency)"
  homepage "https://modelfit.io"
  url "https://registry.npmjs.org/@modelfit/cli/-/modelfit-1.5.1.tgz"
  sha256 "4d055a35eb9235ef1f19723aa55e7edee9642e7c8ed2825c28766dfd1424e716"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelfit --version")
    output = shell_output("#{bin}/modelfit --ram 16 --chip m4 --device macbook-pro --json")
    assert_match "ollamaCommand", output
  end
end
