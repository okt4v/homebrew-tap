class Asat < Formula
  desc "Terminal spreadsheet editor for Vim users — modal editing, 40+ formulas, CSV/XLSX/ODS"
  homepage "https://okt4v.github.io/ASAT/"
  license "GPL-3.0-or-later"
  version "0.1.23"

  on_macos do
    on_arm do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "70d77d628cffdf99a966a3934cffb8a454c0237ddb20a600cf0fc7c4732130d4"
    end
    on_intel do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3e6448fcbdd650e578978a00dcc06f7f86a5cac6d7f79756feb7a4ef6388dec8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "819ed5060338839a52c708052f0d0feb6dd5095114e541de2b7a8b06b9363ba3"
    end
    on_intel do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b02bc6936ba64be0aa42f13fc71309854800c0a1ba0aeae5d8ddec3efaac3b5c"
    end
  end

  def install
    bin.install "asat"
  end

  test do
    system "#{bin}/asat", "--version"
  end
end
