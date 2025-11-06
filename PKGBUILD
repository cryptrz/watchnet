pkgname=watchnet
pkgver=1.0.0
pkgrel=1
arch=('any')
pkgdesc="Monitors your internet connection in real time"
license=('GPL')
source=('watchnet.sh')
sha256sums=('SKIP')

package() {
  install -Dm755 "$srcdir/watchnet.sh" "$pkgdir/usr/bin/watchnet"
}
