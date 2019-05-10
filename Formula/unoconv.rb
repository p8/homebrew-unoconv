class Unoconv < Formula
  desc "Convert between any document format supported by OpenOffice"
  homepage "http://dag.wiee.rs/home-made/unoconv/"
  url "https://github.com/unoconv/unoconv/archive/63f6b13b6b027b9d552b445dacc8316d7a276043.zip"
  sha256 "2b5bf10177b1d14fe8521636e903dee6e6241c2d0b277ef205a771756e41bbb8"
  revision 2
  version "0.8.2"
  head "https://github.com/unoconv/unoconv.git"

  bottle do
    cellar :any_skip_relocation
    sha256 "07a0230f3b34e5d3566bf167320563d7923deb380e78c6d8380f7f2b56f0b50b" => :mojave
    sha256 "af451c29611a9fed41fb2b68984a20f80ff9a812a23c28233878ee84fb8dc208" => :high_sierra
    sha256 "af451c29611a9fed41fb2b68984a20f80ff9a812a23c28233878ee84fb8dc208" => :sierra
  end

  depends_on "python"

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end

