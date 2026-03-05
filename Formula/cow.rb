class Cow < Formula
  desc "Copy-on-write workspace manager for parallel development"
  homepage "https://github.com/joeinnes/cow"
  url "https://github.com/joeinnes/cow/releases/download/v0.1.6/cow-0.1.6.tar.gz"
  sha256 "0a16bc67f816b63faef4d4306c0b29441a79050deb31638ae6a1e1e74d9b1e51"
  version "0.1.6"
  license "MIT"

  def install
    bin.install "cow-universal" => "cow"
    man1.install "cow.1"
  end

  test do
    assert_match "cow", shell_output("#{bin}/cow --version")
  end
end
