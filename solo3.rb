
class Solo3 < Formula
  homepage "https://www.eol.ucar.edu/software/solo3"
  url "https://www.eol.ucar.edu/system/files/software/solo3/all-oss/solo3-20150307.src_.tgz"
  version "20150307"
  sha256 "2d2474757488776aeee9ab1cb21625b20c238939c09d83a3c718009aa53ab773"

  depends_on :x11 # if your formula requires any X11/XQuartz components
  depends_on "gtk+"
  depends_on 'gtkmm'
  depends_on 'pkg-config' => :build

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    system "solo3"
  end
end
