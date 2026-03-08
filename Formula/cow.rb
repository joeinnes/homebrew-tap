class Cow < Formula
  desc "Copy-on-write workspace manager for parallel development"
  homepage "https://github.com/joeinnes/cow"
  url "https://github.com/joeinnes/cow/releases/download/v0.1.8/cow-0.1.8.tar.gz"
  sha256 "914b1461ea7a09ea239f96c683b1314aeb1858efca0ea9da6b6f596949b9f8bc"
  version "0.1.8"
  license "MIT"

  def install
    bin.install "cow-universal" => "cow"
    man1.install "cow.1"
  end

  test do
    assert_match "cow", shell_output("#{bin}/cow --version")
  end
end
