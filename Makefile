

setup:
	cp -n config/server.cfg.dist config/server.cfg

build: prune
	docker build -t cs.hagnat.nl .

prune:
	docker system prune -a -f

run:
	docker run -d \
		--name cs.hagnat.nl \
		-p 26900:26900/udp \
		-p 27020:27020/udp \
		-p 27015:27015/udp \
		-p 27015:27015 \
		cs.hagnat.nl

start: 
	docker start cs.hagnat.nl

stop:
	docker stop cs.hagnat.nl

all: setup build run start
