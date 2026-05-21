class CodexProfile < Formula
  desc "Switch Codex CLI and Desktop accounts with isolated CODEX_HOME profiles"
  homepage "https://github.com/Ducksss/codex-profiles"
  url "https://github.com/Ducksss/codex-profiles/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "b0a3cfdadb1dcadfcd302e7995da68ed109ff8d8d5ae8a5459ee4962152db970"
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
