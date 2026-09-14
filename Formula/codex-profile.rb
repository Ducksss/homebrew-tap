class CodexProfile < Formula
  desc "Named Codex CLI profiles with separate local ChatGPT desktop state"
  homepage "https://github.com/Ducksss/codex-profiles"
  url "https://github.com/Ducksss/codex-profiles/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "10e10af2b5125d09542570fc22c567d0509b0b4f8fe1234efb94d824a9d02012"
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
