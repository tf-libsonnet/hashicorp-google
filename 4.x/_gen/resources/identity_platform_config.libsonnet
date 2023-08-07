local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='identity_platform_config', url='', help='`identity_platform_config` represents the `google_identity_platform_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  blocking_functions:: {
    forward_inbound_credentials:: {
      '#new':: d.fn(help='\n`google.identity_platform_config.blocking_functions.forward_inbound_credentials.new` constructs a new object with attributes and blocks configured for the `forward_inbound_credentials`\nTerraform sub block.\n\n\n\n**Args**:\n  - `access_token` (`bool`): Whether to pass the user&#39;s OAuth identity provider&#39;s access token. When `null`, the `access_token` field will be omitted from the resulting object.\n  - `id_token` (`bool`): Whether to pass the user&#39;s OIDC identity provider&#39;s ID token. When `null`, the `id_token` field will be omitted from the resulting object.\n  - `refresh_token` (`bool`): Whether to pass the user&#39;s OAuth identity provider&#39;s refresh token. When `null`, the `refresh_token` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `forward_inbound_credentials` sub block.\n', args=[]),
      new(
        access_token=null,
        id_token=null,
        refresh_token=null
      ):: std.prune(a={
        access_token: access_token,
        id_token: id_token,
        refresh_token: refresh_token,
      }),
    },
    '#new':: d.fn(help='\n`google.identity_platform_config.blocking_functions.new` constructs a new object with attributes and blocks configured for the `blocking_functions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `forward_inbound_credentials` (`list[obj]`): The user credentials to include in the JWT payload that is sent to the registered Blocking Functions. When `null`, the `forward_inbound_credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.blocking_functions.forward_inbound_credentials.new](#fn-blocking_functionsforward_inbound_credentialsnew) constructor.\n  - `triggers` (`list[obj]`): Map of Trigger to event type. Key should be one of the supported event types: &#34;beforeCreate&#34;, &#34;beforeSignIn&#34;. When `null`, the `triggers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.blocking_functions.triggers.new](#fn-blocking_functionstriggersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `blocking_functions` sub block.\n', args=[]),
    new(
      forward_inbound_credentials=null,
      triggers=null
    ):: std.prune(a={
      forward_inbound_credentials: forward_inbound_credentials,
      triggers: triggers,
    }),
    triggers:: {
      '#new':: d.fn(help='\n`google.identity_platform_config.blocking_functions.triggers.new` constructs a new object with attributes and blocks configured for the `triggers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `event_type` (`string`): Set the `event_type` field on the resulting object.\n  - `function_uri` (`string`): HTTP URI trigger for the Cloud Function.\n\n**Returns**:\n  - An attribute object that represents the `triggers` sub block.\n', args=[]),
      new(
        event_type,
        function_uri
      ):: std.prune(a={
        event_type: event_type,
        function_uri: function_uri,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.identity_platform_config.new` injects a new `google_identity_platform_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.identity_platform_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.identity_platform_config` using the reference:\n\n    $._ref.google_identity_platform_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_identity_platform_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `authorized_domains` (`list`): List of domains authorized for OAuth redirects. When `null`, the `authorized_domains` field will be omitted from the resulting object.\n  - `autodelete_anonymous_users` (`bool`): Whether anonymous users will be auto-deleted after a period of 30 days When `null`, the `autodelete_anonymous_users` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `blocking_functions` (`list[obj]`): Configuration related to blocking functions. When `null`, the `blocking_functions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.blocking_functions.new](#fn-blocking_functionsnew) constructor.\n  - `quota` (`list[obj]`): Configuration related to quotas. When `null`, the `quota` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.quota.new](#fn-quotanew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    authorized_domains=null,
    autodelete_anonymous_users=null,
    blocking_functions=null,
    project=null,
    quota=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_identity_platform_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      authorized_domains=authorized_domains,
      autodelete_anonymous_users=autodelete_anonymous_users,
      blocking_functions=blocking_functions,
      project=project,
      quota=quota,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.identity_platform_config.newAttrs` constructs a new object with attributes and blocks configured for the `identity_platform_config`\nTerraform resource.\n\nUnlike [google.identity_platform_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `authorized_domains` (`list`): List of domains authorized for OAuth redirects. When `null`, the `authorized_domains` field will be omitted from the resulting object.\n  - `autodelete_anonymous_users` (`bool`): Whether anonymous users will be auto-deleted after a period of 30 days When `null`, the `autodelete_anonymous_users` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `blocking_functions` (`list[obj]`): Configuration related to blocking functions. When `null`, the `blocking_functions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.blocking_functions.new](#fn-blocking_functionsnew) constructor.\n  - `quota` (`list[obj]`): Configuration related to quotas. When `null`, the `quota` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.quota.new](#fn-quotanew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `identity_platform_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    authorized_domains=null,
    autodelete_anonymous_users=null,
    blocking_functions=null,
    project=null,
    quota=null,
    timeouts=null
  ):: std.prune(a={
    authorized_domains: authorized_domains,
    autodelete_anonymous_users: autodelete_anonymous_users,
    blocking_functions: blocking_functions,
    project: project,
    quota: quota,
    timeouts: timeouts,
  }),
  quota:: {
    '#new':: d.fn(help='\n`google.identity_platform_config.quota.new` constructs a new object with attributes and blocks configured for the `quota`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sign_up_quota_config` (`list[obj]`): Quota for the Signup endpoint, if overwritten. Signup quota is measured in sign ups per project per hour per IP. When `null`, the `sign_up_quota_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_config.quota.sign_up_quota_config.new](#fn-quotasign_up_quota_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `quota` sub block.\n', args=[]),
    new(
      sign_up_quota_config=null
    ):: std.prune(a={
      sign_up_quota_config: sign_up_quota_config,
    }),
    sign_up_quota_config:: {
      '#new':: d.fn(help='\n`google.identity_platform_config.quota.sign_up_quota_config.new` constructs a new object with attributes and blocks configured for the `sign_up_quota_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `quota` (`number`): A sign up APIs quota that customers can override temporarily. When `null`, the `quota` field will be omitted from the resulting object.\n  - `quota_duration` (`string`): How long this quota will be active for. It is measurred in seconds, e.g., Example: &#34;9.615s&#34;. When `null`, the `quota_duration` field will be omitted from the resulting object.\n  - `start_time` (`string`): When this quota will take affect. When `null`, the `start_time` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `sign_up_quota_config` sub block.\n', args=[]),
      new(
        quota=null,
        quota_duration=null,
        start_time=null
      ):: std.prune(a={
        quota: quota,
        quota_duration: quota_duration,
        start_time: start_time,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.identity_platform_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAuthorizedDomains':: d.fn(help='`google.list.withAuthorizedDomains` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the authorized_domains field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `authorized_domains` field.\n', args=[]),
  withAuthorizedDomains(resourceLabel, value): {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          authorized_domains: value,
        },
      },
    },
  },
  '#withAutodeleteAnonymousUsers':: d.fn(help='`google.bool.withAutodeleteAnonymousUsers` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the autodelete_anonymous_users field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `autodelete_anonymous_users` field.\n', args=[]),
  withAutodeleteAnonymousUsers(resourceLabel, value): {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          autodelete_anonymous_users: value,
        },
      },
    },
  },
  '#withBlockingFunctions':: d.fn(help='`google.list[obj].withBlockingFunctions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the blocking_functions field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBlockingFunctionsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `blocking_functions` field.\n', args=[]),
  withBlockingFunctions(resourceLabel, value): {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          blocking_functions: value,
        },
      },
    },
  },
  '#withBlockingFunctionsMixin':: d.fn(help='`google.list[obj].withBlockingFunctionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the blocking_functions field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBlockingFunctions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `blocking_functions` field.\n', args=[]),
  withBlockingFunctionsMixin(resourceLabel, value): {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          blocking_functions+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withQuota':: d.fn(help='`google.list[obj].withQuota` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the quota field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withQuotaMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `quota` field.\n', args=[]),
  withQuota(resourceLabel, value): {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          quota: value,
        },
      },
    },
  },
  '#withQuotaMixin':: d.fn(help='`google.list[obj].withQuotaMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the quota field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withQuota](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `quota` field.\n', args=[]),
  withQuotaMixin(resourceLabel, value): {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          quota+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_identity_platform_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
