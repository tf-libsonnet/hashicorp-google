local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='beyondcorp_app_connector', url='', help='`beyondcorp_app_connector` represents the `google_beyondcorp_app_connector` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.beyondcorp_app_connector.new` injects a new `google_beyondcorp_app_connector` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.beyondcorp_app_connector.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.beyondcorp_app_connector` using the reference:\n\n    $._ref.google_beyondcorp_app_connector.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_beyondcorp_app_connector.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): An arbitrary user-provided name for the AppConnector. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user provided metadata. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): ID of the AppConnector.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the AppConnector. When `null`, the `region` field will be omitted from the resulting object.\n  - `principal_info` (`list[obj]`): Principal information about the Identity of the AppConnector. When `null`, the `principal_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connector.principal_info.new](#fn-principal_infonew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connector.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    display_name=null,
    labels=null,
    principal_info=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_beyondcorp_app_connector',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      labels=labels,
      name=name,
      principal_info=principal_info,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.beyondcorp_app_connector.newAttrs` constructs a new object with attributes and blocks configured for the `beyondcorp_app_connector`\nTerraform resource.\n\nUnlike [google.beyondcorp_app_connector.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): An arbitrary user-provided name for the AppConnector. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user provided metadata. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): ID of the AppConnector.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the AppConnector. When `null`, the `region` field will be omitted from the resulting object.\n  - `principal_info` (`list[obj]`): Principal information about the Identity of the AppConnector. When `null`, the `principal_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connector.principal_info.new](#fn-principal_infonew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connector.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `beyondcorp_app_connector` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    display_name=null,
    labels=null,
    principal_info=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    labels: labels,
    name: name,
    principal_info: principal_info,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  principal_info:: {
    '#new':: d.fn(help='\n`google.beyondcorp_app_connector.principal_info.new` constructs a new object with attributes and blocks configured for the `principal_info`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service_account` (`list[obj]`): ServiceAccount represents a GCP service account. When `null`, the `service_account` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connector.principal_info.service_account.new](#fn-principal_infoservice_accountnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `principal_info` sub block.\n', args=[]),
    new(
      service_account=null
    ):: std.prune(a={
      service_account: service_account,
    }),
    service_account:: {
      '#new':: d.fn(help='\n`google.beyondcorp_app_connector.principal_info.service_account.new` constructs a new object with attributes and blocks configured for the `service_account`\nTerraform sub block.\n\n\n\n**Args**:\n  - `email` (`string`): Email address of the service account.\n\n**Returns**:\n  - An attribute object that represents the `service_account` sub block.\n', args=[]),
      new(
        email
      ):: std.prune(a={
        email: email,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.beyondcorp_app_connector.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPrincipalInfo':: d.fn(help='`google.list[obj].withPrincipalInfo` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the principal_info field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPrincipalInfoMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `principal_info` field.\n', args=[]),
  withPrincipalInfo(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          principal_info: value,
        },
      },
    },
  },
  '#withPrincipalInfoMixin':: d.fn(help='`google.list[obj].withPrincipalInfoMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the principal_info field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPrincipalInfo](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `principal_info` field.\n', args=[]),
  withPrincipalInfoMixin(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          principal_info+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
