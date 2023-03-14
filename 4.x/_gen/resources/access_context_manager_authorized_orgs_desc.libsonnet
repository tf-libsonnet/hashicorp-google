local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='access_context_manager_authorized_orgs_desc', url='', help='`access_context_manager_authorized_orgs_desc` represents the `google_access_context_manager_authorized_orgs_desc` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.access_context_manager_authorized_orgs_desc.new` injects a new `google_access_context_manager_authorized_orgs_desc` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.access_context_manager_authorized_orgs_desc.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.access_context_manager_authorized_orgs_desc` using the reference:\n\n    $._ref.google_access_context_manager_authorized_orgs_desc.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_access_context_manager_authorized_orgs_desc.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `asset_type` (`string`): The type of entities that need to use the authorization relationship during\nevaluation, such as a device. Valid values are \u0026#34;ASSET_TYPE_DEVICE\u0026#34; and\n\u0026#34;ASSET_TYPE_CREDENTIAL_STRENGTH\u0026#34;. Possible values: [\u0026#34;ASSET_TYPE_DEVICE\u0026#34;, \u0026#34;ASSET_TYPE_CREDENTIAL_STRENGTH\u0026#34;] When `null`, the `asset_type` field will be omitted from the resulting object.\n  - `authorization_direction` (`string`): The direction of the authorization relationship between this organization\nand the organizations listed in the \u0026#34;orgs\u0026#34; field. The valid values for this\nfield include the following:\n\nAUTHORIZATION_DIRECTION_FROM: Allows this organization to evaluate traffic\nin the organizations listed in the \u0026#39;orgs\u0026#39; field.\n\nAUTHORIZATION_DIRECTION_TO: Allows the organizations listed in the \u0026#39;orgs\u0026#39;\nfield to evaluate the traffic in this organization.\n\nFor the authorization relationship to take effect, all of the organizations\nmust authorize and specify the appropriate relationship direction. For\nexample, if organization A authorized organization B and C to evaluate its\ntraffic, by specifying \u0026#34;AUTHORIZATION_DIRECTION_TO\u0026#34; as the authorization\ndirection, organizations B and C must specify\n\u0026#34;AUTHORIZATION_DIRECTION_FROM\u0026#34; as the authorization direction in their\n\u0026#34;AuthorizedOrgsDesc\u0026#34; resource. Possible values: [\u0026#34;AUTHORIZATION_DIRECTION_TO\u0026#34;, \u0026#34;AUTHORIZATION_DIRECTION_FROM\u0026#34;] When `null`, the `authorization_direction` field will be omitted from the resulting object.\n  - `authorization_type` (`string`): A granular control type for authorization levels. Valid value is \u0026#34;AUTHORIZATION_TYPE_TRUST\u0026#34;. Possible values: [\u0026#34;AUTHORIZATION_TYPE_TRUST\u0026#34;] When `null`, the `authorization_type` field will be omitted from the resulting object.\n  - `name` (`string`): Resource name for the \u0026#39;AuthorizedOrgsDesc\u0026#39;. Format:\n\u0026#39;accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}\u0026#39;.\nThe \u0026#39;authorized_orgs_desc\u0026#39; component must begin with a letter, followed by\nalphanumeric characters or \u0026#39;_\u0026#39;.\nAfter you create an \u0026#39;AuthorizedOrgsDesc\u0026#39;, you cannot change its \u0026#39;name\u0026#39;.\n  - `orgs` (`list`): The list of organization ids in this AuthorizedOrgsDesc.\nFormat: \u0026#39;organizations/\u0026lt;org_number\u0026gt;\u0026#39;\nExample: \u0026#39;organizations/123456\u0026#39; When `null`, the `orgs` field will be omitted from the resulting object.\n  - `parent` (`string`): Required. Resource name for the access policy which owns this \u0026#39;AuthorizedOrgsDesc\u0026#39;.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_authorized_orgs_desc.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    parent,
    asset_type=null,
    authorization_direction=null,
    authorization_type=null,
    orgs=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_authorized_orgs_desc',
    label=resourceLabel,
    attrs=self.newAttrs(
      asset_type=asset_type,
      authorization_direction=authorization_direction,
      authorization_type=authorization_type,
      name=name,
      orgs=orgs,
      parent=parent,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.access_context_manager_authorized_orgs_desc.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_authorized_orgs_desc`\nTerraform resource.\n\nUnlike [google.access_context_manager_authorized_orgs_desc.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `asset_type` (`string`): The type of entities that need to use the authorization relationship during\nevaluation, such as a device. Valid values are &#34;ASSET_TYPE_DEVICE&#34; and\n&#34;ASSET_TYPE_CREDENTIAL_STRENGTH&#34;. Possible values: [&#34;ASSET_TYPE_DEVICE&#34;, &#34;ASSET_TYPE_CREDENTIAL_STRENGTH&#34;] When `null`, the `asset_type` field will be omitted from the resulting object.\n  - `authorization_direction` (`string`): The direction of the authorization relationship between this organization\nand the organizations listed in the &#34;orgs&#34; field. The valid values for this\nfield include the following:\n\nAUTHORIZATION_DIRECTION_FROM: Allows this organization to evaluate traffic\nin the organizations listed in the &#39;orgs&#39; field.\n\nAUTHORIZATION_DIRECTION_TO: Allows the organizations listed in the &#39;orgs&#39;\nfield to evaluate the traffic in this organization.\n\nFor the authorization relationship to take effect, all of the organizations\nmust authorize and specify the appropriate relationship direction. For\nexample, if organization A authorized organization B and C to evaluate its\ntraffic, by specifying &#34;AUTHORIZATION_DIRECTION_TO&#34; as the authorization\ndirection, organizations B and C must specify\n&#34;AUTHORIZATION_DIRECTION_FROM&#34; as the authorization direction in their\n&#34;AuthorizedOrgsDesc&#34; resource. Possible values: [&#34;AUTHORIZATION_DIRECTION_TO&#34;, &#34;AUTHORIZATION_DIRECTION_FROM&#34;] When `null`, the `authorization_direction` field will be omitted from the resulting object.\n  - `authorization_type` (`string`): A granular control type for authorization levels. Valid value is &#34;AUTHORIZATION_TYPE_TRUST&#34;. Possible values: [&#34;AUTHORIZATION_TYPE_TRUST&#34;] When `null`, the `authorization_type` field will be omitted from the resulting object.\n  - `name` (`string`): Resource name for the &#39;AuthorizedOrgsDesc&#39;. Format:\n&#39;accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}&#39;.\nThe &#39;authorized_orgs_desc&#39; component must begin with a letter, followed by\nalphanumeric characters or &#39;_&#39;.\nAfter you create an &#39;AuthorizedOrgsDesc&#39;, you cannot change its &#39;name&#39;.\n  - `orgs` (`list`): The list of organization ids in this AuthorizedOrgsDesc.\nFormat: &#39;organizations/&lt;org_number&gt;&#39;\nExample: &#39;organizations/123456&#39; When `null`, the `orgs` field will be omitted from the resulting object.\n  - `parent` (`string`): Required. Resource name for the access policy which owns this &#39;AuthorizedOrgsDesc&#39;.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_authorized_orgs_desc.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_authorized_orgs_desc` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    parent,
    asset_type=null,
    authorization_direction=null,
    authorization_type=null,
    orgs=null,
    timeouts=null
  ):: std.prune(a={
    asset_type: asset_type,
    authorization_direction: authorization_direction,
    authorization_type: authorization_type,
    name: name,
    orgs: orgs,
    parent: parent,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.access_context_manager_authorized_orgs_desc.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAssetType':: d.fn(help='`google.string.withAssetType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the asset_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `asset_type` field.\n', args=[]),
  withAssetType(resourceLabel, value): {
    resource+: {
      google_access_context_manager_authorized_orgs_desc+: {
        [resourceLabel]+: {
          asset_type: value,
        },
      },
    },
  },
  '#withAuthorizationDirection':: d.fn(help='`google.string.withAuthorizationDirection` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the authorization_direction field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `authorization_direction` field.\n', args=[]),
  withAuthorizationDirection(resourceLabel, value): {
    resource+: {
      google_access_context_manager_authorized_orgs_desc+: {
        [resourceLabel]+: {
          authorization_direction: value,
        },
      },
    },
  },
  '#withAuthorizationType':: d.fn(help='`google.string.withAuthorizationType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the authorization_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `authorization_type` field.\n', args=[]),
  withAuthorizationType(resourceLabel, value): {
    resource+: {
      google_access_context_manager_authorized_orgs_desc+: {
        [resourceLabel]+: {
          authorization_type: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_access_context_manager_authorized_orgs_desc+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withOrgs':: d.fn(help='`google.list.withOrgs` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the orgs field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `orgs` field.\n', args=[]),
  withOrgs(resourceLabel, value): {
    resource+: {
      google_access_context_manager_authorized_orgs_desc+: {
        [resourceLabel]+: {
          orgs: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_access_context_manager_authorized_orgs_desc+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_access_context_manager_authorized_orgs_desc+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_authorized_orgs_desc+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
