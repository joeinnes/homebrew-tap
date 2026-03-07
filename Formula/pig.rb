class Pig < Formula
  desc "PNPM Interactive Groomer — manage package versions across pnpm projects"
  homepage "https://github.com/joeinnes/pig"
  url "https://github.com/joeinnes/pig/releases/download/v0.1.2/pig-0.1.2.tar.gz"
  sha256 "27cc169cbf2f2763a1c7b7e2a8ed20bd7727e93c45b8fb50eb5d80701d534f5d"
  version "0.1.2"
  license "MIT"

  depends_on "node@22"

  def install
    bin.install "pig"
  end

  test do
    assert_match "pig", shell_output("#{bin}/pig --version")
  end
end
