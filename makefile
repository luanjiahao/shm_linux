.PHONY:all
all:shm_server shm_client

shm_server:shm_server.cc
	g++ -o $@ $^ -std=c++11 -g
shm_client:shm_client.cc
	g++ -o $@ $^ -std=c++11 -g

.PHONY:clean
clean:
	rm -f shm_server shm_client