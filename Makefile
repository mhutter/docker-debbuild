build:
	docker build -t $(USER)/debbuild .

run:
	docker run -it --rm \
		-v "${PWD}":/work \
		-v "${HOME}/.gitconfig":/root/.gitconfig \
		-v "${HOME}/.gnupg":/root/.gnupg \
		$(USER)/debbuild