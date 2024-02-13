module github.com/raito-io/sdk

go 1.21

require (
	github.com/Khan/genqlient v0.6.0
	github.com/agnivade/levenshtein v1.1.1
	github.com/alexflint/go-arg v1.4.3
	github.com/alexflint/go-scalar v1.2.0
	github.com/aws/aws-sdk-go-v2 v1.24.1
	github.com/aws/aws-sdk-go-v2/config v1.26.6
	github.com/aws/aws-sdk-go-v2/service/cognitoidentityprovider v1.33.0
	github.com/aws/smithy-go v1.19.0
	github.com/raito-io/enumer v0.1.4
	github.com/stretchr/testify v1.8.4
	golang.org/x/tools v0.17.0
)

replace github.com/Khan/genqlient v0.6.0 => github.com/raito-io/genqlient v0.0.1

require (
	github.com/aws/aws-sdk-go-v2/credentials v1.16.16 // indirect
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.14.11 // indirect
	github.com/aws/aws-sdk-go-v2/internal/configsources v1.2.10 // indirect
	github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.5.10 // indirect
	github.com/aws/aws-sdk-go-v2/internal/ini v1.7.3 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding v1.10.4 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.10.10 // indirect
	github.com/aws/aws-sdk-go-v2/service/sso v1.18.7 // indirect
	github.com/aws/aws-sdk-go-v2/service/ssooidc v1.21.7 // indirect
	github.com/aws/aws-sdk-go-v2/service/sts v1.26.7 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/pascaldekloe/name v1.0.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/vektah/gqlparser/v2 v2.5.8 // indirect
	golang.org/x/mod v0.15.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
