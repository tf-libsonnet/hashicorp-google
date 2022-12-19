local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloudiot_device', url='', help='`cloudiot_device` represents the `google_cloudiot_device` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  credentials:: {
    '#new':: d.fn(help='\n`google.cloudiot_device.credentials.new` constructs a new object with attributes and blocks configured for the `credentials`\nTerraform sub block.\n\n\n\n**Args**:\n  - `expiration_time` (`string`): The time at which this credential becomes invalid. When `null`, the `expiration_time` field will be omitted from the resulting object.\n  - `public_key` (`list[obj]`): A public key used to verify the signature of JSON Web Tokens (JWTs). When `null`, the `public_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_device.credentials.public_key.new](#fn-credentialspublic_keynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `credentials` sub block.\n', args=[]),
    new(
      expiration_time=null,
      public_key=null
    ):: std.prune(a={
      expiration_time: expiration_time,
      public_key: public_key,
    }),
    public_key:: {
      '#new':: d.fn(help='\n`google.cloudiot_device.credentials.public_key.new` constructs a new object with attributes and blocks configured for the `public_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `format` (`string`): The format of the key. Possible values: [&#34;RSA_PEM&#34;, &#34;RSA_X509_PEM&#34;, &#34;ES256_PEM&#34;, &#34;ES256_X509_PEM&#34;]\n  - `key` (`string`): The key data.\n\n**Returns**:\n  - An attribute object that represents the `public_key` sub block.\n', args=[]),
      new(
        format,
        key
      ):: std.prune(a={
        format: format,
        key: key,
      }),
    },
  },
  gateway_config:: {
    '#new':: d.fn(help='\n`google.cloudiot_device.gateway_config.new` constructs a new object with attributes and blocks configured for the `gateway_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gateway_auth_method` (`string`): Indicates whether the device is a gateway. Possible values: [&#34;ASSOCIATION_ONLY&#34;, &#34;DEVICE_AUTH_TOKEN_ONLY&#34;, &#34;ASSOCIATION_AND_DEVICE_AUTH_TOKEN&#34;] When `null`, the `gateway_auth_method` field will be omitted from the resulting object.\n  - `gateway_type` (`string`): Indicates whether the device is a gateway. Default value: &#34;NON_GATEWAY&#34; Possible values: [&#34;GATEWAY&#34;, &#34;NON_GATEWAY&#34;] When `null`, the `gateway_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `gateway_config` sub block.\n', args=[]),
    new(
      gateway_auth_method=null,
      gateway_type=null
    ):: std.prune(a={
      gateway_auth_method: gateway_auth_method,
      gateway_type: gateway_type,
    }),
  },
  '#new':: d.fn(help="\n`google.cloudiot_device.new` injects a new `google_cloudiot_device` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.cloudiot_device.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.cloudiot_device` using the reference:\n\n    $._ref.google_cloudiot_device.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_cloudiot_device.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `blocked` (`bool`): If a device is blocked, connections or requests from this device will fail. When `null`, the `blocked` field will be omitted from the resulting object.\n  - `log_level` (`string`): The logging verbosity for device activity. Possible values: [\u0026#34;NONE\u0026#34;, \u0026#34;ERROR\u0026#34;, \u0026#34;INFO\u0026#34;, \u0026#34;DEBUG\u0026#34;] When `null`, the `log_level` field will be omitted from the resulting object.\n  - `metadata` (`obj`): The metadata key-value pairs assigned to the device. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `name` (`string`): A unique name for the resource.\n  - `registry` (`string`): The name of the device registry where this device should be created.\n  - `credentials` (`list[obj]`): The credentials used to authenticate this device. When `null`, the `credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_device.credentials.new](#fn-credentialsnew) constructor.\n  - `gateway_config` (`list[obj]`): Gateway-related configuration and state. When `null`, the `gateway_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_device.gateway_config.new](#fn-gateway_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_device.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    registry,
    blocked=null,
    credentials=null,
    gateway_config=null,
    log_level=null,
    metadata=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudiot_device',
    label=resourceLabel,
    attrs=self.newAttrs(
      blocked=blocked,
      credentials=credentials,
      gateway_config=gateway_config,
      log_level=log_level,
      metadata=metadata,
      name=name,
      registry=registry,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.cloudiot_device.newAttrs` constructs a new object with attributes and blocks configured for the `cloudiot_device`\nTerraform resource.\n\nUnlike [google.cloudiot_device.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `blocked` (`bool`): If a device is blocked, connections or requests from this device will fail. When `null`, the `blocked` field will be omitted from the resulting object.\n  - `log_level` (`string`): The logging verbosity for device activity. Possible values: [&#34;NONE&#34;, &#34;ERROR&#34;, &#34;INFO&#34;, &#34;DEBUG&#34;] When `null`, the `log_level` field will be omitted from the resulting object.\n  - `metadata` (`obj`): The metadata key-value pairs assigned to the device. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `name` (`string`): A unique name for the resource.\n  - `registry` (`string`): The name of the device registry where this device should be created.\n  - `credentials` (`list[obj]`): The credentials used to authenticate this device. When `null`, the `credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_device.credentials.new](#fn-credentialsnew) constructor.\n  - `gateway_config` (`list[obj]`): Gateway-related configuration and state. When `null`, the `gateway_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_device.gateway_config.new](#fn-gateway_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_device.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudiot_device` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    registry,
    blocked=null,
    credentials=null,
    gateway_config=null,
    log_level=null,
    metadata=null,
    timeouts=null
  ):: std.prune(a={
    blocked: blocked,
    credentials: credentials,
    gateway_config: gateway_config,
    log_level: log_level,
    metadata: metadata,
    name: name,
    registry: registry,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.cloudiot_device.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBlocked':: d.fn(help='`google.bool.withBlocked` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the blocked field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `blocked` field.\n', args=[]),
  withBlocked(resourceLabel, value): {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          blocked: value,
        },
      },
    },
  },
  '#withCredentials':: d.fn(help='`google.list[obj].withCredentials` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the credentials field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCredentialsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `credentials` field.\n', args=[]),
  withCredentials(resourceLabel, value): {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          credentials: value,
        },
      },
    },
  },
  '#withCredentialsMixin':: d.fn(help='`google.list[obj].withCredentialsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the credentials field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCredentials](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `credentials` field.\n', args=[]),
  withCredentialsMixin(resourceLabel, value): {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          credentials+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withGatewayConfig':: d.fn(help='`google.list[obj].withGatewayConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gateway_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGatewayConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gateway_config` field.\n', args=[]),
  withGatewayConfig(resourceLabel, value): {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          gateway_config: value,
        },
      },
    },
  },
  '#withGatewayConfigMixin':: d.fn(help='`google.list[obj].withGatewayConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gateway_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGatewayConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gateway_config` field.\n', args=[]),
  withGatewayConfigMixin(resourceLabel, value): {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          gateway_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLogLevel':: d.fn(help='`google.string.withLogLevel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the log_level field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `log_level` field.\n', args=[]),
  withLogLevel(resourceLabel, value): {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          log_level: value,
        },
      },
    },
  },
  '#withMetadata':: d.fn(help='`google.obj.withMetadata` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the metadata field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `metadata` field.\n', args=[]),
  withMetadata(resourceLabel, value): {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withRegistry':: d.fn(help='`google.string.withRegistry` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the registry field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `registry` field.\n', args=[]),
  withRegistry(resourceLabel, value): {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          registry: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
