local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloud_identity_group', url='', help='`cloud_identity_group` represents the `google_cloud_identity_group` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  group_key:: {
    '#new':: d.fn(help='\n`google.cloud_identity_group.group_key.new` constructs a new object with attributes and blocks configured for the `group_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `namespace` (`string`): The namespace in which the entity exists.\n\nIf not specified, the EntityKey represents a Google-managed entity\nsuch as a Google user or a Google Group.\n\nIf specified, the EntityKey represents an external-identity-mapped group.\nThe namespace must correspond to an identity source created in Admin Console\nand must be in the form of &#39;identitysources/{identity_source_id}&#39;. When `null`, the `namespace` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `group_key` sub block.\n', args=[]),
    new(
      namespace=null
    ):: std.prune(a={
      namespace: namespace,
    }),
  },
  '#new':: d.fn(help="\n`google.cloud_identity_group.new` injects a new `google_cloud_identity_group` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.cloud_identity_group.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.cloud_identity_group` using the reference:\n\n    $._ref.google_cloud_identity_group.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_cloud_identity_group.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An extended description to help users determine the purpose of a Group.\nMust not be longer than 4,096 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The display name of the Group. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `initial_group_config` (`string`): The initial configuration options for creating a Group.\n\nSee the\n[API reference](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups/create#initialgroupconfig)\nfor possible values. Default value: \u0026#34;EMPTY\u0026#34; Possible values: [\u0026#34;INITIAL_GROUP_CONFIG_UNSPECIFIED\u0026#34;, \u0026#34;WITH_INITIAL_OWNER\u0026#34;, \u0026#34;EMPTY\u0026#34;] When `null`, the `initial_group_config` field will be omitted from the resulting object.\n  - `labels` (`obj`): One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.\n\nGoogle Groups are the default type of group and have a label with a key of cloudidentity.googleapis.com/groups.discussion_forum and an empty value.\n\nExisting Google Groups can have an additional label with a key of cloudidentity.googleapis.com/groups.security and an empty value added to them. This is an immutable change and the security label cannot be removed once added.\n\nDynamic groups have a label with a key of cloudidentity.googleapis.com/groups.dynamic.\n\nIdentity-mapped groups for Cloud Search have a label with a key of system/groups/external and an empty value.\n  - `parent` (`string`): The resource name of the entity under which this Group resides in the\nCloud Identity resource hierarchy.\n\nMust be of the form identitysources/{identity_source_id} for external-identity-mapped\ngroups or customers/{customer_id} for Google Groups.\n  - `group_key` (`list[obj]`): EntityKey of the Group. When `null`, the `group_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_identity_group.group_key.new](#fn-cloudidentitygroupgroupkeynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_identity_group.timeouts.new](#fn-cloudidentitygrouptimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    labels,
    parent,
    description=null,
    display_name=null,
    group_key=null,
    initial_group_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_identity_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      group_key=group_key,
      initial_group_config=initial_group_config,
      labels=labels,
      parent=parent,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.cloud_identity_group.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_identity_group`\nTerraform resource.\n\nUnlike [google.cloud_identity_group.new](#fn-cloudidentitygroupnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An extended description to help users determine the purpose of a Group.\nMust not be longer than 4,096 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The display name of the Group. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `initial_group_config` (`string`): The initial configuration options for creating a Group.\n\nSee the\n[API reference](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups/create#initialgroupconfig)\nfor possible values. Default value: &#34;EMPTY&#34; Possible values: [&#34;INITIAL_GROUP_CONFIG_UNSPECIFIED&#34;, &#34;WITH_INITIAL_OWNER&#34;, &#34;EMPTY&#34;] When `null`, the `initial_group_config` field will be omitted from the resulting object.\n  - `labels` (`obj`): One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.\n\nGoogle Groups are the default type of group and have a label with a key of cloudidentity.googleapis.com/groups.discussion_forum and an empty value.\n\nExisting Google Groups can have an additional label with a key of cloudidentity.googleapis.com/groups.security and an empty value added to them. This is an immutable change and the security label cannot be removed once added.\n\nDynamic groups have a label with a key of cloudidentity.googleapis.com/groups.dynamic.\n\nIdentity-mapped groups for Cloud Search have a label with a key of system/groups/external and an empty value.\n  - `parent` (`string`): The resource name of the entity under which this Group resides in the\nCloud Identity resource hierarchy.\n\nMust be of the form identitysources/{identity_source_id} for external-identity-mapped\ngroups or customers/{customer_id} for Google Groups.\n  - `group_key` (`list[obj]`): EntityKey of the Group. When `null`, the `group_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_identity_group.group_key.new](#fn-cloudidentitygroupgroupkeynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_identity_group.timeouts.new](#fn-cloudidentitygrouptimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_identity_group` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    labels,
    parent,
    description=null,
    display_name=null,
    group_key=null,
    initial_group_config=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    group_key: group_key,
    initial_group_config: initial_group_config,
    labels: labels,
    parent: parent,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.cloud_identity_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.cloud_identity_group.withDescription` constructs a mixin object that can be merged into the `cloud_identity_group`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.cloud_identity_group.withDisplayName` constructs a mixin object that can be merged into the `cloud_identity_group`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withGroupKey':: d.fn(help='`google.cloud_identity_group.withGroupKey` constructs a mixin object that can be merged into the `cloud_identity_group`\nTerraform resource block to set or update the group_key field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `group_key` field.\n', args=[]),
  withGroupKey(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          group_key: value,
        },
      },
    },
  },
  '#withGroupKeyMixin':: d.fn(help='`google.cloud_identity_group.withGroupKeyMixin` constructs a mixin object that can be merged into the `cloud_identity_group`\nTerraform resource block to set or update the group_key field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.cloud_identity_group.withGroupKey](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `group_key` field.\n', args=[]),
  withGroupKeyMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          group_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withInitialGroupConfig':: d.fn(help='`google.cloud_identity_group.withInitialGroupConfig` constructs a mixin object that can be merged into the `cloud_identity_group`\nTerraform resource block to set or update the initial_group_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `initial_group_config` field.\n', args=[]),
  withInitialGroupConfig(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          initial_group_config: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.cloud_identity_group.withLabels` constructs a mixin object that can be merged into the `cloud_identity_group`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.cloud_identity_group.withParent` constructs a mixin object that can be merged into the `cloud_identity_group`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.cloud_identity_group.withTimeouts` constructs a mixin object that can be merged into the `cloud_identity_group`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.cloud_identity_group.withTimeoutsMixin` constructs a mixin object that can be merged into the `cloud_identity_group`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.cloud_identity_group.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
