class Cow < Formula
  desc "Copy-on-write workspace manager for parallel development"
  homepage "https://github.com/joeinnes/cow"
  url "https://github.com/joeinnes/cow/releases/download/v0.1.10/cow-0.1.10.tar.gz"
  sha256 "ad80c37ddb17d573d706bd437a6a34eb23ca84b497a37c75060002454f0e4866"
  version "0.1.10"
  license "MIT"

  def install
    bin.install "cow-universal" => "cow"
    man1.install "cow.1"
  end

  test do
    assert_match "cow", shell_output("#{bin}/cow --version")
  end
end
