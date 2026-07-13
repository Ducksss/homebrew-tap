class CodexProfile < Formula
  desc "Named Codex CLI profiles with separate local ChatGPT desktop state"
  homepage "https://github.com/Ducksss/codex-profiles"
  url "https://github.com/Ducksss/codex-profiles/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "479ce3a4f1a554f844d4fe883497eaf8776f9dc38872d4ea8027e2b00a78d2c4"
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
