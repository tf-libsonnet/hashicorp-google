local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_managed_ssl_certificate', url='', help='`compute_managed_ssl_certificate` represents the `google_compute_managed_ssl_certificate` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  managed:: {
    '#new':: d.fn(help='\n`google.compute_managed_ssl_certificate.managed.new` constructs a new object with attributes and blocks configured for the `managed`\nTerraform sub block.\n\n\n\n**Args**:\n  - `domains` (`list`): Domains for which a managed SSL certificate will be valid.  Currently,\nthere can be up to 100 domains in this list.\n\n**Returns**:\n  - An attribute object that represents the `managed` sub block.\n', args=[]),
    new(
      domains
    ):: std.prune(a={
      domains: domains,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_managed_ssl_certificate.new` injects a new `google_compute_managed_ssl_certificate` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_managed_ssl_certificate.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_managed_ssl_certificate` using the reference:\n\n    $._ref.google_compute_managed_ssl_certificate.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_managed_ssl_certificate.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `certificate_id` (`number`): The unique identifier for the resource. When `null`, the `certificate_id` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n\n\nThese are in the same namespace as the managed SSL certificates. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): Enum field whose value is always \u0026#39;MANAGED\u0026#39; - used to signal to the API\nwhich type this is. Default value: \u0026#34;MANAGED\u0026#34; Possible values: [\u0026#34;MANAGED\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `managed` (`list[obj]`): Properties relevant to a managed certificate.  These will be used if the\ncertificate is managed (as indicated by a value of \u0026#39;MANAGED\u0026#39; in \u0026#39;type\u0026#39;). When `null`, the `managed` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_managed_ssl_certificate.managed.new](#fn-managednew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_managed_ssl_certificate.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    certificate_id=null,
    description=null,
    managed=null,
    name=null,
    project=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_managed_ssl_certificate',
    label=resourceLabel,
    attrs=self.newAttrs(
      certificate_id=certificate_id,
      description=description,
      managed=managed,
      name=name,
      project=project,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_managed_ssl_certificate.newAttrs` constructs a new object with attributes and blocks configured for the `compute_managed_ssl_certificate`\nTerraform resource.\n\nUnlike [google.compute_managed_ssl_certificate.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `certificate_id` (`number`): The unique identifier for the resource. When `null`, the `certificate_id` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n\n\nThese are in the same namespace as the managed SSL certificates. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): Enum field whose value is always &#39;MANAGED&#39; - used to signal to the API\nwhich type this is. Default value: &#34;MANAGED&#34; Possible values: [&#34;MANAGED&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `managed` (`list[obj]`): Properties relevant to a managed certificate.  These will be used if the\ncertificate is managed (as indicated by a value of &#39;MANAGED&#39; in &#39;type&#39;). When `null`, the `managed` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_managed_ssl_certificate.managed.new](#fn-managednew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_managed_ssl_certificate.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_managed_ssl_certificate` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    certificate_id=null,
    description=null,
    managed=null,
    name=null,
    project=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    certificate_id: certificate_id,
    description: description,
    managed: managed,
    name: name,
    project: project,
    timeouts: timeouts,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_managed_ssl_certificate.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withCertificateId':: d.fn(help='`google.number.withCertificateId` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the certificate_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `certificate_id` field.\n', args=[]),
  withCertificateId(resourceLabel, value): {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          certificate_id: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withManaged':: d.fn(help='`google.list[obj].withManaged` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the managed field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withManagedMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `managed` field.\n', args=[]),
  withManaged(resourceLabel, value): {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          managed: value,
        },
      },
    },
  },
  '#withManagedMixin':: d.fn(help='`google.list[obj].withManagedMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the managed field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withManaged](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `managed` field.\n', args=[]),
  withManagedMixin(resourceLabel, value): {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          managed+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_compute_managed_ssl_certificate+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
