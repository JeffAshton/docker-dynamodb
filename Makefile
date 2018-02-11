image := jeffashton/dynamodb

build :
	docker build --no-cache -t $(image) .

test : build
	docker run -it --rm -p 8000:8000 $(image)

push : build
	docker push $(image)