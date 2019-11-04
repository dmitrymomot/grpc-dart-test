package main

import (
	"log"
	"net"
	"net/http"
	"sync"

	"github.com/dmitrymomot/grpc-dart-test/proto/todo"
	"github.com/go-chi/chi"
	"github.com/google/uuid"
	"google.golang.org/grpc"
)

var (
	grpcPort = ":8080"
	httpPort = ":8888"

	wg sync.WaitGroup
)

func main() {
	wg.Add(2)

	go func() {
		defer wg.Done()
		log.Println("start grpc server")

		lis, err := net.Listen("tcp", grpcPort)
		if err != nil {
			log.Fatalf("failed to listen: %v", err)
		}

		s := grpc.NewServer()
		todo.RegisterToDoServiceServer(s, &todoService{id: uuid.New()})
		if err := s.Serve(lis); err != nil {
			log.Fatalf("failed to serve: %v", err)
		}
	}()

	go func() {
		defer wg.Done()
		log.Println("start http server")

		handler := todo.NewToDoServiceServer(&todoService{id: uuid.New()}, nil)

		r := chi.NewRouter()
		r.Get("/health", func(w http.ResponseWriter, r *http.Request) {
			w.Write([]byte("server is working " + handler.ProtocGenTwirpVersion() + " - " + handler.PathPrefix()))
		})
		r.Mount(handler.PathPrefix(), handler)

		log.Fatalf("http server error: %+v", http.ListenAndServe(httpPort, r))
	}()

	wg.Wait()
	log.Println("server is stopped")
}
