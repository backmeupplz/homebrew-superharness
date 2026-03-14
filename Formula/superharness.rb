class Superharness < Formula
  desc "Autonomous multi-agent orchestrator for AI coding agents via tmux"
  homepage "https://github.com/backmeupplz/superharness"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.3.0/superharness-x86_64-apple-darwin"
      sha256 "a4018bcb40b2cde8bf8e8e770f7acc390eb447c8d1c36b96e29868bfb3006acc"
    end
    on_arm do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.3.0/superharness-aarch64-apple-darwin"
      sha256 "e9cf96e76fbf851a987fd6a91b7e8f00086072759002d167d5235eeaf9f81c0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.3.0/superharness-x86_64-unknown-linux-gnu"
      sha256 "7183b5a03c341f73265988466284517f82dd52e858887956028f95529966b407"
    end
    on_arm do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.3.0/superharness-aarch64-unknown-linux-gnu"
      sha256 "17d4d30f9af0e95fdcd7efcde1b8ad18d49f3c1fb50f090c05f0b67269c02002"
    end
  end

  def install
    bin.install stable.url.split("/").last => "superharness"
  end

  test do
    assert_match "superharness", shell_output("#{bin}/superharness --help")
  end
end
