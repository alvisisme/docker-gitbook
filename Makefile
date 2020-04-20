build: 
	docker run -it -v ${PWD}/doc:/book alvisisme/gitbook:3.2.3 gitbook build

pdf:
	docker run -it -v ${PWD}/doc:/book alvisisme/gitbook:3.2.3 gitbook pdf

init:
	docker run -it -v ${PWD}/doc:/book alvisisme/gitbook:3.2.3 gitbook init

serve:
	docker run -it -v ${PWD}/doc:/book -p 4000:4000 alvisisme/gitbook:3.2.3 gitbook serve

