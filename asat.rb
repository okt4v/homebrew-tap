class Asat < Formula
  desc "Terminal spreadsheet editor for Vim users — modal editing, 40+ formulas, CSV/XLSX/ODS"
  homepage "https://okt4v.github.io/ASAT/"
  license "GPL-3.0-or-later"
  version "0.1.24"

  on_macos do
    on_arm do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "24b8196c63ab27602935bd4b552eb811c30544fc1c1f197ebe1800ab7ac8dcd1"
    end
    on_intel do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "80d0467bfa62a86c0791337d918b5e3d148ad708359f75103d22d1f7eda36b36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b93c8b6e44c666862155dc39627f5a752d1d195ad6760d387335a6501627cb72"
    end
    on_intel do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e59718a1ee00657d3b7c229056be885dcb3f5ab33f4de241f4cd639dc12d10cd"
    end
  end

  def install
    bin.install "asat"
  end

  test do
    system "#{bin}/asat", "--version"
  end
end
