local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_global_address', url='', help='`compute_global_address` represents the `google_compute_global_address` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_global_address.new` injects a new `google_compute_global_address` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_global_address.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_global_address` using the reference:\n\n    $._ref.google_compute_global_address.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_global_address.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `address` (`string`): The IP address or beginning of the address range represented by this\nresource. This can be supplied as an input to reserve a specific\naddress or omitted to allow GCP to choose a valid one for you. When `null`, the `address` field will be omitted from the resulting object.\n  - `address_type` (`string`): The type of the address to reserve.\n\n* EXTERNAL indicates public/external single IP address.\n* INTERNAL indicates internal IP ranges belonging to some network. Default value: \u0026#34;EXTERNAL\u0026#34; Possible values: [\u0026#34;EXTERNAL\u0026#34;, \u0026#34;INTERNAL\u0026#34;] When `null`, the `address_type` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `ip_version` (`string`): The IP Version that will be used by this address. The default value is \u0026#39;IPV4\u0026#39;. Possible values: [\u0026#34;IPV4\u0026#34;, \u0026#34;IPV6\u0026#34;] When `null`, the `ip_version` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `network` (`string`): The URL of the network in which to reserve the IP range. The IP range\nmust be in RFC1918 space. The network cannot be deleted if there are\nany reserved IP ranges referring to it.\n\nThis should only be set when using an Internal address. When `null`, the `network` field will be omitted from the resulting object.\n  - `prefix_length` (`number`): The prefix length of the IP range. If not present, it means the\naddress field is a single IP address.\n\nThis field is not applicable to addresses with addressType=EXTERNAL,\nor addressType=INTERNAL when purpose=PRIVATE_SERVICE_CONNECT When `null`, the `prefix_length` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `purpose` (`string`): The purpose of the resource. Possible values include:\n\n* VPC_PEERING - for peer networks\n\n* PRIVATE_SERVICE_CONNECT - for ([Beta](https://terraform.io/docs/providers/google/guides/provider_versions.html) only) Private Service Connect networks When `null`, the `purpose` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_address.timeouts.new](#fn-compute_global_addresstimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    address=null,
    address_type=null,
    description=null,
    ip_version=null,
    network=null,
    prefix_length=null,
    project=null,
    purpose=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_global_address',
    label=resourceLabel,
    attrs=self.newAttrs(
      address=address,
      address_type=address_type,
      description=description,
      ip_version=ip_version,
      name=name,
      network=network,
      prefix_length=prefix_length,
      project=project,
      purpose=purpose,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_global_address.newAttrs` constructs a new object with attributes and blocks configured for the `compute_global_address`\nTerraform resource.\n\nUnlike [google.compute_global_address.new](#fn-compute_global_addressnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `address` (`string`): The IP address or beginning of the address range represented by this\nresource. This can be supplied as an input to reserve a specific\naddress or omitted to allow GCP to choose a valid one for you. When `null`, the `address` field will be omitted from the resulting object.\n  - `address_type` (`string`): The type of the address to reserve.\n\n* EXTERNAL indicates public/external single IP address.\n* INTERNAL indicates internal IP ranges belonging to some network. Default value: &#34;EXTERNAL&#34; Possible values: [&#34;EXTERNAL&#34;, &#34;INTERNAL&#34;] When `null`, the `address_type` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `ip_version` (`string`): The IP Version that will be used by this address. The default value is &#39;IPV4&#39;. Possible values: [&#34;IPV4&#34;, &#34;IPV6&#34;] When `null`, the `ip_version` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `network` (`string`): The URL of the network in which to reserve the IP range. The IP range\nmust be in RFC1918 space. The network cannot be deleted if there are\nany reserved IP ranges referring to it.\n\nThis should only be set when using an Internal address. When `null`, the `network` field will be omitted from the resulting object.\n  - `prefix_length` (`number`): The prefix length of the IP range. If not present, it means the\naddress field is a single IP address.\n\nThis field is not applicable to addresses with addressType=EXTERNAL,\nor addressType=INTERNAL when purpose=PRIVATE_SERVICE_CONNECT When `null`, the `prefix_length` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `purpose` (`string`): The purpose of the resource. Possible values include:\n\n* VPC_PEERING - for peer networks\n\n* PRIVATE_SERVICE_CONNECT - for ([Beta](https://terraform.io/docs/providers/google/guides/provider_versions.html) only) Private Service Connect networks When `null`, the `purpose` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_address.timeouts.new](#fn-compute_global_addresstimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_global_address` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    address=null,
    address_type=null,
    description=null,
    ip_version=null,
    network=null,
    prefix_length=null,
    project=null,
    purpose=null,
    timeouts=null
  ):: std.prune(a={
    address: address,
    address_type: address_type,
    description: description,
    ip_version: ip_version,
    name: name,
    network: network,
    prefix_length: prefix_length,
    project: project,
    purpose: purpose,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_global_address.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withAddress':: d.fn(help='`google.string.withAddress` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the address field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `address` field.\n', args=[]),
  withAddress(resourceLabel, value): {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          address: value,
        },
      },
    },
  },
  '#withAddressType':: d.fn(help='`google.string.withAddressType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the address_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `address_type` field.\n', args=[]),
  withAddressType(resourceLabel, value): {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          address_type: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withIpVersion':: d.fn(help='`google.string.withIpVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_version` field.\n', args=[]),
  withIpVersion(resourceLabel, value): {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          ip_version: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withPrefixLength':: d.fn(help='`google.number.withPrefixLength` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the prefix_length field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `prefix_length` field.\n', args=[]),
  withPrefixLength(resourceLabel, value): {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          prefix_length: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPurpose':: d.fn(help='`google.string.withPurpose` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the purpose field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `purpose` field.\n', args=[]),
  withPurpose(resourceLabel, value): {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          purpose: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
