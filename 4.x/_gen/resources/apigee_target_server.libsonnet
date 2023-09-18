local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_target_server', url='', help='`apigee_target_server` represents the `google_apigee_target_server` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.apigee_target_server.new` injects a new `google_apigee_target_server` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_target_server.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_target_server` using the reference:\n\n    $._ref.google_apigee_target_server.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_target_server.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A human-readable description of this TargetServer. When `null`, the `description` field will be omitted from the resulting object.\n  - `env_id` (`string`): The Apigee environment group associated with the Apigee environment,\nin the format \u0026#39;organizations/{{org_name}}/environments/{{env_name}}\u0026#39;.\n  - `host` (`string`): The host name this target connects to. Value must be a valid hostname as described by RFC-1123.\n  - `is_enabled` (`bool`): Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true. When `null`, the `is_enabled` field will be omitted from the resulting object.\n  - `name` (`string`): The resource id of this reference. Values must match the regular expression [\\w\\s-.]\u0026#43;.\n  - `port` (`number`): The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.\n  - `protocol` (`string`): Immutable. The protocol used by this TargetServer. Possible values: [\u0026#34;HTTP\u0026#34;, \u0026#34;HTTP2\u0026#34;, \u0026#34;GRPC_TARGET\u0026#34;, \u0026#34;GRPC\u0026#34;, \u0026#34;EXTERNAL_CALLOUT\u0026#34;] When `null`, the `protocol` field will be omitted from the resulting object.\n  - `s_sl_info` (`list[obj]`): Specifies TLS configuration info for this TargetServer. The JSON name is sSLInfo for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration. When `null`, the `s_sl_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_target_server.s_sl_info.new](#fn-s_sl_infonew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_target_server.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    env_id,
    host,
    name,
    port,
    description=null,
    is_enabled=null,
    protocol=null,
    s_sl_info=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_target_server',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      env_id=env_id,
      host=host,
      is_enabled=is_enabled,
      name=name,
      port=port,
      protocol=protocol,
      s_sl_info=s_sl_info,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_target_server.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_target_server`\nTerraform resource.\n\nUnlike [google.apigee_target_server.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A human-readable description of this TargetServer. When `null`, the `description` field will be omitted from the resulting object.\n  - `env_id` (`string`): The Apigee environment group associated with the Apigee environment,\nin the format &#39;organizations/{{org_name}}/environments/{{env_name}}&#39;.\n  - `host` (`string`): The host name this target connects to. Value must be a valid hostname as described by RFC-1123.\n  - `is_enabled` (`bool`): Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true. When `null`, the `is_enabled` field will be omitted from the resulting object.\n  - `name` (`string`): The resource id of this reference. Values must match the regular expression [\\w\\s-.]&#43;.\n  - `port` (`number`): The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.\n  - `protocol` (`string`): Immutable. The protocol used by this TargetServer. Possible values: [&#34;HTTP&#34;, &#34;HTTP2&#34;, &#34;GRPC_TARGET&#34;, &#34;GRPC&#34;, &#34;EXTERNAL_CALLOUT&#34;] When `null`, the `protocol` field will be omitted from the resulting object.\n  - `s_sl_info` (`list[obj]`): Specifies TLS configuration info for this TargetServer. The JSON name is sSLInfo for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration. When `null`, the `s_sl_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_target_server.s_sl_info.new](#fn-s_sl_infonew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_target_server.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_target_server` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    env_id,
    host,
    name,
    port,
    description=null,
    is_enabled=null,
    protocol=null,
    s_sl_info=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    env_id: env_id,
    host: host,
    is_enabled: is_enabled,
    name: name,
    port: port,
    protocol: protocol,
    s_sl_info: s_sl_info,
    timeouts: timeouts,
  }),
  s_sl_info:: {
    common_name:: {
      '#new':: d.fn(help='\n`google.apigee_target_server.s_sl_info.common_name.new` constructs a new object with attributes and blocks configured for the `common_name`\nTerraform sub block.\n\n\n\n**Args**:\n  - `value` (`string`): The TLS Common Name string of the certificate. When `null`, the `value` field will be omitted from the resulting object.\n  - `wildcard_match` (`bool`): Indicates whether the cert should be matched against as a wildcard cert. When `null`, the `wildcard_match` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `common_name` sub block.\n', args=[]),
      new(
        value=null,
        wildcard_match=null
      ):: std.prune(a={
        value: value,
        wildcard_match: wildcard_match,
      }),
    },
    '#new':: d.fn(help='\n`google.apigee_target_server.s_sl_info.new` constructs a new object with attributes and blocks configured for the `s_sl_info`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ciphers` (`list`): The SSL/TLS cipher suites to be used. For programmable proxies, it must be one of the cipher suite names listed in: http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites. For configurable proxies, it must follow the configuration specified in: https://commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-suite-configuration. This setting has no effect for configurable proxies when negotiating TLS 1.3. When `null`, the `ciphers` field will be omitted from the resulting object.\n  - `client_auth_enabled` (`bool`): Enables two-way TLS. When `null`, the `client_auth_enabled` field will be omitted from the resulting object.\n  - `enabled` (`bool`): Enables TLS. If false, neither one-way nor two-way TLS will be enabled.\n  - `ignore_validation_errors` (`bool`): If true, Edge ignores TLS certificate errors. Valid when configuring TLS for target servers and target endpoints, and when configuring virtual hosts that use 2-way TLS. When used with a target endpoint/target server, if the backend system uses SNI and returns a cert with a subject Distinguished Name (DN) that does not match the hostname, there is no way to ignore the error and the connection fails. When `null`, the `ignore_validation_errors` field will be omitted from the resulting object.\n  - `key_alias` (`string`): Required if clientAuthEnabled is true. The resource ID for the alias containing the private key and cert. When `null`, the `key_alias` field will be omitted from the resulting object.\n  - `key_store` (`string`): Required if clientAuthEnabled is true. The resource ID of the keystore. When `null`, the `key_store` field will be omitted from the resulting object.\n  - `protocols` (`list`): The TLS versioins to be used. When `null`, the `protocols` field will be omitted from the resulting object.\n  - `trust_store` (`string`): The resource ID of the truststore. When `null`, the `trust_store` field will be omitted from the resulting object.\n  - `common_name` (`list[obj]`): The TLS Common Name of the certificate. When `null`, the `common_name` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_target_server.s_sl_info.common_name.new](#fn-s_sl_infocommon_namenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `s_sl_info` sub block.\n', args=[]),
    new(
      enabled,
      ciphers=null,
      client_auth_enabled=null,
      common_name=null,
      ignore_validation_errors=null,
      key_alias=null,
      key_store=null,
      protocols=null,
      trust_store=null
    ):: std.prune(a={
      ciphers: ciphers,
      client_auth_enabled: client_auth_enabled,
      common_name: common_name,
      enabled: enabled,
      ignore_validation_errors: ignore_validation_errors,
      key_alias: key_alias,
      key_store: key_store,
      protocols: protocols,
      trust_store: trust_store,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_target_server.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_apigee_target_server+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEnvId':: d.fn(help='`google.string.withEnvId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the env_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `env_id` field.\n', args=[]),
  withEnvId(resourceLabel, value): {
    resource+: {
      google_apigee_target_server+: {
        [resourceLabel]+: {
          env_id: value,
        },
      },
    },
  },
  '#withHost':: d.fn(help='`google.string.withHost` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the host field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `host` field.\n', args=[]),
  withHost(resourceLabel, value): {
    resource+: {
      google_apigee_target_server+: {
        [resourceLabel]+: {
          host: value,
        },
      },
    },
  },
  '#withIsEnabled':: d.fn(help='`google.bool.withIsEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the is_enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `is_enabled` field.\n', args=[]),
  withIsEnabled(resourceLabel, value): {
    resource+: {
      google_apigee_target_server+: {
        [resourceLabel]+: {
          is_enabled: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_apigee_target_server+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPort':: d.fn(help='`google.number.withPort` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the port field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `port` field.\n', args=[]),
  withPort(resourceLabel, value): {
    resource+: {
      google_apigee_target_server+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  '#withProtocol':: d.fn(help='`google.string.withProtocol` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the protocol field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `protocol` field.\n', args=[]),
  withProtocol(resourceLabel, value): {
    resource+: {
      google_apigee_target_server+: {
        [resourceLabel]+: {
          protocol: value,
        },
      },
    },
  },
  '#withSSlInfo':: d.fn(help='`google.list[obj].withSSlInfo` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the s_sl_info field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSSlInfoMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `s_sl_info` field.\n', args=[]),
  withSSlInfo(resourceLabel, value): {
    resource+: {
      google_apigee_target_server+: {
        [resourceLabel]+: {
          s_sl_info: value,
        },
      },
    },
  },
  '#withSSlInfoMixin':: d.fn(help='`google.list[obj].withSSlInfoMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the s_sl_info field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSSlInfo](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `s_sl_info` field.\n', args=[]),
  withSSlInfoMixin(resourceLabel, value): {
    resource+: {
      google_apigee_target_server+: {
        [resourceLabel]+: {
          s_sl_info+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_apigee_target_server+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_apigee_target_server+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
