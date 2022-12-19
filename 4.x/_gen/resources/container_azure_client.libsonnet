local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='container_azure_client', url='', help='`container_azure_client` represents the `google_container_azure_client` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.container_azure_client.new` injects a new `google_container_azure_client` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.container_azure_client.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.container_azure_client` using the reference:\n\n    $._ref.google_container_azure_client.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_container_azure_client.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `application_id` (`string`): The Azure Active Directory Application ID.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The name of this resource.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `tenant_id` (`string`): The Azure Active Directory Tenant ID.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_client.timeouts.new](#fn-containerazureclienttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    application_id,
    location,
    name,
    tenant_id,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_azure_client',
    label=resourceLabel,
    attrs=self.newAttrs(
      application_id=application_id,
      location=location,
      name=name,
      project=project,
      tenant_id=tenant_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.container_azure_client.newAttrs` constructs a new object with attributes and blocks configured for the `container_azure_client`\nTerraform resource.\n\nUnlike [google.container_azure_client.new](#fn-containerazureclientnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `application_id` (`string`): The Azure Active Directory Application ID.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The name of this resource.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `tenant_id` (`string`): The Azure Active Directory Tenant ID.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_client.timeouts.new](#fn-containerazureclienttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_azure_client` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    application_id,
    location,
    name,
    tenant_id,
    project=null,
    timeouts=null
  ):: std.prune(a={
    application_id: application_id,
    location: location,
    name: name,
    project: project,
    tenant_id: tenant_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.container_azure_client.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withApplicationId':: d.fn(help='`google.container_azure_client.withApplicationId` constructs a mixin object that can be merged into the `container_azure_client`\nTerraform resource block to set or update the application_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `application_id` field.\n', args=[]),
  withApplicationId(resourceLabel, value):: {
    resource+: {
      google_container_azure_client+: {
        [resourceLabel]+: {
          application_id: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.container_azure_client.withLocation` constructs a mixin object that can be merged into the `container_azure_client`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_container_azure_client+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.container_azure_client.withName` constructs a mixin object that can be merged into the `container_azure_client`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_container_azure_client+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.container_azure_client.withProject` constructs a mixin object that can be merged into the `container_azure_client`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_container_azure_client+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTenantId':: d.fn(help='`google.container_azure_client.withTenantId` constructs a mixin object that can be merged into the `container_azure_client`\nTerraform resource block to set or update the tenant_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `tenant_id` field.\n', args=[]),
  withTenantId(resourceLabel, value):: {
    resource+: {
      google_container_azure_client+: {
        [resourceLabel]+: {
          tenant_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.container_azure_client.withTimeouts` constructs a mixin object that can be merged into the `container_azure_client`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_container_azure_client+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.container_azure_client.withTimeoutsMixin` constructs a mixin object that can be merged into the `container_azure_client`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.container_azure_client.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_container_azure_client+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
