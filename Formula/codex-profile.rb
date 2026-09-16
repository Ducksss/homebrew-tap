class CodexProfile < Formula
  desc "Named Codex CLI profiles with separate local ChatGPT desktop state"
  homepage "https://github.com/Ducksss/codex-profiles"
  url "https://github.com/Ducksss/codex-profiles/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "9f58674d463310cba067a14dba49fe9e82566b0510285bb2d7da68fa2c0a0e98"
  license "MIT"
  head "https://github.com/Ducksss/codex-profiles.git", branch: "main"

  def install
    bin.install "bin/codex-profile"
    bin.install_symlink bin/"codex-profile" => "codex-profiles"
  end

  test do
    assert_match "#{testpath}/.codex-personal", shell_output("HOME=#{testpath} #{bin}/codex-profile path personal")
    system bin/"codex-profile", "help"
    system bin/"codex-profiles", "version"
  end
end
