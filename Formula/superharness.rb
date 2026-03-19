class Superharness < Formula
  desc "Autonomous multi-agent orchestrator for AI coding agents via tmux"
  homepage "https://github.com/backmeupplz/superharness"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.3.2/superharness-x86_64-apple-darwin"
      sha256 "74ab69463680506ed273514bf3840b2b7f8bde4e158df416c8decc74de5857c1"
    end
    on_arm do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.3.2/superharness-aarch64-apple-darwin"
      sha256 "94c46a98fd642832082c9783c09d2407d6cee5eee575ebb22e360a7e601f151a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.3.2/superharness-x86_64-unknown-linux-gnu"
      sha256 "4397e7f5d0fe55318afac6900c69a3b30ff0111358c2a4266daf63e601a30dfe"
    end
    on_arm do
      url "https://github.com/backmeupplz/superharness/releases/download/v0.3.2/superharness-aarch64-unknown-linux-gnu"
      sha256 "080bc8b9a673a9856758194162bbce368ce49dcece9420d67a3f0014b0779af7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "superharness"
  end

  test do
    assert_match "superharness", shell_output("#{bin}/superharness --help")
  end
end
