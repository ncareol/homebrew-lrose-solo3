
require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook

class Solo3 < Formula
  homepage 'https://www.eol.ucar.edu/software/solo3'
  url 'https://www.eol.ucar.edu/system/files/software/solo3/all-oss/solo3-20160613.src_.tgz'
  version '20160613'
  sha256 '98f6bcd6df998426f41346f7d9b848901ceee9911608b864182ee5e068300c1c'

  depends_on 'gtk+'
  depends_on 'gtkmm'
  depends_on 'pkg-config' => :build

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end

  def test
    # Run the test with `brew test solo3`.
     system "#{bin}/solo3", "-h"
  end
end

