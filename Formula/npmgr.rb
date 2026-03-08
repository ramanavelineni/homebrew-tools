class Npmgr < Formula
  desc "CLI for managing Nginx Proxy Manager"
  homepage "https://github.com/ramanavelineni/npmgr"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/npmgr/releases/download/v2.2.0/npmgr_2.2.0_darwin_arm64.tar.gz"
      sha256 "da63999cb6dbf1c19b0856ded8c30175504a1a7985e48b23823e94415bd87472"
    else
      url "https://github.com/ramanavelineni/npmgr/releases/download/v2.2.0/npmgr_2.2.0_darwin_amd64.tar.gz"
      sha256 "4879168f8e6987b3d39f92c60251dbe79702c4c3b31956e9f1d7a9ca3e13d5ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/npmgr/releases/download/v2.2.0/npmgr_2.2.0_linux_arm64.tar.gz"
      sha256 "e5d4e5d0845b4bffa57e3a944dfc48c5331d18580db16f1f83d7f999c2c549dd"
    else
      url "https://github.com/ramanavelineni/npmgr/releases/download/v2.2.0/npmgr_2.2.0_linux_amd64.tar.gz"
      sha256 "0d2ff9edf0988c25df424f87acf55c7d9f8aa15323f5a2ac9e2b6c25c9d9e102"
    end
  end

  def install
    bin.install "npmgr"
  end

  test do
    assert_match "npmgr", shell_output("#{bin}/npmgr version")
  end
end
