class WranglerCli < Formula
  desc "Wrangle your cloudflare workers"
  homepage "https://workers.cloudflare.com/"
  url "https://github.com/cloudflare/wrangler/releases/download/v1.12.3/wrangler-v1.12.3-x86_64-apple-darwin.tar.gz"
  sha256 "deb108e37cb5d9b3a7f04cd716ed97286b458e66e74f6ba88e38e2461d809a68"

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
