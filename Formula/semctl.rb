class Semctl < Formula
  desc "CLI for managing Semaphore UI"
  homepage "https://github.com/ramanavelineni/semctl"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/semctl/releases/download/v0.1.0/semctl_0.1.0_darwin_arm64.tar.gz"
      sha256 "508f85ac68ea546c70fb977607d91d10ef90565f4640493aab1e515ed39a298f"
    else
      url "https://github.com/ramanavelineni/semctl/releases/download/v0.1.0/semctl_0.1.0_darwin_amd64.tar.gz"
      sha256 "128fc2ae10bcc1beab38537f5ac9bc998b4057a2e1828adc105d4e9ed0f0ca91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/semctl/releases/download/v0.1.0/semctl_0.1.0_linux_arm64.tar.gz"
      sha256 "a0d39dc3dd8ce14b606852db29a4b040c7916035ab050fc89da6941293ad7492"
    else
      url "https://github.com/ramanavelineni/semctl/releases/download/v0.1.0/semctl_0.1.0_linux_amd64.tar.gz"
      sha256 "5a6fe1b6755cc86c9d01d77e76ca59325fb315e05808d3ef5977054a1dbccd8e"
    end
  end

  def install
    bin.install "semctl"
  end

  test do
    assert_match "semctl", shell_output("#{bin}/semctl version")
  end
end
