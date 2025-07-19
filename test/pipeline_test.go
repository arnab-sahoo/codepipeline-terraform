package test

import (
  "testing"
  "github.com/gruntwork-io/terratest/modules/terraform"
  "github.com/stretchr/testify/assert"
)

func TestCodePipelineSetup(t *testing.T) {
  terraformOptions := &terraform.Options{
    TerraformDir: "../",
  }

  defer terraform.Destroy(t, terraformOptions)
  terraform.InitAndApply(t, terraformOptions)

  pipelineName := terraform.Output(t, terraformOptions, "pipeline_name")
  assert.Contains(t, pipelineName, "my-app-pipeline")
}
