# Formula/ezed.rb
class Ezed < Formula
  desc "A simple text editor made in Rust"
  homepage "https://github.com/vxblnso-arch/EzEd"
  url "https://github.com/vxblnso-arch/EzEd/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "13bfce23cec18f94bdefc3898b7c08b20ad34f477c37d116e28de934ca0d5af2"
  license "MIT" 
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "ezed", shell_output("#{bin}/ezed --version 2>&1", 0)
  end
end
