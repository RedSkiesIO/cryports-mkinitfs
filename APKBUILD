# Contributor: James Kirby <james.kirby@atlascity.com>
# Maintainer: James Kirby <james.kirby@atlascity.com>
pkgname=mkinitfs
pkgver=3.3.420
_ver=3.3.0
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
	0001-features-add-vc4-to-kms-for-rpi.patch
	0001-init-use-swclock-when-no-rtc-is-found.patch

	0001-Add-support-for-signed-modloop-images.patch
	0002-Fix-network-setup-when-only-ip-is-explicitly-given.patch
	0003-Add-README-to-help-with-manual-building.patch
	0004-Fix-installation-path-customisation.patch
	0005-Reuse-kernel-side-configuration-for-console-devices.patch
	"

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
f1f5de4b5825ab221f7f929bf36e121217f34f36cfdec153ceb829f0fad6f63ea057239aa84690792f6d701d350d2dca375fcf91e05862394f8aaa0181a1ed58  0001-features-add-vc4-to-kms-for-rpi.patch
8b915a381f6cf6d8a751ed89b43004ce3e4861556c9753c7f05cb8fa561b744acd51cda0a7c6228cd916e350ee493cc2fa8818593faa2d0eb2d06f400c571154  0001-init-use-swclock-when-no-rtc-is-found.patch
cbe8cf7980ab25be8725b4c9791a7801367865e2b6d71eae428c276b329d5b2d166c2faaedd64bb835d4a69a71440928e087a772854a147893f393006a39b0dc  0001-Add-support-for-signed-modloop-images.patch
5873124ae009e51a7d197fe8c56d38f34bad188d97f3956c9ab6358ca3106dd0dc19c96d76d8fef2b5e4d1ae3d054b949451cd6893bb9e820631dd0f114ef4a9  0002-Fix-network-setup-when-only-ip-is-explicitly-given.patch
4fecf7eb9230702e06e9af77cedaf4ab3bd45dd5b2c298bb1d0df5f6901a3268841e0a2aac28cd5fb9841d98bc96d123f59ed67df9c5f6d30432da8a15851254  0003-Add-README-to-help-with-manual-building.patch
f24d047f179a5af4ffccc50dc672acade7eb1ad0f3262750682cfb0ef7efd2016256dbc49c4f8460ca3414ccc570746275f237e937805ad61fe4b2d4aa2b2aa7  0004-Fix-installation-path-customisation.patch
1955890d9c74ec2d8586928ec1f2d34e266a3eb9663034e0c60f07c52a8a29dae13bfed06dd16a083477ec3703997d52f7a6901c9b13b6b4d6126fb89198ac21  0005-Reuse-kernel-side-configuration-for-console-devices.patch"
