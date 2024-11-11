module github.com/raito-io/sdk-go

go 1.21
toolchain go1.22.5

require (
	github.com/Khan/genqlient v0.7.0
	github.com/agnivade/levenshtein v1.1.1
	github.com/alexflint/go-arg v1.5.1
	github.com/alexflint/go-scalar v1.2.0
	github.com/aws/aws-sdk-go-v2 v1.32.2
	github.com/aws/aws-sdk-go-v2/config v1.27.43
	github.com/aws/aws-sdk-go-v2/service/cognitoidentityprovider v1.41.2
	github.com/aws/smithy-go v1.22.0
	github.com/raito-io/enumer v0.1.4
	github.com/stretchr/testify v1.9.0
	golang.org/x/tools v0.27.0
)

replace github.com/Khan/genqlient v0.7.0 => github.com/raito-io/genqlient v0.0.2

require (
	github.com/aws/aws-sdk-go-v2/credentials v1.17.41 // indirect
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.16.17 // indirect
	github.com/aws/aws-sdk-go-v2/internal/configsources v1.3.21 // indirect
	github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.6.21 // indirect
	github.com/aws/aws-sdk-go-v2/internal/ini v1.8.1 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding v1.12.0 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.12.2 // indirect
	github.com/aws/aws-sdk-go-v2/service/sso v1.24.2 // indirect
	github.com/aws/aws-sdk-go-v2/service/ssooidc v1.28.2 // indirect
	github.com/aws/aws-sdk-go-v2/service/sts v1.32.2 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/pascaldekloe/name v1.0.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/vektah/gqlparser/v2 v2.5.16 // indirect
	golang.org/x/mod v0.22.0 // indirect
	golang.org/x/sync v0.9.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
