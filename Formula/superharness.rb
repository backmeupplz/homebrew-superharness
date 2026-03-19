class Superharness < Formula
  desc "Autonomous multi-agent orchestrator for AI coding agents via tmux"
  homepage "https://github.com/backmeupplz/superharness"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.3.3/superharness-x86_64-apple-darwin"
      sha256 "1bde50d197c4fc200e31c52c2a37a7d98ae60ff2f06328ff4f1bfbe0f9a7c604"
    end
    on_arm do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.3.3/superharness-aarch64-apple-darwin"
      sha256 "7cf9b99ab785ef14236bd4723721c52eb18a2a5029ebace5bbc45fddfa1c790b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.3.3/superharness-x86_64-unknown-linux-gnu"
      sha256 "7ce4b6a063d9189fc45ec63316ff0dabe44eae411836e69d6a6802e2aeedbaf8"
    end
    on_arm do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.3.3/superharness-aarch64-unknown-linux-gnu"
      sha256 "29d8b7a94a0fa4660f04651b5eacfe539cfcd5eefc351e584857b8352b393c62"
    end
  end

  def install
    bin.install stable.url.split("/").last => "superharness"
  end

  test do
    assert_match "superharness", shell_output("#{bin}/superharness --help")
  end
end
