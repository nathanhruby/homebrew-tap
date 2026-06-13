class Tgo < Formula
  desc "Simple cli for task management"
  homepage "https://github.com/nathanhruby/tgo"
  url "https://github.com/nathanhruby/tgo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "18ed1cfd1ac77d8e0049828ed88ca9fc620e42162c511b1994d95dd945b71be6"
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
