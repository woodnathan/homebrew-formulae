require 'formula'

class Liftoff < Formula
  homepage 'https://github.com/woodnathan/liftoff'
  url 'http://woodnathan.github.io/liftoff/Liftoff-1.4.tar.gz'
  sha1 'a6147904d653bb058b02ab93fb4a47a24eaf86c2'

  depends_on 'xcproj' => :recommended

  def install
    prefix.install 'defaults', 'templates', 'vendor'
    prefix.install 'lib' => 'rubylib'

    man1.install ['man/liftoff.1']
    man5.install ['man/liftoffrc.5']

    bin.install 'src/liftoff'
  end

  test do
    system "#{bin}/liftoff", '--version'
  end
end
