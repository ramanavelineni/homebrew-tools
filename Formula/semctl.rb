class Semctl < Formula
  desc "CLI for managing Semaphore UI"
  homepage "https://github.com/ramanavelineni/semctl"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/semctl/releases/download/v0.11.0/semctl_0.11.0_darwin_arm64.tar.gz"
      sha256 "daed2f021fd258552183ef2161f02c97fe322ce854214f222036c6d2a30a1714"
    else
      url "https://github.com/ramanavelineni/semctl/releases/download/v0.11.0/semctl_0.11.0_darwin_amd64.tar.gz"
      sha256 "e01862b136fb3711488d95ac68569f3a9bc14123a50b4a8ea604cd059650ab91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/semctl/releases/download/v0.11.0/semctl_0.11.0_linux_arm64.tar.gz"
      sha256 "aa0a29bed9c3d3934d8f1b50c982f66db090ac5f1b1193ad8758c2848b47c668"
    else
      url "https://github.com/ramanavelineni/semctl/releases/download/v0.11.0/semctl_0.11.0_linux_amd64.tar.gz"
      sha256 "f87c076c7f7e6cca23761a4ba646f49337892207364d845c735ad53b6b2dbbc5"
    end
  end

  def install
    bin.install "semctl"
  end

  test do
    assert_match "semctl", shell_output("#{bin}/semctl version")
  end
end
