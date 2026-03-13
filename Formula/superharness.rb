class Superharness < Formula
  desc "Autonomous multi-agent orchestrator for AI coding agents via tmux"
  homepage "https://github.com/backmeupplz/superharness"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.2.1/superharness-x86_64-apple-darwin"
      sha256 "d7281bb5815d67a3694077b46d27a2ca61a36f91bfc78f359ce435d4914d4e21"
    end
    on_arm do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.2.1/superharness-aarch64-apple-darwin"
      sha256 "f95767234867004c05d36a562cfc36bdc81785f2877af9cf7c40132b5d941b2a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.2.1/superharness-x86_64-unknown-linux-gnu"
      sha256 "7f697c2ea78b20a607fbc5f7cfcd3a2ab85e43a8c850d1d848df5b5a60520e75"
    end
    on_arm do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.2.1/superharness-aarch64-unknown-linux-gnu"
      sha256 "41ff5a8be8f0d54d8fbb27c31fbbb3bd39be980f6dce53e7fef0941c8859c7d4"
    end
  end

  def install
    bin.install stable.url.split("/").last => "superharness"
  end

  test do
    assert_match "superharness", shell_output("#{bin}/superharness --help")
  end
end
