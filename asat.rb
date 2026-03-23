class Asat < Formula
  desc "Terminal spreadsheet editor for Vim users — modal editing, 40+ formulas, CSV/XLSX/ODS"
  homepage "https://okt4v.github.io/ASAT/"
  license "GPL-3.0-or-later"
  version "0.1.27"

  on_macos do
    on_arm do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8bd69caf14900e233379ad3f9dbcd64ee26ec2d5e2b53e4ea939718e82d963bc"
    end
    on_intel do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4415faebd3f7a9561570fba832fa7da7fb2fe1b3f055e6c1291d462f76933569"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a6bf4481335ecded3b9360c3a4ca5e4b43b516e3f7f8d82977c6d33a3eab4456"
    end
    on_intel do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d26291b4de1abdbd1f0a331020ad135a3a44cae8def4e87e2f43868fd1d7ab0e"
    end
  end

  def install
    bin.install "asat"
  end

  test do
    system "#{bin}/asat", "--version"
  end
end
