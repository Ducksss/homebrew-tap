class CodexProfile < Formula
  desc "Named Codex CLI profiles with separate local ChatGPT desktop state"
  homepage "https://github.com/Ducksss/codex-profiles"
  url "https://github.com/Ducksss/codex-profiles/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "74c84d85c7ad0268dddbab6a0cc7ef15ab77ea396a66255929a586b347058d21"
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
