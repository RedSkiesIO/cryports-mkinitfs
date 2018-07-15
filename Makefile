.PHONY: dbuild-cryptos-mkinitfs-x8664
dbuild-cryptos-mkinitfs-x8664:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c"

.PHONY: dbuild-cryptos-mkinitfs-armhf
dbuild-cryptos-mkinitfs-armhf:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:armhf \
		sh -c "cd cryptos/src && abuild checksum && abuild -c"

.PHONY: dbuild-cryptos-mkinitfs-aarch64
dbuild-cryptos-mkinitfs-aarch64:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:aarch64 \
		sh -c "cd cryptos/src && abuild checksum && abuild -c"
