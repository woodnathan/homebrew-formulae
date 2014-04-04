require 'formula'

class Liftoff < Formula
  homepage 'https://github.com/woodnathan/liftoff'
  url 'http://woodnathan.github.io/liftoff/Liftoff-1.3.tar.gz'
  sha1 '6ed76e4c48f859946d73ac19cf52d3a393578396'

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
