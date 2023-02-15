local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_region_target_tcp_proxy', url='', help='`compute_region_target_tcp_proxy` represents the `google_compute_region_target_tcp_proxy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_region_target_tcp_proxy.new` injects a new `google_compute_region_target_tcp_proxy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_region_target_tcp_proxy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_region_target_tcp_proxy` using the reference:\n\n    $._ref.google_compute_region_target_tcp_proxy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_region_target_tcp_proxy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `backend_service` (`string`): A reference to the BackendService resource.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `proxy_bind` (`bool`): This field only applies when the forwarding rule that references\nthis target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When `null`, the `proxy_bind` field will be omitted from the resulting object.\n  - `proxy_header` (`string`): Specifies the type of proxy header to append before sending data to\nthe backend. Default value: \u0026#34;NONE\u0026#34; Possible values: [\u0026#34;NONE\u0026#34;, \u0026#34;PROXY_V1\u0026#34;] When `null`, the `proxy_header` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created target TCP proxy should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_target_tcp_proxy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    backend_service,
    name,
    description=null,
    project=null,
    proxy_bind=null,
    proxy_header=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_target_tcp_proxy',
    label=resourceLabel,
    attrs=self.newAttrs(
      backend_service=backend_service,
      description=description,
      name=name,
      project=project,
      proxy_bind=proxy_bind,
      proxy_header=proxy_header,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_region_target_tcp_proxy.newAttrs` constructs a new object with attributes and blocks configured for the `compute_region_target_tcp_proxy`\nTerraform resource.\n\nUnlike [google.compute_region_target_tcp_proxy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `backend_service` (`string`): A reference to the BackendService resource.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `proxy_bind` (`bool`): This field only applies when the forwarding rule that references\nthis target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When `null`, the `proxy_bind` field will be omitted from the resulting object.\n  - `proxy_header` (`string`): Specifies the type of proxy header to append before sending data to\nthe backend. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;PROXY_V1&#34;] When `null`, the `proxy_header` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created target TCP proxy should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_target_tcp_proxy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_region_target_tcp_proxy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    backend_service,
    name,
    description=null,
    project=null,
    proxy_bind=null,
    proxy_header=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    backend_service: backend_service,
    description: description,
    name: name,
    project: project,
    proxy_bind: proxy_bind,
    proxy_header: proxy_header,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_region_target_tcp_proxy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withBackendService':: d.fn(help='`google.string.withBackendService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the backend_service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `backend_service` field.\n', args=[]),
  withBackendService(resourceLabel, value): {
    resource+: {
      google_compute_region_target_tcp_proxy+: {
        [resourceLabel]+: {
          backend_service: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_region_target_tcp_proxy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_region_target_tcp_proxy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_region_target_tcp_proxy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withProxyBind':: d.fn(help='`google.bool.withProxyBind` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the proxy_bind field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `proxy_bind` field.\n', args=[]),
  withProxyBind(resourceLabel, value): {
    resource+: {
      google_compute_region_target_tcp_proxy+: {
        [resourceLabel]+: {
          proxy_bind: value,
        },
      },
    },
  },
  '#withProxyHeader':: d.fn(help='`google.string.withProxyHeader` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the proxy_header field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `proxy_header` field.\n', args=[]),
  withProxyHeader(resourceLabel, value): {
    resource+: {
      google_compute_region_target_tcp_proxy+: {
        [resourceLabel]+: {
          proxy_header: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_region_target_tcp_proxy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_region_target_tcp_proxy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_target_tcp_proxy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
