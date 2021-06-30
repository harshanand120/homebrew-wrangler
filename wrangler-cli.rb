class WranglerCli < Formula
  desc "Wrangle your cloudflare workers"
  homepage "https://workers.cloudflare.com/"
  url "https://github.com/cloudflare/wrangler/releases/download/v1.17.0/wrangler-v1.17.0-x86_64-apple-darwin.tar.gz"
  sha256 "750f3d6b8fb541709f7fbf2d89aa0fe5a55df71442b2dc73afacc67e02e4e336"

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

    assert_includes version_output, "1.17.0" unless build.head?
    # assert_includes version_output, "1.11.0-rc.0" if build.head?
  end
end
