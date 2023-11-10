local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='network_security_address_group', url='', help='`network_security_address_group` represents the `google_network_security_address_group` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.network_security_address_group.new` injects a new `google_network_security_address_group` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.network_security_address_group.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.network_security_address_group` using the reference:\n\n    $._ref.google_network_security_address_group.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_network_security_address_group.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `capacity` (`number`): Capacity of the Address Group.\n  - `description` (`string`): Free-text description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `items` (`list`): List of items. When `null`, the `items` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the AddressGroup resource.\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs. Example: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the gateway security policy.\nThe default value is \u0026#39;global\u0026#39;.\n  - `name` (`string`): Name of the AddressGroup resource.\n  - `parent` (`string`): The name of the parent this address group belongs to. Format: organizations/{organization_id} or projects/{project_id}. When `null`, the `parent` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the Address Group. Possible values are \u0026#34;IPV4\u0026#34; or \u0026#34;IPV6\u0026#34;. Possible values: [\u0026#34;IPV4\u0026#34;, \u0026#34;IPV6\u0026#34;]\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_security_address_group.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    capacity,
    location,
    name,
    type,
    description=null,
    items=null,
    labels=null,
    parent=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_security_address_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      capacity=capacity,
      description=description,
      items=items,
      labels=labels,
      location=location,
      name=name,
      parent=parent,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.network_security_address_group.newAttrs` constructs a new object with attributes and blocks configured for the `network_security_address_group`\nTerraform resource.\n\nUnlike [google.network_security_address_group.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `capacity` (`number`): Capacity of the Address Group.\n  - `description` (`string`): Free-text description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `items` (`list`): List of items. When `null`, the `items` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the AddressGroup resource.\nAn object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the gateway security policy.\nThe default value is &#39;global&#39;.\n  - `name` (`string`): Name of the AddressGroup resource.\n  - `parent` (`string`): The name of the parent this address group belongs to. Format: organizations/{organization_id} or projects/{project_id}. When `null`, the `parent` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the Address Group. Possible values are &#34;IPV4&#34; or &#34;IPV6&#34;. Possible values: [&#34;IPV4&#34;, &#34;IPV6&#34;]\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_security_address_group.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_security_address_group` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    capacity,
    location,
    name,
    type,
    description=null,
    items=null,
    labels=null,
    parent=null,
    timeouts=null
  ):: std.prune(a={
    capacity: capacity,
    description: description,
    items: items,
    labels: labels,
    location: location,
    name: name,
    parent: parent,
    timeouts: timeouts,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.network_security_address_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCapacity':: d.fn(help='`google.number.withCapacity` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the capacity field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `capacity` field.\n', args=[]),
  withCapacity(resourceLabel, value): {
    resource+: {
      google_network_security_address_group+: {
        [resourceLabel]+: {
          capacity: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_network_security_address_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withItems':: d.fn(help='`google.list.withItems` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the items field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `items` field.\n', args=[]),
  withItems(resourceLabel, value): {
    resource+: {
      google_network_security_address_group+: {
        [resourceLabel]+: {
          items: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_security_address_group+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_network_security_address_group+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_security_address_group+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_network_security_address_group+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_security_address_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_security_address_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_network_security_address_group+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
