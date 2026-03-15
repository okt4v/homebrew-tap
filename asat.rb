class Asat < Formula
  desc "Terminal spreadsheet editor for Vim users — modal editing, 40+ formulas, CSV/XLSX/ODS"
  homepage "https://okt4v.github.io/ASAT/"
  license "GPL-3.0-or-later"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ba58399684177d8d4d9421d53a8932ccd3555c693ef1001ec511e62084a39220"
    end
    on_intel do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2567929487f8f51d3b8f75f84ee8c6b58c0901851cb1e47c220c16a15f786db7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "532fd1b9e81d952d5d00072b043650bc731dcb99c6d42806650ecd23cedc12e9"
    end
    on_intel do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "455900fc9e7d4612a8422fb301860cad01823f83292e2dee3c54ec1f78eecce4"
    end
  end

  def install
    bin.install "asat"
  end

  test do
    system "#{bin}/asat", "--version"
  end
end
