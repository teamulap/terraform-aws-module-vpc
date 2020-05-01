
// NOTE:
// run ```dep ensure``` first before running ```go test -v -timeout 90m .```
// go test -v -timeout 90m .

package test
import "fmt"
import (
	"testing"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

// An example of how to test the simple Terraform module in examples/ using Terratest.
func TestAwsVpcExample(t *testing.T) {
	t.Parallel()
	vpcModuleOptions := &terraform.Options{
		TerraformDir: "../examples/aws-vpc-example",
		NoColor: false,
	}
	terraform.InitAndApply(t, vpcModuleOptions)

	// Run `terraform output` to get the values of output variables
	expectedIgwLenTest := terraform.OutputRequired(t, vpcModuleOptions, "t_internet_gateway_id")
	fmt.Println(expectedIgwLenTest)
	expectedRtAssocLenTest := terraform.OutputRequired(t, vpcModuleOptions, "t_route_table_association_ids")
	fmt.Println(expectedRtAssocLenTest)
	expectedRtLenTest := terraform.OutputRequired(t, vpcModuleOptions, "t_route_table_ids")
	fmt.Println(expectedRtLenTest)
	expectedSubnetLenTest := terraform.OutputRequired(t, vpcModuleOptions, "t_subnet_ids")
	fmt.Println(expectedSubnetLenTest)
	expectedVpcLenTest := terraform.OutputRequired(t, vpcModuleOptions, "t_vpc_id")
	fmt.Println(expectedVpcLenTest)

	// Verify that all output are not empty
	assert.NotEmpty(t, expectedIgwLenTest)
	assert.NotEmpty(t, expectedRtAssocLenTest)
	assert.NotEmpty(t, expectedRtLenTest)
	assert.NotEmpty(t, expectedSubnetLenTest)
	assert.NotEmpty(t, expectedVpcLenTest)
	defer terraform.Destroy(t, vpcModuleOptions)
}