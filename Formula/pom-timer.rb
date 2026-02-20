class PomTimer < Formula
  desc "A developer-focused pomodoro CLI with lifecycle hooks, git integration, and focus scoring"
  homepage "https://github.com/rohankewal/pom-timer"
  url "https://github.com/rohankewal/pom-timer/releases/download/v1.0.0/pom-timer-1.0.0.tar.gz"
  sha256 "6802e91afa84ae02f24b93120807703c7ab22e3f42f31bd0e936689d132f2ad5"
  license "MIT"

  depends_on "node"

  def install
    bin.install "pom"
  end

  test do
    assert_match "pom 1.0", shell_output("#{bin}/pom --version")
  end
end
