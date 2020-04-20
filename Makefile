image: 
	docker build -t alvisisme/gitbook:3.2.3 . 

install: 
	docker run -it -v ${PWD}/doc:/home/gitbook/book alvisisme/gitbook:3.2.3 gitbook install


build: 
	docker run -it -v ${PWD}/doc:/home/gitbook/book alvisisme/gitbook:3.2.3 gitbook build

pdf:
	docker run -it -v ${PWD}/doc:/home/gitbook/book alvisisme/gitbook:3.2.3 gitbook pdf

init:
	docker run -it -v ${PWD}/doc:/home/gitbook/book alvisisme/gitbook:3.2.3 gitbook init

serve:
	docker run -it -v ${PWD}/doc:/home/gitbook/book -p 4000:4000 alvisisme/gitbook:3.2.3 gitbook serve

