class Cow < Formula
  desc "Copy-on-write workspace manager for parallel development"
  homepage "https://github.com/joeinnes/cow"
  url "https://github.com/joeinnes/cow/releases/download/v0.1.4/cow-0.1.4.tar.gz"
  sha256 "93572d66e596a5f87d85988097939f3227ade9fda399cf705ffb26e12545c65d"
  version "0.1.4"
  license "MIT"

  def install
    bin.install "cow-universal" => "cow"
    man1.install "cow.1"
  end

  test do
    assert_match "cow", shell_output("#{bin}/cow --version")
  end
end
