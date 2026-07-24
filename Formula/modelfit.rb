class Modelfit < Formula
  desc "Detect the best local LLM for your machine (offline, zero-dependency)"
  homepage "https://modelfit.io"
  url "https://registry.npmjs.org/@modelfit/cli/-/modelfit-1.3.3.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
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
