class Tgo < Formula
  desc "Simple cli for task management"
  homepage "https://github.com/nathanhruby/tgo"
  url "https://github.com/nathanhruby/tgo/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "91c929acb16310077b680fa8a54ab8f3da60a647671f1452811db6a31153dbd9"
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
