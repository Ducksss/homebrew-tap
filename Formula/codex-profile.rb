class CodexProfile < Formula
  desc "Switch Codex CLI and Desktop accounts with isolated CODEX_HOME profiles"
  homepage "https://github.com/Ducksss/codex-profiles"
  url "https://github.com/Ducksss/codex-profiles/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "2d949af33d6b24499b25abf19d25c1fa6d758e35c3e0a649c7872bade90d083b"
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
