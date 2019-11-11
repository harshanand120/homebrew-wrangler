class WranglerCli < Formula
  desc "Wrangle your cloudflare workers"
  homepage "https://workers.cloudflare.com/"
  url "https://github.com/cloudflare/wrangler/releases/download/v1.5.0/wrangler-v1.5.0-x86_64-apple-darwin.tar.gz"
  sha256 "68f51de6725952c42e29bdcf375a776adbb42fb6180d9cd25c0c0002af4329c5"

  devel do
    url "https://github.com/cloudflare/wrangler/releases/download/v1.6.0-rc.0/wrangler-v1.6.0-rc.0-x86_64-apple-darwin.tar.gz"
    sha256 "1894f5cf2061b8a4e96f51261dbd07aefc21cf3f747a3b68e01448d091b41433"
  end

  def install
    bin.install "wrangler"
  end

  test do
    # TODO: Find a better test that won't break on every release.
    version_output = shell_output("#{bin}/wrangler --version")

    assert_includes version_output, "1.5.0" unless build.devel?
    assert_includes version_output, "1.6.0-rc.0" if build.devel?
  end
end
