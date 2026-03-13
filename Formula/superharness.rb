class Superharness < Formula
  desc "Autonomous multi-agent orchestrator for AI coding agents via tmux"
  homepage "https://github.com/backmeupplz/superharness"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.2.0/superharness-x86_64-apple-darwin"
      sha256 "835e4f398608e448606e2516ac9be5a0cf14d899ebed36ae11a9147e01475abc"
    end
    on_arm do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.2.0/superharness-aarch64-apple-darwin"
      sha256 "45f433f0abd3111ea5c4b6d2a5458937ee0c5f6360d8e7ac2b0ec2dbc8c1f6d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.2.0/superharness-x86_64-unknown-linux-gnu"
      sha256 "7ed8e3def786a8cfe6e78640f39c03ad91bf890f5affe1086cf125645c83149a"
    end
    on_arm do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.2.0/superharness-aarch64-unknown-linux-gnu"
      sha256 "b57d226db66992d76352c2fb70499fac4aacc3237b20432d4b3dd3e822bdd8e0"
    end
  end

  def install
    bin.install stable.url.split("/").last => "superharness"
  end

  test do
    assert_match "superharness", shell_output("#{bin}/superharness --help")
  end
end
