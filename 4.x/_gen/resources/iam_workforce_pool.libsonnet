local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='iam_workforce_pool', url='', help='`iam_workforce_pool` represents the `google_iam_workforce_pool` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.iam_workforce_pool.new` injects a new `google_iam_workforce_pool` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.iam_workforce_pool.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.iam_workforce_pool` using the reference:\n\n    $._ref.google_iam_workforce_pool.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_iam_workforce_pool.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A user-specified description of the pool. Cannot exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Whether the pool is disabled. You cannot use a disabled pool to exchange tokens,\nor use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `display_name` (`string`): A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource.\n  - `parent` (`string`): Immutable. The resource name of the parent. Format: \u0026#39;organizations/{org-id}\u0026#39;.\n  - `session_duration` (`string`): Duration that the Google Cloud access tokens, console sign-in sessions,\nand \u0026#39;gcloud\u0026#39; sign-in sessions from this pool are valid.  \nMust be greater than 15 minutes (900s) and less than 12 hours (43200s).\nIf \u0026#39;sessionDuration\u0026#39; is not configured, minted credentials have a default duration of one hour (3600s).\nA duration in seconds with up to nine fractional digits, ending with \u0026#39;\u0026#39;s\u0026#39;\u0026#39;. Example: \u0026#34;\u0026#39;3.5s\u0026#39;\u0026#34;. When `null`, the `session_duration` field will be omitted from the resulting object.\n  - `workforce_pool_id` (`string`): The name of the pool. The ID must be a globally unique string of 6 to 63 lowercase letters,\ndigits, or hyphens. It must start with a letter, and cannot have a trailing hyphen.\nThe prefix \u0026#39;gcp-\u0026#39; is reserved for use by Google, and may not be specified.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    parent,
    workforce_pool_id,
    description=null,
    disabled=null,
    display_name=null,
    session_duration=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_iam_workforce_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      disabled=disabled,
      display_name=display_name,
      location=location,
      parent=parent,
      session_duration=session_duration,
      timeouts=timeouts,
      workforce_pool_id=workforce_pool_id
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.iam_workforce_pool.newAttrs` constructs a new object with attributes and blocks configured for the `iam_workforce_pool`\nTerraform resource.\n\nUnlike [google.iam_workforce_pool.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A user-specified description of the pool. Cannot exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Whether the pool is disabled. You cannot use a disabled pool to exchange tokens,\nor use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `display_name` (`string`): A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource.\n  - `parent` (`string`): Immutable. The resource name of the parent. Format: &#39;organizations/{org-id}&#39;.\n  - `session_duration` (`string`): Duration that the Google Cloud access tokens, console sign-in sessions,\nand &#39;gcloud&#39; sign-in sessions from this pool are valid.  \nMust be greater than 15 minutes (900s) and less than 12 hours (43200s).\nIf &#39;sessionDuration&#39; is not configured, minted credentials have a default duration of one hour (3600s).\nA duration in seconds with up to nine fractional digits, ending with &#39;&#39;s&#39;&#39;. Example: &#34;&#39;3.5s&#39;&#34;. When `null`, the `session_duration` field will be omitted from the resulting object.\n  - `workforce_pool_id` (`string`): The name of the pool. The ID must be a globally unique string of 6 to 63 lowercase letters,\ndigits, or hyphens. It must start with a letter, and cannot have a trailing hyphen.\nThe prefix &#39;gcp-&#39; is reserved for use by Google, and may not be specified.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workforce_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iam_workforce_pool` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    parent,
    workforce_pool_id,
    description=null,
    disabled=null,
    display_name=null,
    session_duration=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    disabled: disabled,
    display_name: display_name,
    location: location,
    parent: parent,
    session_duration: session_duration,
    timeouts: timeouts,
    workforce_pool_id: workforce_pool_id,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.iam_workforce_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisabled':: d.fn(help='`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disabled` field.\n', args=[]),
  withDisabled(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withSessionDuration':: d.fn(help='`google.string.withSessionDuration` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the session_duration field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `session_duration` field.\n', args=[]),
  withSessionDuration(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          session_duration: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withWorkforcePoolId':: d.fn(help='`google.string.withWorkforcePoolId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the workforce_pool_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `workforce_pool_id` field.\n', args=[]),
  withWorkforcePoolId(resourceLabel, value): {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          workforce_pool_id: value,
        },
      },
    },
  },
}
