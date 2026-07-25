class Modelfit < Formula
  desc "Detect the best local LLM for your machine (offline, zero-dependency)"
  homepage "https://modelfit.io"
  url "https://registry.npmjs.org/@wecko-ai/modelfit/-/modelfit-1.4.1.tgz"
  sha256 "2cbc89bcbe003ac7006ac01933f8c166ba190b69f52c038e59584a01542794c6"
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
