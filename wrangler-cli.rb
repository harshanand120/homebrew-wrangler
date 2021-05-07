class WranglerCli < Formula
  desc "Wrangle your cloudflare workers"
  homepage "https://workers.cloudflare.com/"
  url "https://github.com/cloudflare/wrangler/releases/download/v1.16.1/wrangler-v1.16.1-x86_64-apple-darwin.tar.gz"
  sha256 "cc404a556a15fbd555bfa0f4e28ac6bc3f7eb8d141c34845239bc0ec6af1fec8"

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

    assert_includes version_output, "1.16.1" unless build.head?
    # assert_includes version_output, "1.11.0-rc.0" if build.head?
  end
end
