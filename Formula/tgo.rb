class Tgo < Formula
  desc "Simple cli for task management"
  homepage "https://github.com/nathanhruby/tgo"
  url "https://github.com/nathanhruby/tgo/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "fd890aff93fa30f2d30d3afb457affa317edf5f0a411548ddc4a70d836e61446"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "tgo"
    bin.install "tgo"
  end

  test do
    system "{bin}/tgo", "add", "test"
    system "{bin}/tgo", "finish", "a"
  end
end
