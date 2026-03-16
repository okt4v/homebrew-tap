class Asat < Formula
  desc "Terminal spreadsheet editor for Vim users — modal editing, 40+ formulas, CSV/XLSX/ODS"
  homepage "https://okt4v.github.io/ASAT/"
  license "GPL-3.0-or-later"
  version "0.1.17"

  on_macos do
    on_arm do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5a854c0e4c8bcb2dcdc8cf3452a200e0e03b421563ed12589ddc90ae354e920b"
    end
    on_intel do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "699d137deec3587f093ff2d75fc823c5fdd502d9fc552f6df2b81be0ef543fe6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fdd999dade38b78a6c637c19530a23296ebec36c2d8e89a55495f70c6a3b3412"
    end
    on_intel do
      url "https://github.com/okt4v/ASAT/releases/download/v#{version}/asat-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae6ce4596915c7247d2b7e3128a35844f850dbc87e2385d9cb71f28c42336930"
    end
  end

  def install
    bin.install "asat"
  end

  test do
    system "#{bin}/asat", "--version"
  end
end
