class Npmgr < Formula
  desc "CLI for managing Nginx Proxy Manager"
  homepage "https://github.com/ramanavelineni/npmgr"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/npmgr/releases/download/v1.0.0/npmgr_1.0.0_darwin_arm64.tar.gz"
      sha256 "4f7abec90df8ee2964e1aa06aee0fac83119a329af2132317f2033e14eb8e89d"
    else
      url "https://github.com/ramanavelineni/npmgr/releases/download/v1.0.0/npmgr_1.0.0_darwin_amd64.tar.gz"
      sha256 "42bc5e0ff84c334bbdbfa6d89838453b088b5c8de4e8f5df7cace810b4afaf70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/npmgr/releases/download/v1.0.0/npmgr_1.0.0_linux_arm64.tar.gz"
      sha256 "404fc9178cecc0fda1518bfde406d1571c174dc75b2f62436edec71d4bc3f41d"
    else
      url "https://github.com/ramanavelineni/npmgr/releases/download/v1.0.0/npmgr_1.0.0_linux_amd64.tar.gz"
      sha256 "3414c5d83dffc24699a48036f344abc419d2b1163480e2d65fa56abd639bd64b"
    end
  end

  def install
    bin.install "npmgr"
  end

  test do
    assert_match "npmgr", shell_output("#{bin}/npmgr version")
  end
end
