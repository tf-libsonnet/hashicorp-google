local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='resource_manager_lien', url='', help='`resource_manager_lien` represents the `google_resource_manager_lien` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.resource_manager_lien.new` injects a new `google_resource_manager_lien` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.resource_manager_lien.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.resource_manager_lien` using the reference:\n\n    $._ref.google_resource_manager_lien.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_resource_manager_lien.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `origin` (`string`): A stable, user-visible/meaningful string identifying the origin\nof the Lien, intended to be inspected programmatically. Maximum length of\n200 characters.\n  - `parent` (`string`): A reference to the resource this Lien is attached to.\nThe server will validate the parent against those for which Liens are supported.\nSince a variety of objects can have Liens against them, you must provide the type\nprefix (e.g. \u0026#34;projects/my-project-name\u0026#34;).\n  - `reason` (`string`): Concise user-visible strings indicating why an action cannot be performed\non a resource. Maximum length of 200 characters.\n  - `restrictions` (`list`): The types of operations which should be blocked as a result of this Lien.\nEach value should correspond to an IAM permission. The server will validate\nthe permissions against those for which Liens are supported.  An empty\nlist is meaningless and will be rejected.\ne.g. [\u0026#39;resourcemanager.projects.delete\u0026#39;]\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.resource_manager_lien.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    origin,
    parent,
    reason,
    restrictions,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_resource_manager_lien',
    label=resourceLabel,
    attrs=self.newAttrs(
      origin=origin,
      parent=parent,
      reason=reason,
      restrictions=restrictions,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.resource_manager_lien.newAttrs` constructs a new object with attributes and blocks configured for the `resource_manager_lien`\nTerraform resource.\n\nUnlike [google.resource_manager_lien.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `origin` (`string`): A stable, user-visible/meaningful string identifying the origin\nof the Lien, intended to be inspected programmatically. Maximum length of\n200 characters.\n  - `parent` (`string`): A reference to the resource this Lien is attached to.\nThe server will validate the parent against those for which Liens are supported.\nSince a variety of objects can have Liens against them, you must provide the type\nprefix (e.g. &#34;projects/my-project-name&#34;).\n  - `reason` (`string`): Concise user-visible strings indicating why an action cannot be performed\non a resource. Maximum length of 200 characters.\n  - `restrictions` (`list`): The types of operations which should be blocked as a result of this Lien.\nEach value should correspond to an IAM permission. The server will validate\nthe permissions against those for which Liens are supported.  An empty\nlist is meaningless and will be rejected.\ne.g. [&#39;resourcemanager.projects.delete&#39;]\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.resource_manager_lien.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `resource_manager_lien` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    origin,
    parent,
    reason,
    restrictions,
    timeouts=null
  ):: std.prune(a={
    origin: origin,
    parent: parent,
    reason: reason,
    restrictions: restrictions,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.resource_manager_lien.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withOrigin':: d.fn(help='`google.string.withOrigin` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the origin field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `origin` field.\n', args=[]),
  withOrigin(resourceLabel, value): {
    resource+: {
      google_resource_manager_lien+: {
        [resourceLabel]+: {
          origin: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_resource_manager_lien+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withReason':: d.fn(help='`google.string.withReason` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the reason field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `reason` field.\n', args=[]),
  withReason(resourceLabel, value): {
    resource+: {
      google_resource_manager_lien+: {
        [resourceLabel]+: {
          reason: value,
        },
      },
    },
  },
  '#withRestrictions':: d.fn(help='`google.list.withRestrictions` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the restrictions field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `restrictions` field.\n', args=[]),
  withRestrictions(resourceLabel, value): {
    resource+: {
      google_resource_manager_lien+: {
        [resourceLabel]+: {
          restrictions: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_resource_manager_lien+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_resource_manager_lien+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
