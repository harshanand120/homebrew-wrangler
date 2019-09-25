class WranglerCli < Formula
  desc "Wrangle your cloudflare workers"
  homepage "https://workers.cloudflare.com/"
  url "https://github.com/cloudflare/wrangler/releases/download/v1.3.1/wrangler-v1.3.1-x86_64-apple-darwin.tar.gz"
  sha256 "7dcc3976e84021bf484f58fb75fbd651eba1c71a255ad85e2cd765b32747901f"

  devel do
    url "https://github.com/cloudflare/wrangler/releases/download/v1.4.0-rc.4/wrangler-v1.4.0-rc.4-x86_64-apple-darwin.tar.gz"
    sha256 "63fd91053d31ec6612bc56afc3404923a51c12614a7cc1bc3ec57bd9c3008a47"
  end

  def install
    bin.install "wrangler"
  end

  test do
    # TODO: Find a better test that won't break on every release.
    version_output = shell_output("#{bin}/wrangler --version")

    assert_includes version_output, "1.3.1" unless build.devel?
    assert_includes version_output, "1.4.0-rc.4" if build.devel?
  end
end
