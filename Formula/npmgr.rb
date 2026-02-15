class Npmgr < Formula
  desc "CLI for managing Nginx Proxy Manager"
  homepage "https://github.com/ramanavelineni/npmgr"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/npmgr/releases/download/v0.1.0/npmgr_0.1.0_darwin_arm64.tar.gz"
      sha256 "6d41137279ae36152d912c4974b56df0f63e0fb9bb0ad412c59e6f0f59deeab2"
    else
      url "https://github.com/ramanavelineni/npmgr/releases/download/v0.1.0/npmgr_0.1.0_darwin_amd64.tar.gz"
      sha256 "54ebde394c1920b0504715d51dfcaec45ce9909f1166e20a0546db9342ca221c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/npmgr/releases/download/v0.1.0/npmgr_0.1.0_linux_arm64.tar.gz"
      sha256 "c5a6af3b8bd2c3a07248caaa6411eac3a45d37d712f7772887ebc4c34ed22122"
    else
      url "https://github.com/ramanavelineni/npmgr/releases/download/v0.1.0/npmgr_0.1.0_linux_amd64.tar.gz"
      sha256 "235653a40e4582ea1a9f80bbb308c00fd9301072358dd2a8433ae27f2dc4da99"
    end
  end

  def install
    bin.install "npmgr"
  end

  test do
    assert_match "npmgr", shell_output("#{bin}/npmgr version")
  end
end
