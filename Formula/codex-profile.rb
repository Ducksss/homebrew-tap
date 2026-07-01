class CodexProfile < Formula
  desc "Switch Codex CLI and Desktop accounts with isolated CODEX_HOME profiles"
  homepage "https://github.com/Ducksss/codex-profiles"
  url "https://github.com/Ducksss/codex-profiles/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "1aec20c0d484e8cf835b250df3e9d6e8a4d5c0dcf173e80008b1a5d0429deb39"
  license "MIT"
  head "https://github.com/Ducksss/codex-profiles.git", branch: "main"

  def install
    bin.install "bin/codex-profile"
  end

  test do
    assert_match "#{testpath}/.codex-personal", shell_output("HOME=#{testpath} #{bin}/codex-profile path personal")
    system bin/"codex-profile", "help"
  end
end
