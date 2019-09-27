class WranglerCli < Formula
  desc "Wrangle your cloudflare workers"
  homepage "https://workers.cloudflare.com/"
  url "https://github.com/cloudflare/wrangler/releases/download/v.1.4.0/wrangler-v1.4.0-x86_64-apple-darwin.tar.gz"
  sha256 "19ecfd7b024bc294eed5154a58cc2bdcb34959472ad003c3529db1dadf01566a"

  devel do
    url "https://github.com/cloudflare/wrangler/releases/download/v1.4.0-rc.7/wrangler-v1.4.0-rc.7-x86_64-apple-darwin.tar.gz"
    sha256 "b7639b25270863cc1ae038c43e774b6f9c045b5aeb9f6a9e74cfe5b94e4fca45"
  end

  def install
    bin.install "wrangler"
  end

  test do
    # TODO: Find a better test that won't break on every release.
    version_output = shell_output("#{bin}/wrangler --version")

    assert_includes version_output, "1.4.0" unless build.devel?
    assert_includes version_output, "1.4.0-rc.7" if build.devel?
  end
end
