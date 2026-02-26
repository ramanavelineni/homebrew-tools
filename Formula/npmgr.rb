class Npmgr < Formula
  desc "CLI for managing Nginx Proxy Manager"
  homepage "https://github.com/ramanavelineni/npmgr"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/npmgr/releases/download/v2.0.0/npmgr_2.0.0_darwin_arm64.tar.gz"
      sha256 "7653d87e4036d308e1117733e6545e0742749486c69e38a72830806671a28de6"
    else
      url "https://github.com/ramanavelineni/npmgr/releases/download/v2.0.0/npmgr_2.0.0_darwin_amd64.tar.gz"
      sha256 "f5f806bc7a0d829892cfaad20d4128d1ea0217548c016c6d9394cd0a1d53972a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/npmgr/releases/download/v2.0.0/npmgr_2.0.0_linux_arm64.tar.gz"
      sha256 "92db2f08d5ada785302d3eaf937552874750741914a3485ededde049341c898b"
    else
      url "https://github.com/ramanavelineni/npmgr/releases/download/v2.0.0/npmgr_2.0.0_linux_amd64.tar.gz"
      sha256 "193e4d686a5f7c2cf12df9d1058cd62247a6f14b4ba18d925813179ec04abcbc"
    end
  end

  def install
    bin.install "npmgr"
  end

  test do
    assert_match "npmgr", shell_output("#{bin}/npmgr version")
  end
end
