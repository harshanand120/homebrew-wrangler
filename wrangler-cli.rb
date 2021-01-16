class WranglerCli < Formula
  desc "Wrangle your cloudflare workers"
  homepage "https://workers.cloudflare.com/"
  url "https://github.com/cloudflare/wrangler/releases/download/v1.13.0/wrangler-v1.13.0-x86_64-apple-darwin.tar.gz"
  sha256 "826513cf8f5d9e223797f1a297dc7e8a23a370ddfea1fa33817cda86e3f5556a"

  # head do
  #   url "https://github.com/cloudflare/wrangler/releases/download/v1.11.0-rc.0/wrangler-v1.11.0-rc.0-x86_64-apple-darwin.tar.gz"
  #   sha256 "8b94218a21cf010e112c15b34f3c0057f75f69f045082e2a707058c26c231230"
  # end

  def install
    bin.install "wrangler"
  end

  test do
    # TODO: Find a better test that won't break on every release.
    version_output = shell_output("#{bin}/wrangler --version")

    assert_includes version_output, "1.12.3" unless build.head?
    # assert_includes version_output, "1.11.0-rc.0" if build.head?
  end
end
