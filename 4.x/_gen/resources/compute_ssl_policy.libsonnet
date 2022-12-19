local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_ssl_policy', url='', help='`compute_ssl_policy` represents the `google_compute_ssl_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_ssl_policy.new` injects a new `google_compute_ssl_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_ssl_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_ssl_policy` using the reference:\n\n    $._ref.google_compute_ssl_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_ssl_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `custom_features` (`list`): Profile specifies the set of SSL features that can be used by the\nload balancer when negotiating SSL with clients. This can be one of\n\u0026#39;COMPATIBLE\u0026#39;, \u0026#39;MODERN\u0026#39;, \u0026#39;RESTRICTED\u0026#39;, or \u0026#39;CUSTOM\u0026#39;. If using \u0026#39;CUSTOM\u0026#39;,\nthe set of SSL features to enable must be specified in the\n\u0026#39;customFeatures\u0026#39; field.\n\nSee the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)\nfor which ciphers are available to use. **Note**: this argument\n*must* be present when using the \u0026#39;CUSTOM\u0026#39; profile. This argument\n*must not* be present when using any other profile. When `null`, the `custom_features` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `min_tls_version` (`string`): The minimum version of SSL protocol that can be used by the clients\nto establish a connection with the load balancer. Default value: \u0026#34;TLS_1_0\u0026#34; Possible values: [\u0026#34;TLS_1_0\u0026#34;, \u0026#34;TLS_1_1\u0026#34;, \u0026#34;TLS_1_2\u0026#34;] When `null`, the `min_tls_version` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `profile` (`string`): Profile specifies the set of SSL features that can be used by the\nload balancer when negotiating SSL with clients. If using \u0026#39;CUSTOM\u0026#39;,\nthe set of SSL features to enable must be specified in the\n\u0026#39;customFeatures\u0026#39; field.\n\nSee the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)\nfor information on what cipher suites each profile provides. If\n\u0026#39;CUSTOM\u0026#39; is used, the \u0026#39;custom_features\u0026#39; attribute **must be set**. Default value: \u0026#34;COMPATIBLE\u0026#34; Possible values: [\u0026#34;COMPATIBLE\u0026#34;, \u0026#34;MODERN\u0026#34;, \u0026#34;RESTRICTED\u0026#34;, \u0026#34;CUSTOM\u0026#34;] When `null`, the `profile` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_ssl_policy.timeouts.new](#fn-computesslpolicytimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    custom_features=null,
    description=null,
    min_tls_version=null,
    profile=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_ssl_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      custom_features=custom_features,
      description=description,
      min_tls_version=min_tls_version,
      name=name,
      profile=profile,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_ssl_policy.newAttrs` constructs a new object with attributes and blocks configured for the `compute_ssl_policy`\nTerraform resource.\n\nUnlike [google.compute_ssl_policy.new](#fn-computesslpolicynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `custom_features` (`list`): Profile specifies the set of SSL features that can be used by the\nload balancer when negotiating SSL with clients. This can be one of\n&#39;COMPATIBLE&#39;, &#39;MODERN&#39;, &#39;RESTRICTED&#39;, or &#39;CUSTOM&#39;. If using &#39;CUSTOM&#39;,\nthe set of SSL features to enable must be specified in the\n&#39;customFeatures&#39; field.\n\nSee the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)\nfor which ciphers are available to use. **Note**: this argument\n*must* be present when using the &#39;CUSTOM&#39; profile. This argument\n*must not* be present when using any other profile. When `null`, the `custom_features` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `min_tls_version` (`string`): The minimum version of SSL protocol that can be used by the clients\nto establish a connection with the load balancer. Default value: &#34;TLS_1_0&#34; Possible values: [&#34;TLS_1_0&#34;, &#34;TLS_1_1&#34;, &#34;TLS_1_2&#34;] When `null`, the `min_tls_version` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `profile` (`string`): Profile specifies the set of SSL features that can be used by the\nload balancer when negotiating SSL with clients. If using &#39;CUSTOM&#39;,\nthe set of SSL features to enable must be specified in the\n&#39;customFeatures&#39; field.\n\nSee the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)\nfor information on what cipher suites each profile provides. If\n&#39;CUSTOM&#39; is used, the &#39;custom_features&#39; attribute **must be set**. Default value: &#34;COMPATIBLE&#34; Possible values: [&#34;COMPATIBLE&#34;, &#34;MODERN&#34;, &#34;RESTRICTED&#34;, &#34;CUSTOM&#34;] When `null`, the `profile` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_ssl_policy.timeouts.new](#fn-computesslpolicytimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_ssl_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    custom_features=null,
    description=null,
    min_tls_version=null,
    profile=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    custom_features: custom_features,
    description: description,
    min_tls_version: min_tls_version,
    name: name,
    profile: profile,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_ssl_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCustomFeatures':: d.fn(help='`google.list.withCustomFeatures` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the custom_features field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `custom_features` field.\n', args=[]),
  withCustomFeatures(resourceLabel, value): {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          custom_features: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withMinTlsVersion':: d.fn(help='`google.string.withMinTlsVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the min_tls_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `min_tls_version` field.\n', args=[]),
  withMinTlsVersion(resourceLabel, value): {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          min_tls_version: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProfile':: d.fn(help='`google.string.withProfile` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the profile field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `profile` field.\n', args=[]),
  withProfile(resourceLabel, value): {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          profile: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_ssl_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
