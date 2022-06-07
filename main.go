package main // import "src.techknowlogick.com/terraform-provider-gitea"

import (
	"code.gitea.io/terraform-provider-gitea/gitea"
	"github.com/hashicorp/terraform-plugin-sdk/plugin"
)

var Version = "development"

func main() {
	plugin.Serve(&plugin.ServeOpts{
		ProviderFunc: gitea.Provider})
}
