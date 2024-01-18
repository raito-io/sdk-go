package services

import (
	"context"
	"fmt"

	"github.com/Khan/genqlient/graphql"

	"github.com/raito-io/sdk/internal/schema"
	"github.com/raito-io/sdk/types"
)

type UserClient struct {
	client graphql.Client
}

func NewUserClient(client graphql.Client) UserClient {
	return UserClient{
		client: client,
	}
}

func (c *UserClient) GetUserByEmail(ctx context.Context, email string) (*types.User, error) {
	result, err := schema.GetUserByEmail(ctx, c.client, email)
	if err != nil {
		return nil, types.NewErrClient(err)
	}

	if result.UserByEmail == nil {
		return nil, types.NewErrNotFound(email, "user", "No user found for the given email address.")
	}

	switch user := (*result.UserByEmail).(type) {
	case *schema.GetUserByEmailUserByEmailUser:
		return &user.User, nil
	case *schema.GetUserByEmailUserByEmailInvalidEmailError:
		return nil, types.NewErrClient(fmt.Errorf("invalid email address %q: %s", user.ErrEmail, user.Message))
	case *schema.GetUserByEmailUserByEmailNotFoundError:
		return nil, types.NewErrNotFound(email, "user", user.Message)
	case *schema.GetUserByEmailUserByEmailPermissionDeniedError:
		return nil, types.NewErrPermissionDenied("getUserByEmail", user.Message)
	default:
		return nil, types.NewErrClient(fmt.Errorf("unexpected result type: %T", user))
	}
}
