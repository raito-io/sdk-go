package services

import (
	"context"
	"errors"

	"github.com/Khan/genqlient/graphql"

	"github.com/raito-io/sdk/internal/schema"
	"github.com/raito-io/sdk/types"
)

type DataObjectClient struct {
	client graphql.Client
}

func NewDataObjectClient(client graphql.Client) DataObjectClient {
	return DataObjectClient{
		client: client,
	}
}

// GetDataObjectIdByName returns the ID of the DataObject with the given name and dataSource.
func (c *DataObjectClient) GetDataObjectIdByName(ctx context.Context, fullname string, dataSource string) (string, error) {
	result, err := schema.DataObjectByExternalId(ctx, c.client, fullname, dataSource)
	if err != nil {
		return "", types.NewErrClient(err)
	}

	if len(result.DataObjects.Edges) != 1 || result.DataObjects.Edges[0].Node == nil {
		return "", errors.New("unexpected number of results")
	}

	return (*result.DataObjects.Edges[0].Node).(*schema.DataObjectByExternalIdDataObjectsPagedResultEdgesEdgeNodeDataObject).Id, nil
}
