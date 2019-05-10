class Unoconv < Formula
  desc "Convert between any document format supported by OpenOffice"
  homepage "http://dag.wiee.rs/home-made/unoconv/"
  url "https://github.com/unoconv/unoconv/archive/63f6b13b6b027b9d552b445dacc8316d7a276043.zip"
  sha256 "c21b3a10929ad8d8a4940aacb4fdea049be7f25565f460ce0bbd24e043d01a23"
  revision 2
  version "0.8.2"
  head "https://github.com/unoconv/unoconv.git"

  depends_on "python"

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end

