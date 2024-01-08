local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='sql_user', url='', help='`sql_user` represents the `google_sql_user` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.sql_user.new` injects a new `google_sql_user` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.sql_user.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.sql_user` using the reference:\n\n    $._ref.google_sql_user.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_sql_user.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `deletion_policy` (`string`): The deletion policy for the user. Setting ABANDON allows the resource\n\t\t\t\tto be abandoned rather than deleted. This is useful for Postgres, where users cannot be deleted from the API if they\n\t\t\t\thave been granted SQL roles. Possible values are: \u0026#34;ABANDON\u0026#34;. When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `host` (`string`): The host the user can connect from. This is only supported for MySQL instances. Don\u0026#39;t set this field for PostgreSQL instances. Can be an IP address. Changing this forces a new resource to be created. When `null`, the `host` field will be omitted from the resulting object.\n  - `instance` (`string`): The name of the Cloud SQL instance. Changing this forces a new resource to be created.\n  - `name` (`string`): The name of the user. Changing this forces a new resource to be created.\n  - `password` (`string`): The password for the user. Can be updated. For Postgres instances this is a Required field, unless type is set to\n                either CLOUD_IAM_USER or CLOUD_IAM_SERVICE_ACCOUNT. When `null`, the `password` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The user type. It determines the method to authenticate the user during login.\n                The default is the database\u0026#39;s built-in user type. Flags include \u0026#34;BUILT_IN\u0026#34;, \u0026#34;CLOUD_IAM_USER\u0026#34;, \u0026#34;CLOUD_IAM_GROUP\u0026#34; or \u0026#34;CLOUD_IAM_SERVICE_ACCOUNT\u0026#34;. When `null`, the `type` field will be omitted from the resulting object.\n  - `password_policy` (`list[obj]`): Set the `password_policy` field on the resulting resource block. When `null`, the `password_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_user.password_policy.new](#fn-password_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_user.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    instance,
    name,
    deletion_policy=null,
    host=null,
    password=null,
    password_policy=null,
    project=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_sql_user',
    label=resourceLabel,
    attrs=self.newAttrs(
      deletion_policy=deletion_policy,
      host=host,
      instance=instance,
      name=name,
      password=password,
      password_policy=password_policy,
      project=project,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.sql_user.newAttrs` constructs a new object with attributes and blocks configured for the `sql_user`\nTerraform resource.\n\nUnlike [google.sql_user.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `deletion_policy` (`string`): The deletion policy for the user. Setting ABANDON allows the resource\n\t\t\t\tto be abandoned rather than deleted. This is useful for Postgres, where users cannot be deleted from the API if they\n\t\t\t\thave been granted SQL roles. Possible values are: &#34;ABANDON&#34;. When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `host` (`string`): The host the user can connect from. This is only supported for MySQL instances. Don&#39;t set this field for PostgreSQL instances. Can be an IP address. Changing this forces a new resource to be created. When `null`, the `host` field will be omitted from the resulting object.\n  - `instance` (`string`): The name of the Cloud SQL instance. Changing this forces a new resource to be created.\n  - `name` (`string`): The name of the user. Changing this forces a new resource to be created.\n  - `password` (`string`): The password for the user. Can be updated. For Postgres instances this is a Required field, unless type is set to\n                either CLOUD_IAM_USER or CLOUD_IAM_SERVICE_ACCOUNT. When `null`, the `password` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The user type. It determines the method to authenticate the user during login.\n                The default is the database&#39;s built-in user type. Flags include &#34;BUILT_IN&#34;, &#34;CLOUD_IAM_USER&#34;, &#34;CLOUD_IAM_GROUP&#34; or &#34;CLOUD_IAM_SERVICE_ACCOUNT&#34;. When `null`, the `type` field will be omitted from the resulting object.\n  - `password_policy` (`list[obj]`): Set the `password_policy` field on the resulting object. When `null`, the `password_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_user.password_policy.new](#fn-password_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_user.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `sql_user` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    instance,
    name,
    deletion_policy=null,
    host=null,
    password=null,
    password_policy=null,
    project=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    deletion_policy: deletion_policy,
    host: host,
    instance: instance,
    name: name,
    password: password,
    password_policy: password_policy,
    project: project,
    timeouts: timeouts,
    type: type,
  }),
  password_policy:: {
    '#new':: d.fn(help='\n`google.sql_user.password_policy.new` constructs a new object with attributes and blocks configured for the `password_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_failed_attempts` (`number`): Number of failed attempts allowed before the user get locked. When `null`, the `allowed_failed_attempts` field will be omitted from the resulting object.\n  - `enable_failed_attempts_check` (`bool`): If true, the check that will lock user after too many failed login attempts will be enabled. When `null`, the `enable_failed_attempts_check` field will be omitted from the resulting object.\n  - `enable_password_verification` (`bool`): If true, the user must specify the current password before changing the password. This flag is supported only for MySQL. When `null`, the `enable_password_verification` field will be omitted from the resulting object.\n  - `password_expiration_duration` (`string`): Password expiration duration with one week grace period. When `null`, the `password_expiration_duration` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `password_policy` sub block.\n', args=[]),
    new(
      allowed_failed_attempts=null,
      enable_failed_attempts_check=null,
      enable_password_verification=null,
      password_expiration_duration=null
    ):: std.prune(a={
      allowed_failed_attempts: allowed_failed_attempts,
      enable_failed_attempts_check: enable_failed_attempts_check,
      enable_password_verification: enable_password_verification,
      password_expiration_duration: password_expiration_duration,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.sql_user.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDeletionPolicy':: d.fn(help='`google.string.withDeletionPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the deletion_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `deletion_policy` field.\n', args=[]),
  withDeletionPolicy(resourceLabel, value): {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          deletion_policy: value,
        },
      },
    },
  },
  '#withHost':: d.fn(help='`google.string.withHost` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the host field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `host` field.\n', args=[]),
  withHost(resourceLabel, value): {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          host: value,
        },
      },
    },
  },
  '#withInstance':: d.fn(help='`google.string.withInstance` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance` field.\n', args=[]),
  withInstance(resourceLabel, value): {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPassword':: d.fn(help='`google.string.withPassword` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the password field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `password` field.\n', args=[]),
  withPassword(resourceLabel, value): {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          password: value,
        },
      },
    },
  },
  '#withPasswordPolicy':: d.fn(help='`google.list[obj].withPasswordPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the password_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPasswordPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `password_policy` field.\n', args=[]),
  withPasswordPolicy(resourceLabel, value): {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          password_policy: value,
        },
      },
    },
  },
  '#withPasswordPolicyMixin':: d.fn(help='`google.list[obj].withPasswordPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the password_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPasswordPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `password_policy` field.\n', args=[]),
  withPasswordPolicyMixin(resourceLabel, value): {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          password_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
