class Tgo < Formula
  desc "Simple cli for task management"
  homepage "https://github.com/nathanhruby/tgo"
  url "https://github.com/nathanhruby/tgo/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "01f4c796d063589f5826c098a0238d0e048a320b605cc27572392b1d8e529187"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "tgo"
    bin.install "tgo"
  end

  test do
    system "{bin}/tgo", "add", "test"
    system "{bin}/tgo", "finish", "4"
  end
end
