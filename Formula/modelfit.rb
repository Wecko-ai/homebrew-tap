class Modelfit < Formula
  desc "Detect the best local LLM for your machine (offline, zero-dependency)"
  homepage "https://modelfit.io"
  url "https://registry.npmjs.org/@modelfit/cli/-/cli-1.7.2.tgz"
  sha256 "960a19717eb14f9d8ffd84a9b536ba8ccea6312c04ee0647de4b8d8f87d77694"
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
