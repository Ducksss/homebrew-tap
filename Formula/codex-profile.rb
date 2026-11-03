class CodexProfile < Formula
  desc "Named Codex CLI profiles with separate local ChatGPT desktop state"
  homepage "https://github.com/Ducksss/codex-profiles"
  url "https://github.com/Ducksss/codex-profiles/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "faadb3d54ba26860b49cc08377b7e4eba5dbb117ecfb84ea03319fa61e2481e6"
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
