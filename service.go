package main

import (
	"context"
	"errors"
	"sync"
	"time"

	"github.com/dmitrymomot/grpc-dart-test/proto/todo"
	"github.com/golang/protobuf/ptypes/timestamp"
	"github.com/google/uuid"
)

type todoService struct {
	todo.UnimplementedToDoServiceServer
	id uuid.UUID
	sync.Mutex
	todos []*todo.ToDo
}

func (s *todoService) List(c context.Context, r *todo.ListReq) (*todo.ListResp, error) {
	s.Lock()
	defer s.Unlock()

	return &todo.ListResp{Items: s.todos}, nil
}

func (s *todoService) Get(c context.Context, r *todo.GetReq) (*todo.ToDo, error) {
	s.Lock()
	defer s.Unlock()

	for _, item := range s.todos {
		if item.GetId() == r.GetId() {
			return item, nil
		}
	}

	return nil, errors.New("could not found todo item with given id")
}

func (s *todoService) Create(c context.Context, r *todo.CreateReq) (*todo.ToDo, error) {
	s.Lock()
	defer s.Unlock()

	item := &todo.ToDo{
		Id:        uuid.New().String(),
		Text:      r.GetText(),
		CreatedAt: &timestamp.Timestamp{Seconds: time.Now().Unix()},
	}
	s.todos = append(s.todos, item)

	return item, nil
}

func (s *todoService) Update(c context.Context, r *todo.UpdateReq) (*todo.ToDo, error) {
	s.Lock()
	defer s.Unlock()

	for key, item := range s.todos {
		if item.GetId() == r.GetId() {
			if r.GetText() != "" {
				item.Text = r.GetText()
			}
			item.Completed = r.GetCompleted()
			item.UpdatedAt = &timestamp.Timestamp{Seconds: time.Now().Unix()}
			s.todos[key] = item
			return item, nil
		}
	}

	return nil, errors.New("could not found todo item with given id")
}

func (s *todoService) Delete(c context.Context, r *todo.DeleteReq) (*todo.DeleteResp, error) {
	s.Lock()
	defer s.Unlock()

	for index, item := range s.todos {
		if item.GetId() == r.GetId() {
			s.todos = append(s.todos[:index], s.todos[index+1:]...)
			return &todo.DeleteResp{Result: true}, nil
		}
	}

	return nil, errors.New("could not found todo item with given id")
}
