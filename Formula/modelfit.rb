class Modelfit < Formula
  desc "Detect the best local LLM for your machine (offline, zero-dependency)"
  homepage "https://modelfit.io"
  url "https://registry.npmjs.org/@modelfit/cli/-/cli-1.7.0.tgz"
  sha256 "2ebfdd7a6a9e31ab98b2dbae1dfa260719a20292fa1f671e7ec68a918859e9eb"
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
