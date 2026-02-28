class Ptm < Formula
  desc "Personal Task Manager - CLI and TUI for managing tasks, projects, and workspaces"
  homepage "https://github.com/ramanavelineni/ptm"
  version "0.1.0-rc.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/ptm/releases/download/v0.1.0-rc.1/ptm_0.1.0-rc.1_darwin_arm64.tar.gz"
      sha256 "f9595a976ddea15fd1ec37899e4eacb67004d794670d561c82b4ac4e1d5a9e2e"
    else
      url "https://github.com/ramanavelineni/ptm/releases/download/v0.1.0-rc.1/ptm_0.1.0-rc.1_darwin_amd64.tar.gz"
      sha256 "8a57cf1fcf6a6bbb5b77a716f9de028de87f874685757def53fb9ad0e52c3b2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ramanavelineni/ptm/releases/download/v0.1.0-rc.1/ptm_0.1.0-rc.1_linux_arm64.tar.gz"
      sha256 "08f0b572d358acac59570b2b1651c6f791d83a27efadb25ec1f306d031ce1261"
    else
      url "https://github.com/ramanavelineni/ptm/releases/download/v0.1.0-rc.1/ptm_0.1.0-rc.1_linux_amd64.tar.gz"
      sha256 "c16eafc26f26b0f3e5826d5970bf53c3ae778cd9e92806131bfc4ab0119b7c04"
    end
  end

  def install
    bin.install "ptm"
  end

  test do
    assert_match "ptm version", shell_output("#{bin}/ptm version")
  end
end
