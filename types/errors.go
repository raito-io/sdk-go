package types

import (
	"errors"
	"fmt"
)

var ErrUnknownType = errors.New("unknown type")

type ErrNotFound struct {
	Type      string
	Id        string
	ServerMsg string
}

func NewErrNotFound(id string, t string, msg string) *ErrNotFound {
	return &ErrNotFound{
		Type:      t,
		Id:        id,
		ServerMsg: msg,
	}
}

func (e *ErrNotFound) Error() string {
	return fmt.Sprintf("not able to find object %q with id %q: %s", e.Type, e.Id, e.ServerMsg)
}

type ErrPermissionDenied struct {
	Operation string
	ServerMsg string
}

func NewErrPermissionDenied(operation string, serverMsg string) *ErrPermissionDenied {
	return &ErrPermissionDenied{
		Operation: operation,
		ServerMsg: serverMsg,
	}
}

func (e *ErrPermissionDenied) Error() string {
	return fmt.Sprintf("permission denied for %s: %s", e.Operation, e.ServerMsg)
}

type ErrAlreadyExists struct {
	Type      string
	ServerMsg string
}

func NewErrAlreadyExists(t string, msg string) *ErrAlreadyExists {
	return &ErrAlreadyExists{
		Type:      t,
		ServerMsg: msg,
	}
}

func (e *ErrAlreadyExists) Error() string {
	return fmt.Sprintf("%q already exists: %s", e.Type, e.ServerMsg)
}

type ErrClient struct {
	clientErr error
}

func NewErrClient(clientErr error) *ErrClient {
	return &ErrClient{
		clientErr: clientErr,
	}
}

func (e *ErrClient) Error() string {
	return fmt.Sprintf("client error: %s", e.clientErr)
}
