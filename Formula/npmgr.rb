class Npmgr < Formula
  desc "CLI for managing Nginx Proxy Manager"
  homepage "https://github.com/ramanavelineni/npmgr"
  version "2.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/npmgr/releases/download/v2.1.0/npmgr_2.1.0_darwin_arm64.tar.gz"
      sha256 "43bc7abfa8d2643486d476eefda557f3463570c1e313958d5c78e6b45ce9e9e9"
    else
      url "https://github.com/ramanavelineni/npmgr/releases/download/v2.1.0/npmgr_2.1.0_darwin_amd64.tar.gz"
      sha256 "5205c5ce56e10f1e6a7ce7e6792375a587f6ecd70ee32bbf0d76eccb4267c868"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/npmgr/releases/download/v2.1.0/npmgr_2.1.0_linux_arm64.tar.gz"
      sha256 "74bc93ee6a8555b478f61c24316a4b851759af3d259289d75ff1caa19e1d901c"
    else
      url "https://github.com/ramanavelineni/npmgr/releases/download/v2.1.0/npmgr_2.1.0_linux_amd64.tar.gz"
      sha256 "340780ed30bebf50a4e346858c556c66e3f92fa9d0fc19f19ec96145ac8a851f"
    end
  end

  def install
    bin.install "npmgr"
  end

  test do
    assert_match "npmgr", shell_output("#{bin}/npmgr version")
  end
end
