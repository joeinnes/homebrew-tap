class Pig < Formula
  desc "PNPM Interactive Groomer — manage package versions across pnpm projects"
  homepage "https://github.com/joeinnes/pig"
  url "https://github.com/joeinnes/pig/releases/download/v0.1.1/pig-0.1.1.tar.gz"
  sha256 "1fb843858f551a526bdae20f69a28b6c352a9915cc8e44c3f06674ba4fe7c343"
  version "0.1.1"
  license "MIT"

  depends_on "node@22"

  def install
    bin.install "pig"
  end

  test do
    assert_match "pig", shell_output("#{bin}/pig --version")
  end
end
