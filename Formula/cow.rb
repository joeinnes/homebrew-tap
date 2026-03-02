class Cow < Formula
  desc "Copy-on-write workspace manager for parallel development"
  homepage "https://github.com/joeinnes/cow"
  url "https://github.com/joeinnes/cow/releases/download/v0.1.0/cow-0.1.0.tar.gz"
  sha256 "78e6f746b66104ded0adc9484cd217f3533a0fb42fb00725a37633c3e8c358e3"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "cow"
    man1.install "cow.1"
  end

  test do
    assert_match "cow", shell_output("#{bin}/cow --version")
  end
end
