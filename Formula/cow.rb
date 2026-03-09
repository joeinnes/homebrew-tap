class Cow < Formula
  desc "Copy-on-write workspace manager for parallel development"
  homepage "https://github.com/joeinnes/cow"
  url "https://github.com/joeinnes/cow/releases/download/v0.1.9/cow-0.1.9.tar.gz"
  sha256 "29dcdc297498295f1b9e370c352dbe3e3671be746f7378937113ec28260d1978"
  version "0.1.9"
  license "MIT"

  def install
    bin.install "cow-universal" => "cow"
    man1.install "cow.1"
  end

  test do
    assert_match "cow", shell_output("#{bin}/cow --version")
  end
end
