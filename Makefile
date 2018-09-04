.PHONY: dbuild-cryptos-mkinitfs-x8664
dbuild-cryptos-mkinitfs-x8664:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		registry.gitlab.engr.atlas:443/cryptos/docker-build:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c"

.PHONY: dbuild-cryptos-mkinitfs-armhf
dbuild-cryptos-mkinitfs-armhf:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		registry.gitlab.engr.atlas:443/cryptos/docker-build:armhf \
		sh -c "cd cryptos/src && abuild checksum && abuild -c"

.PHONY: dbuild-cryptos-mkinitfs-aarch64
dbuild-cryptos-mkinitfs-aarch64:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		registry.gitlab.engr.atlas:443/cryptos/docker-build:aarch64 \
		sh -c "cd cryptos/src && abuild checksum && abuild -c"
