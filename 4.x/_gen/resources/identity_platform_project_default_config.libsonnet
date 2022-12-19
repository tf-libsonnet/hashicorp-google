local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='identity_platform_project_default_config', url='', help='`identity_platform_project_default_config` represents the `google_identity_platform_project_default_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.identity_platform_project_default_config.new` injects a new `google_identity_platform_project_default_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.identity_platform_project_default_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.identity_platform_project_default_config` using the reference:\n\n    $._ref.google_identity_platform_project_default_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_identity_platform_project_default_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `sign_in` (`list[obj]`): Configuration related to local sign in methods. When `null`, the `sign_in` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_project_default_config.sign_in.new](#fn-sign_innew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_project_default_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    project=null,
    sign_in=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_identity_platform_project_default_config',
    label=resourceLabel,
    attrs=self.newAttrs(project=project, sign_in=sign_in, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.identity_platform_project_default_config.newAttrs` constructs a new object with attributes and blocks configured for the `identity_platform_project_default_config`\nTerraform resource.\n\nUnlike [google.identity_platform_project_default_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `sign_in` (`list[obj]`): Configuration related to local sign in methods. When `null`, the `sign_in` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_project_default_config.sign_in.new](#fn-sign_innew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_project_default_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `identity_platform_project_default_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    project=null,
    sign_in=null,
    timeouts=null
  ):: std.prune(a={
    project: project,
    sign_in: sign_in,
    timeouts: timeouts,
  }),
  sign_in:: {
    anonymous:: {
      '#new':: d.fn(help='\n`google.identity_platform_project_default_config.sign_in.anonymous.new` constructs a new object with attributes and blocks configured for the `anonymous`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether anonymous user auth is enabled for the project or not.\n\n**Returns**:\n  - An attribute object that represents the `anonymous` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    email:: {
      '#new':: d.fn(help='\n`google.identity_platform_project_default_config.sign_in.email.new` constructs a new object with attributes and blocks configured for the `email`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether email auth is enabled for the project or not. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `password_required` (`bool`): Whether a password is required for email auth or not. If true, both an email and \npassword must be provided to sign in. If false, a user may sign in via either \nemail/password or email link. When `null`, the `password_required` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `email` sub block.\n', args=[]),
      new(
        enabled=null,
        password_required=null
      ):: std.prune(a={
        enabled: enabled,
        password_required: password_required,
      }),
    },
    '#new':: d.fn(help='\n`google.identity_platform_project_default_config.sign_in.new` constructs a new object with attributes and blocks configured for the `sign_in`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_duplicate_emails` (`bool`): Whether to allow more than one account to have the same email. When `null`, the `allow_duplicate_emails` field will be omitted from the resulting object.\n  - `anonymous` (`list[obj]`): Configuration options related to authenticating an anonymous user. When `null`, the `anonymous` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_project_default_config.sign_in.anonymous.new](#fn-anonymousnew) constructor.\n  - `email` (`list[obj]`): Configuration options related to authenticating a user by their email address. When `null`, the `email` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_project_default_config.sign_in.email.new](#fn-emailnew) constructor.\n  - `phone_number` (`list[obj]`): Configuration options related to authenticated a user by their phone number. When `null`, the `phone_number` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.identity_platform_project_default_config.sign_in.phone_number.new](#fn-phone_numbernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `sign_in` sub block.\n', args=[]),
    new(
      allow_duplicate_emails=null,
      anonymous=null,
      email=null,
      phone_number=null
    ):: std.prune(a={
      allow_duplicate_emails: allow_duplicate_emails,
      anonymous: anonymous,
      email: email,
      phone_number: phone_number,
    }),
    phone_number:: {
      '#new':: d.fn(help='\n`google.identity_platform_project_default_config.sign_in.phone_number.new` constructs a new object with attributes and blocks configured for the `phone_number`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether phone number auth is enabled for the project or not. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `test_phone_numbers` (`obj`): A map of &lt;test phone number, fake code&gt; that can be used for phone auth testing. When `null`, the `test_phone_numbers` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `phone_number` sub block.\n', args=[]),
      new(
        enabled=null,
        test_phone_numbers=null
      ):: std.prune(a={
        enabled: enabled,
        test_phone_numbers: test_phone_numbers,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.identity_platform_project_default_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_identity_platform_project_default_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSignIn':: d.fn(help='`google.list[obj].withSignIn` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the sign_in field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSignInMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `sign_in` field.\n', args=[]),
  withSignIn(resourceLabel, value): {
    resource+: {
      google_identity_platform_project_default_config+: {
        [resourceLabel]+: {
          sign_in: value,
        },
      },
    },
  },
  '#withSignInMixin':: d.fn(help='`google.list[obj].withSignInMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the sign_in field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSignIn](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `sign_in` field.\n', args=[]),
  withSignInMixin(resourceLabel, value): {
    resource+: {
      google_identity_platform_project_default_config+: {
        [resourceLabel]+: {
          sign_in+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_identity_platform_project_default_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_identity_platform_project_default_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
