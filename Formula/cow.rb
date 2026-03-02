class Cow < Formula
  desc "Copy-on-write workspace manager for parallel development"
  homepage "https://github.com/joeinnes/cow"
  url "https://github.com/joeinnes/cow/releases/download/v0.1.1/cow-0.1.1.tar.gz"
  sha256 "9406b185ebe170472a5443127679c802f530982af6625c3d2cec8cb0ff8c2670"
  version "0.1.1"
  license "MIT"

  def install
    bin.install "cow-universal" => "cow"
    man1.install "cow.1"
  end

  test do
    assert_match "cow", shell_output("#{bin}/cow --version")
  end
end
