# Formula/ezed.rb
class Ezed < Formula
  desc "A simple text editor made in Rust"
  homepage "https://github.com/vxblnso-arch/EzEd"
  url "https://github.com/vxblnso-arch/EzEd/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "1df959e38ea41731ce532963b2d211f3471040d4d8354fdb601fd4826143bbe8"
  license "MIT" 
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "ezed", shell_output("#{bin}/ezed --version 2>&1", 0)
  end
end
