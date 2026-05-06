class CodexProfile < Formula
  desc "Switch Codex CLI and Desktop accounts with isolated CODEX_HOME profiles"
  homepage "https://github.com/Ducksss/codex-profiles"
  url "https://github.com/Ducksss/codex-profiles/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b4d72ee1fff17e5eaf399b2303d558ee03140eb48ac1246101d8efc04221cb65"
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
