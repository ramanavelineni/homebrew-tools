class Semctl < Formula
  desc "CLI for managing Semaphore UI"
  homepage "https://github.com/ramanavelineni/semctl"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/semctl/releases/download/v0.2.0/semctl_0.2.0_darwin_arm64.tar.gz"
      sha256 "07383ae5410b85cd53d4d3493a174938a560c278c4f14ff092f18c26ebca699e"
    else
      url "https://github.com/ramanavelineni/semctl/releases/download/v0.2.0/semctl_0.2.0_darwin_amd64.tar.gz"
      sha256 "0960dcb9e09b19a8d6022367591d40d61f079d94bc8dbd5b337a4c56a6514cb1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/semctl/releases/download/v0.2.0/semctl_0.2.0_linux_arm64.tar.gz"
      sha256 "5b273972e31ed09bb62cea132dda2eb6121e682fb123f6f4e243bc85bccc396b"
    else
      url "https://github.com/ramanavelineni/semctl/releases/download/v0.2.0/semctl_0.2.0_linux_amd64.tar.gz"
      sha256 "7912277de8907265aed7c4ed47bf5d7234809b053e69c860e49725b2e8823d41"
    end
  end

  def install
    bin.install "semctl"
  end

  test do
    assert_match "semctl", shell_output("#{bin}/semctl version")
  end
end
