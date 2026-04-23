# Formula/ezed.rb
class Ezed < Formula
  desc "A simple text editor made in Rust"
  homepage "https://github.com/vxblnso-arch/EzEd"
  url "https://github.com/vxblnso-arch/EzEd/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8572cb1c4fdc60565ffbff14e34169c3f0d96a11b670391b68bd77c2684d80ce"
  license "MIT" 
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "ezed", shell_output("#{bin}/ezed --version 2>&1", 0)
  end
end
