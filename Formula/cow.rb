class Cow < Formula
  desc "Copy-on-write workspace manager for parallel development"
  homepage "https://github.com/joeinnes/cow"
  url "https://github.com/joeinnes/cow/releases/download/v0.1.5/cow-0.1.5.tar.gz"
  sha256 "ef89db1592129a3b59a192dd1fc4b87137256c90379e4865b85324e17dc8cdd0"
  version "0.1.5"
  license "MIT"

  def install
    bin.install "cow-universal" => "cow"
    man1.install "cow.1"
  end

  test do
    assert_match "cow", shell_output("#{bin}/cow --version")
  end
end
