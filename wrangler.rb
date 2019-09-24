class Wrangler < Formula
  desc "Wrangle your cloudflare workers"
  homepage "https://workers.cloudflare.com/"
  url "https://github.com/cloudflare/wrangler/releases/download/v1.3.1/wrangler-v1.3.1-x86_64-apple-darwin.tar.gz"
  sha256 "7dcc3976e84021bf484f58fb75fbd651eba1c71a255ad85e2cd765b32747901f"

  devel do
    url "https://github.com/cloudflare/wrangler/releases/download/v1.4.0-rc.3/wrangler-v1.4.0-rc.3-x86_64-apple-darwin.tar.gz"
    sha256 "021ce95228a5dd37ac51691d6712cb07147ca386c01847a5d5c9021b3fd442d4"
  end

  def install
    bin.install "wrangler"
  end

  test do
    # TODO: Find a better test that won't break on every release.
    version_output = shell_output("#{bin}/wrangler --version")

    assert_includes version_output, "1.3.1" if not build.devel?
    assert_includes version_output, "1.4.0-rc.3" if build.devel?
  end
end
