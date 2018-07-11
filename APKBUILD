# Contributor: James Kirby <james.kirby@atlascityfinace.com>
# Maintainer: James Kirby <james.kirby@atlascityfinace.com>
pkgname=mkinitfs
pkgver=3.2.0
_ver=${pkgver%_git*}
pkgrel=25
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
	0001-skip-hooks-on-diskless-install.patch
	0001-nlplug-findfs-add-primitive-support-for-LUKS2-contai.patch
	0001-initramfs-do-not-relocate-mountpoint-for-netboot.patch
	0001-features-add-virtio_net-to-network-modules.patch
	0001-features-virtio_net-depends-on-virtio_pci.patch
	0001-generate-mkinitfs.conf.patch
	0002-initramfs-init-add-disk-and-network-detection-on-s39.patch
	0003-initramfs-init-add-support-for-ssh-installer.patch
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

sha512sums="906bfbce677d4ece9c9fea7b2a529121740bc9d96ea011be083303cc5c56162f09271b0a673e9e335234ccf2f293109bda1eda333698a95357d0772c86f498af  mkinitfs-3.2.0.tar.xz
f5c9b21e53c663dac1b8f33f929dbe067492f0dc1bd5ef5310ef531033f31fc3fa0b6de6dce03cecaf90b8ed47b278d0f1f7c64dbbeede7621c895ee3ea79864  0001-skip-hooks-on-diskless-install.patch
4d298d73cc6e557c51de805721ef4b9f002498af5dd9f0aebfd6620ec84d1fadde76888bc2d40efc71dc0a8497aa0586ac65d596eb0021bfed633adcc3aca3b4  0001-nlplug-findfs-add-primitive-support-for-LUKS2-contai.patch
4387357cfcd3441c5d8777e42c0e62a73fa446aacd2faac081947afc39bdd8fb91e12b34f3b69a6827bd7d0705f54514b77c0ff4c38ee0d70553050117c42576  0001-initramfs-do-not-relocate-mountpoint-for-netboot.patch
530a33638e7ba1faceed9a5cb0a2e08bec5d29d160a99730b7a2fb6c98f93a511908df8ab14cc47884397c9affee899a23896aab1c6c9073015ce077cc16552f  0001-features-add-virtio_net-to-network-modules.patch
e5a6a25ea51b0ef16f525af20f8e44e64f5c4bb56f46b220151fc03cfa2c530ec55e2755a5dca766f9dad467815b5949bd22e029bcda89fbcef0d40bb3fd1a0f  0001-features-virtio_net-depends-on-virtio_pci.patch
3dfc39cf9c97ed63869b7d36f9c666b6d4d2250240ed64a6e827056e4fc0ed2d2cb03f63772761404e745fa57e8ea2e3157107c323866fa8f32f7195c0555770  0001-generate-mkinitfs.conf.patch
92ef3fb695aa060ff4d7c682eead8eae0065c4e28dc155d233cfdbd6b7ac55d1d5ba0258e3f48fb47512acd8594a893c809c5b93ad7715c99a1697331c27491d  0002-initramfs-init-add-disk-and-network-detection-on-s39.patch
64840c34d91549c6e68a22a6eb0093d84a53a78ebbe3f12287e0ccb0fabbb1bb7829ca246522e0bdfdb45c32b0afb598447dfc688f261911c3d1d48d55f05503  0003-initramfs-init-add-support-for-ssh-installer.patch"
