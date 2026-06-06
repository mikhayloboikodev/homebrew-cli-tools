class Ftc < Formula
  desc "This simple CLI tool gives users the opportunity to quickly copy file contents"
  homepage "https://github.com/mikhayloboikodev/CLI-Tool-ftc"
  url "https://github.com/mikhayloboikodev/CLI-Tool-ftc/archive/refs/tags/cli.tar.gz", using: :nounzip
  version "1.0.0"
  sha256 "e1c59eb7a3a9bfb7c69c25fca8ddce2d1d372e9ef0fbc3da4a9319e1747af0ed"

  def install

    cd "CLI-Tool-ftc-cli" if buildpath.join("CLI-Tool-ftc-cli").directory?
    
    system "clang", "main.c", "-o", "ftc"
    bin.install "ftc"
  end
end
