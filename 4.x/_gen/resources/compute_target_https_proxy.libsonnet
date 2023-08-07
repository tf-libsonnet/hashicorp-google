local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_target_https_proxy', url='', help='`compute_target_https_proxy` represents the `google_compute_target_https_proxy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_target_https_proxy.new` injects a new `google_compute_target_https_proxy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_target_https_proxy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_target_https_proxy` using the reference:\n\n    $._ref.google_compute_target_https_proxy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_target_https_proxy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `certificate_map` (`string`): A reference to the CertificateMap resource uri that identifies a certificate map\nassociated with the given target proxy. This field can only be set for global target proxies.\nAccepted format is \u0026#39;//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}\u0026#39;. When `null`, the `certificate_map` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `http_keep_alive_timeout_sec` (`number`): Specifies how long to keep a connection open, after completing a response,\nwhile there is no matching traffic (in seconds). If an HTTP keepalive is\nnot specified, a default value (610 seconds) will be used. For Global\nexternal HTTP(S) load balancer, the minimum allowed value is 5 seconds and\nthe maximum allowed value is 1200 seconds. For Global external HTTP(S)\nload balancer (classic), this option is not available publicly. When `null`, the `http_keep_alive_timeout_sec` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `proxy_bind` (`bool`): This field only applies when the forwarding rule that references\nthis target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When `null`, the `proxy_bind` field will be omitted from the resulting object.\n  - `quic_override` (`string`): Specifies the QUIC override policy for this resource. This determines\nwhether the load balancer will attempt to negotiate QUIC with clients\nor not. Can specify one of NONE, ENABLE, or DISABLE. If NONE is\nspecified, Google manages whether QUIC is used. Default value: \u0026#34;NONE\u0026#34; Possible values: [\u0026#34;NONE\u0026#34;, \u0026#34;ENABLE\u0026#34;, \u0026#34;DISABLE\u0026#34;] When `null`, the `quic_override` field will be omitted from the resulting object.\n  - `ssl_certificates` (`list`): A list of SslCertificate resource URLs or Certificate Manager certificate URLs that are used to authenticate\nconnections between users and the load balancer. At least one resource must be specified. When `null`, the `ssl_certificates` field will be omitted from the resulting object.\n  - `ssl_policy` (`string`): A reference to the SslPolicy resource that will be associated with\nthe TargetHttpsProxy resource. If not set, the TargetHttpsProxy\nresource will not have any SSL policy configured. When `null`, the `ssl_policy` field will be omitted from the resulting object.\n  - `url_map` (`string`): A reference to the UrlMap resource that defines the mapping from URL\nto the BackendService.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_target_https_proxy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    url_map,
    certificate_map=null,
    description=null,
    http_keep_alive_timeout_sec=null,
    project=null,
    proxy_bind=null,
    quic_override=null,
    ssl_certificates=null,
    ssl_policy=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_target_https_proxy',
    label=resourceLabel,
    attrs=self.newAttrs(
      certificate_map=certificate_map,
      description=description,
      http_keep_alive_timeout_sec=http_keep_alive_timeout_sec,
      name=name,
      project=project,
      proxy_bind=proxy_bind,
      quic_override=quic_override,
      ssl_certificates=ssl_certificates,
      ssl_policy=ssl_policy,
      timeouts=timeouts,
      url_map=url_map
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_target_https_proxy.newAttrs` constructs a new object with attributes and blocks configured for the `compute_target_https_proxy`\nTerraform resource.\n\nUnlike [google.compute_target_https_proxy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `certificate_map` (`string`): A reference to the CertificateMap resource uri that identifies a certificate map\nassociated with the given target proxy. This field can only be set for global target proxies.\nAccepted format is &#39;//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}&#39;. When `null`, the `certificate_map` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `http_keep_alive_timeout_sec` (`number`): Specifies how long to keep a connection open, after completing a response,\nwhile there is no matching traffic (in seconds). If an HTTP keepalive is\nnot specified, a default value (610 seconds) will be used. For Global\nexternal HTTP(S) load balancer, the minimum allowed value is 5 seconds and\nthe maximum allowed value is 1200 seconds. For Global external HTTP(S)\nload balancer (classic), this option is not available publicly. When `null`, the `http_keep_alive_timeout_sec` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `proxy_bind` (`bool`): This field only applies when the forwarding rule that references\nthis target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When `null`, the `proxy_bind` field will be omitted from the resulting object.\n  - `quic_override` (`string`): Specifies the QUIC override policy for this resource. This determines\nwhether the load balancer will attempt to negotiate QUIC with clients\nor not. Can specify one of NONE, ENABLE, or DISABLE. If NONE is\nspecified, Google manages whether QUIC is used. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;ENABLE&#34;, &#34;DISABLE&#34;] When `null`, the `quic_override` field will be omitted from the resulting object.\n  - `ssl_certificates` (`list`): A list of SslCertificate resource URLs or Certificate Manager certificate URLs that are used to authenticate\nconnections between users and the load balancer. At least one resource must be specified. When `null`, the `ssl_certificates` field will be omitted from the resulting object.\n  - `ssl_policy` (`string`): A reference to the SslPolicy resource that will be associated with\nthe TargetHttpsProxy resource. If not set, the TargetHttpsProxy\nresource will not have any SSL policy configured. When `null`, the `ssl_policy` field will be omitted from the resulting object.\n  - `url_map` (`string`): A reference to the UrlMap resource that defines the mapping from URL\nto the BackendService.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_target_https_proxy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_target_https_proxy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    url_map,
    certificate_map=null,
    description=null,
    http_keep_alive_timeout_sec=null,
    project=null,
    proxy_bind=null,
    quic_override=null,
    ssl_certificates=null,
    ssl_policy=null,
    timeouts=null
  ):: std.prune(a={
    certificate_map: certificate_map,
    description: description,
    http_keep_alive_timeout_sec: http_keep_alive_timeout_sec,
    name: name,
    project: project,
    proxy_bind: proxy_bind,
    quic_override: quic_override,
    ssl_certificates: ssl_certificates,
    ssl_policy: ssl_policy,
    timeouts: timeouts,
    url_map: url_map,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_target_https_proxy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCertificateMap':: d.fn(help='`google.string.withCertificateMap` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the certificate_map field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `certificate_map` field.\n', args=[]),
  withCertificateMap(resourceLabel, value): {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          certificate_map: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withHttpKeepAliveTimeoutSec':: d.fn(help='`google.number.withHttpKeepAliveTimeoutSec` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the http_keep_alive_timeout_sec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `http_keep_alive_timeout_sec` field.\n', args=[]),
  withHttpKeepAliveTimeoutSec(resourceLabel, value): {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          http_keep_alive_timeout_sec: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withProxyBind':: d.fn(help='`google.bool.withProxyBind` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the proxy_bind field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `proxy_bind` field.\n', args=[]),
  withProxyBind(resourceLabel, value): {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          proxy_bind: value,
        },
      },
    },
  },
  '#withQuicOverride':: d.fn(help='`google.string.withQuicOverride` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the quic_override field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `quic_override` field.\n', args=[]),
  withQuicOverride(resourceLabel, value): {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          quic_override: value,
        },
      },
    },
  },
  '#withSslCertificates':: d.fn(help='`google.list.withSslCertificates` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the ssl_certificates field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `ssl_certificates` field.\n', args=[]),
  withSslCertificates(resourceLabel, value): {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          ssl_certificates: value,
        },
      },
    },
  },
  '#withSslPolicy':: d.fn(help='`google.string.withSslPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ssl_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ssl_policy` field.\n', args=[]),
  withSslPolicy(resourceLabel, value): {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          ssl_policy: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUrlMap':: d.fn(help='`google.string.withUrlMap` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the url_map field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `url_map` field.\n', args=[]),
  withUrlMap(resourceLabel, value): {
    resource+: {
      google_compute_target_https_proxy+: {
        [resourceLabel]+: {
          url_map: value,
        },
      },
    },
  },
}
