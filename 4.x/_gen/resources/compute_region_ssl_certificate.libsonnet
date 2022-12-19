local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_region_ssl_certificate', url='', help='`compute_region_ssl_certificate` represents the `google_compute_region_ssl_certificate` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_region_ssl_certificate.new` injects a new `google_compute_region_ssl_certificate` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_region_ssl_certificate.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_region_ssl_certificate` using the reference:\n\n    $._ref.google_compute_region_ssl_certificate.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_region_ssl_certificate.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `certificate` (`string`): The certificate in PEM format.\nThe certificate chain must be no greater than 5 certs long.\nThe chain must include at least one intermediate cert.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n\n\nThese are in the same namespace as the managed SSL certificates. When `null`, the `name` field will be omitted from the resulting object.\n  - `name_prefix` (`string`): Creates a unique name beginning with the specified prefix. Conflicts with name. When `null`, the `name_prefix` field will be omitted from the resulting object.\n  - `private_key` (`string`): The write-only private key in PEM format.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created regional ssl certificate should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_ssl_certificate.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    certificate,
    private_key,
    description=null,
    name=null,
    name_prefix=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_ssl_certificate',
    label=resourceLabel,
    attrs=self.newAttrs(
      certificate=certificate,
      description=description,
      name=name,
      name_prefix=name_prefix,
      private_key=private_key,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_region_ssl_certificate.newAttrs` constructs a new object with attributes and blocks configured for the `compute_region_ssl_certificate`\nTerraform resource.\n\nUnlike [google.compute_region_ssl_certificate.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `certificate` (`string`): The certificate in PEM format.\nThe certificate chain must be no greater than 5 certs long.\nThe chain must include at least one intermediate cert.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n\n\nThese are in the same namespace as the managed SSL certificates. When `null`, the `name` field will be omitted from the resulting object.\n  - `name_prefix` (`string`): Creates a unique name beginning with the specified prefix. Conflicts with name. When `null`, the `name_prefix` field will be omitted from the resulting object.\n  - `private_key` (`string`): The write-only private key in PEM format.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created regional ssl certificate should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_ssl_certificate.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_region_ssl_certificate` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    certificate,
    private_key,
    description=null,
    name=null,
    name_prefix=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    certificate: certificate,
    description: description,
    name: name,
    name_prefix: name_prefix,
    private_key: private_key,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_region_ssl_certificate.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withCertificate':: d.fn(help='`google.string.withCertificate` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the certificate field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `certificate` field.\n', args=[]),
  withCertificate(resourceLabel, value): {
    resource+: {
      google_compute_region_ssl_certificate+: {
        [resourceLabel]+: {
          certificate: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_region_ssl_certificate+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_region_ssl_certificate+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNamePrefix':: d.fn(help='`google.string.withNamePrefix` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name_prefix field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name_prefix` field.\n', args=[]),
  withNamePrefix(resourceLabel, value): {
    resource+: {
      google_compute_region_ssl_certificate+: {
        [resourceLabel]+: {
          name_prefix: value,
        },
      },
    },
  },
  '#withPrivateKey':: d.fn(help='`google.string.withPrivateKey` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the private_key field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `private_key` field.\n', args=[]),
  withPrivateKey(resourceLabel, value): {
    resource+: {
      google_compute_region_ssl_certificate+: {
        [resourceLabel]+: {
          private_key: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_region_ssl_certificate+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_region_ssl_certificate+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_region_ssl_certificate+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_ssl_certificate+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
