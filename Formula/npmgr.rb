class Npmgr < Formula
  desc "CLI for managing Nginx Proxy Manager"
  homepage "https://github.com/ramanavelineni/npmgr"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/npmgr/releases/download/v1.0.0/npmgr_1.0.0_darwin_arm64.tar.gz"
      sha256 "c21f661e483660ec63f8184f037da319bee7a3028564adaf0632b05b58d82c49"
    else
      url "https://github.com/ramanavelineni/npmgr/releases/download/v1.0.0/npmgr_1.0.0_darwin_amd64.tar.gz"
      sha256 "e2d10949bcf255d24eceb9197e4b31a501f614db02e20423337b4476e6f1ae28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/npmgr/releases/download/v1.0.0/npmgr_1.0.0_linux_arm64.tar.gz"
      sha256 "5d94ae30d6f1c5aeb8c8ba42c30c89b9180e8468a1bc873e1a241289b57a3c78"
    else
      url "https://github.com/ramanavelineni/npmgr/releases/download/v1.0.0/npmgr_1.0.0_linux_amd64.tar.gz"
      sha256 "b502416352ece3d5f89d5a9f5754b17de6ea2b9518275f694a613dd9fcbbed69"
    end
  end

  def install
    bin.install "npmgr"
  end

  test do
    assert_match "npmgr", shell_output("#{bin}/npmgr version")
  end
end
