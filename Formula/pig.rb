class Pig < Formula
  desc "PNPM Interactive Groomer — manage package versions across pnpm projects"
  homepage "https://github.com/joeinnes/pig"
  url "https://github.com/joeinnes/pig/releases/download/v0.1.0/pig-0.1.0.tar.gz"
  sha256 "64756c6c09f24d73da59066dcb4ab51b7c124ec04126c5b90207aebf41a240c9"
  version "0.1.0"
  license "MIT"

  depends_on "node@22"

  def install
    bin.install "pig"
  end

  test do
    assert_match "pig", shell_output("#{bin}/pig --version")
  end
end
