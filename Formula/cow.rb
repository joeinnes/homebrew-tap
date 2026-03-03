class Cow < Formula
  desc "Copy-on-write workspace manager for parallel development"
  homepage "https://github.com/joeinnes/cow"
  url "https://github.com/joeinnes/cow/releases/download/v0.1.3/cow-0.1.3.tar.gz"
  sha256 "b03c2e960329659220dedd52adf9b27b93ad4f02f8111d899a1f97327829ff09"
  version "0.1.3"
  license "MIT"

  def install
    bin.install "cow-universal" => "cow"
    man1.install "cow.1"
  end

  test do
    assert_match "cow", shell_output("#{bin}/cow --version")
  end
end
