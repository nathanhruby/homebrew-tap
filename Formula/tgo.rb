class Tgo < Formula
  desc "Simple cli for task management"
  homepage "https://github.com/nathanhruby/tgo"
  url "https://github.com/nathanhruby/tgo/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "2ddcdb815f775431019a87aefee26b92eb3b82feac8192361055d2bfdb7c4c74"
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
