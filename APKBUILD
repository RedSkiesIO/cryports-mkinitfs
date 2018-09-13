# Contributor: James Kirby <james.kirby@atlascity.com>
# Maintainer: James Kirby <james.kirby@atlascity.com>
pkgname=mkinitfs
pkgver=3.3.0
_ver=${pkgver%_git*}
pkgrel=420
pkgdesc="Tool to generate initramfs images for CryptOS"
url="https://git.alpinelinux.org/cgit/mkinitfs"
arch="all"
license="GPL-2.0"
# currently we do not ship any testsuite
options="!check"
makedepends_build=""
makedepends_host="busybox kmod-dev util-linux-dev cryptsetup-dev linux-headers"
makedepends="$makedepends_build $makedepends_host"
depends="busybox>=1.28.2-r1 apk-tools>=2.9.1 lddtree>=1.25"
install="$pkgname.pre-upgrade $pkgname.post-install $pkgname.post-upgrade"
triggers="$pkgname.trigger=/usr/share/kernel/*"
source="http://dev.alpinelinux.org/archive/$pkgname/$pkgname-$_ver.tar.xz
	0001-features-add-vc4-to-kms-for-rpi.patch"
builddir="$srcdir/$pkgname-$_ver"

build() {
	cd "$builddir"
	make VERSION=$pkgver-r$pkgrel
}

package() {
	cd "$builddir"
	make install DESTDIR="$pkgdir"
}

sha512sums="dbbb97fda1c2febe5fc226072232ffeb69c03fb9173c0434d5cecc6e4fda2e62a1f725a3083d1bedc2397cbf3b95ce28628788d70b4440902ee3648db738c2c9  mkinitfs-3.3.0.tar.xz
f1f5de4b5825ab221f7f929bf36e121217f34f36cfdec153ceb829f0fad6f63ea057239aa84690792f6d701d350d2dca375fcf91e05862394f8aaa0181a1ed58  0001-features-add-vc4-to-kms-for-rpi.patch"
