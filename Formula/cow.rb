class Cow < Formula
  desc "Copy-on-write workspace manager for parallel development"
  homepage "https://github.com/joeinnes/cow"
  url "https://github.com/joeinnes/cow/releases/download/v0.1.7/cow-0.1.7.tar.gz"
  sha256 "db9653155b1afba3245ea8b0844521880986a997f71793baf4d2cbab1bc6dcbe"
  version "0.1.7"
  license "MIT"

  def install
    bin.install "cow-universal" => "cow"
    man1.install "cow.1"
  end

  test do
    assert_match "cow", shell_output("#{bin}/cow --version")
  end
end
