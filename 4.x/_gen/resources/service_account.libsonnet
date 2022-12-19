local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='service_account', url='', help='`service_account` represents the `google_service_account` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.service_account.new` injects a new `google_service_account` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.service_account.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.service_account` using the reference:\n\n    $._ref.google_service_account.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_service_account.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `account_id` (`string`): The account id that is used to generate the service account email address and a stable unique id. It is unique within a project, must be 6-30 characters long, and match the regular expression [a-z]([-a-z0-9]*[a-z0-9]) to comply with RFC1035. Changing this forces a new service account to be created.\n  - `description` (`string`): A text description of the service account. Must be less than or equal to 256 UTF-8 bytes. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Whether the service account is disabled. Defaults to false When `null`, the `disabled` field will be omitted from the resulting object.\n  - `display_name` (`string`): The display name for the service account. Can be updated without creating a new resource. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project that the service account will be created in. Defaults to the provider project configuration. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.service_account.timeouts.new](#fn-serviceaccounttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    account_id,
    description=null,
    disabled=null,
    display_name=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_account',
    label=resourceLabel,
    attrs=self.newAttrs(
      account_id=account_id,
      description=description,
      disabled=disabled,
      display_name=display_name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.service_account.newAttrs` constructs a new object with attributes and blocks configured for the `service_account`\nTerraform resource.\n\nUnlike [google.service_account.new](#fn-serviceaccountnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `account_id` (`string`): The account id that is used to generate the service account email address and a stable unique id. It is unique within a project, must be 6-30 characters long, and match the regular expression [a-z]([-a-z0-9]*[a-z0-9]) to comply with RFC1035. Changing this forces a new service account to be created.\n  - `description` (`string`): A text description of the service account. Must be less than or equal to 256 UTF-8 bytes. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Whether the service account is disabled. Defaults to false When `null`, the `disabled` field will be omitted from the resulting object.\n  - `display_name` (`string`): The display name for the service account. Can be updated without creating a new resource. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project that the service account will be created in. Defaults to the provider project configuration. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.service_account.timeouts.new](#fn-serviceaccounttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `service_account` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    account_id,
    description=null,
    disabled=null,
    display_name=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    account_id: account_id,
    description: description,
    disabled: disabled,
    display_name: display_name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.service_account.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null
    ):: std.prune(a={
      create: create,
    }),
  },
  '#withAccountId':: d.fn(help='`google.service_account.withAccountId` constructs a mixin object that can be merged into the `service_account`\nTerraform resource block to set or update the account_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `account_id` field.\n', args=[]),
  withAccountId(resourceLabel, value):: {
    resource+: {
      google_service_account+: {
        [resourceLabel]+: {
          account_id: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.service_account.withDescription` constructs a mixin object that can be merged into the `service_account`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_service_account+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisabled':: d.fn(help='`google.service_account.withDisabled` constructs a mixin object that can be merged into the `service_account`\nTerraform resource block to set or update the disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `disabled` field.\n', args=[]),
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_service_account+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.service_account.withDisplayName` constructs a mixin object that can be merged into the `service_account`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_service_account+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.service_account.withProject` constructs a mixin object that can be merged into the `service_account`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_service_account+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.service_account.withTimeouts` constructs a mixin object that can be merged into the `service_account`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_service_account+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.service_account.withTimeoutsMixin` constructs a mixin object that can be merged into the `service_account`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.service_account.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_service_account+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
