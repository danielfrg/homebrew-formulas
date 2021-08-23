class Cloudflared < Formula
    desc "Argo Tunnel client"
    homepage "https://github.com/cloudflare/cloudflared"
    url "https://github.com/cloudflare/cloudflared/releases/download/2021.8.2/cloudflared-darwin-amd64.tgz"
    sha256 "72c4624aff1f94ca6c297a63a86dbda44a65ae09e0b5ecb68a1ac4db19ba7b08"

    def install
        bin.install "cloudflared"
    end

    test do
        assert_match "cloudflared:", shell_output("#{bin}/cloudflared --help 2>&1")
    end
end
