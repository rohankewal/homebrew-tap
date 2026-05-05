class Pom < Formula
  desc "A focused Pomodoro timer for your terminal — analytics, themes, lo-fi music, and tmux integration"
  homepage "https://github.com/rohankewal/pom"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rohankewal/pom/releases/download/v0.1.0/pom_darwin_arm64.tar.gz"
      sha256 "8ec8508e790e2e1ebec3a96f92259c66c8df2daa6e956c62618c8d9b82e2d128"
    end
    on_intel do
      url "https://github.com/rohankewal/pom/releases/download/v0.1.0/pom_darwin_amd64.tar.gz"
      sha256 "77c6c689ca6ca474538bced92336d499a9d0fa68ddd0ffe85f84731a81a322b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rohankewal/pom/releases/download/v0.1.0/pom_linux_arm64.tar.gz"
      sha256 "fe961ba0eb59b8c3118a168842597b6797531baddc3d89d5e3fa158bb497c063"
    end
    on_intel do
      url "https://github.com/rohankewal/pom/releases/download/v0.1.0/pom_linux_amd64.tar.gz"
      sha256 "a8b0d8f1e2968b12925244a9058adbe276761d565e816fd02d114e51a757426f"
    end
  end

  def install
    bin.install "pom"
  end

  test do
    assert_match "pom v0.1.0", shell_output("#{bin}/pom --version")
  end
end
