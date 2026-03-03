class Cow < Formula
  desc "Copy-on-write workspace manager for parallel development"
  homepage "https://github.com/joeinnes/cow"
  url "https://github.com/joeinnes/cow/releases/download/v0.1.2/cow-0.1.2.tar.gz"
  sha256 "0434db8c97fb1126babebfb8ba8cb4d82d4b086ba1f8e64e403b3a7970912653"
  version "0.1.2"
  license "MIT"

  def install
    bin.install "cow-universal" => "cow"
    man1.install "cow.1"
  end

  test do
    assert_match "cow", shell_output("#{bin}/cow --version")
  end
end
