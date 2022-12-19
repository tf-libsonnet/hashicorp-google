local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_analytics_hub_data_exchange', url='', help='`bigquery_analytics_hub_data_exchange` represents the `google_bigquery_analytics_hub_data_exchange` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.bigquery_analytics_hub_data_exchange.new` injects a new `google_bigquery_analytics_hub_data_exchange` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigquery_analytics_hub_data_exchange.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigquery_analytics_hub_data_exchange` using the reference:\n\n    $._ref.google_bigquery_analytics_hub_data_exchange.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigquery_analytics_hub_data_exchange.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `data_exchange_id` (`string`): The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.\n  - `description` (`string`): Description of the data exchange. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and must not start or end with spaces.\n  - `documentation` (`string`): Documentation describing the data exchange. When `null`, the `documentation` field will be omitted from the resulting object.\n  - `icon` (`string`): Base64 encoded image representing the data exchange. When `null`, the `icon` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location this data exchange.\n  - `primary_contact` (`string`): Email or URL of the primary point of contact of the data exchange. When `null`, the `primary_contact` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_data_exchange.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    data_exchange_id,
    display_name,
    location,
    description=null,
    documentation=null,
    icon=null,
    primary_contact=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_analytics_hub_data_exchange',
    label=resourceLabel,
    attrs=self.newAttrs(
      data_exchange_id=data_exchange_id,
      description=description,
      display_name=display_name,
      documentation=documentation,
      icon=icon,
      location=location,
      primary_contact=primary_contact,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigquery_analytics_hub_data_exchange.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_analytics_hub_data_exchange`\nTerraform resource.\n\nUnlike [google.bigquery_analytics_hub_data_exchange.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `data_exchange_id` (`string`): The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.\n  - `description` (`string`): Description of the data exchange. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and must not start or end with spaces.\n  - `documentation` (`string`): Documentation describing the data exchange. When `null`, the `documentation` field will be omitted from the resulting object.\n  - `icon` (`string`): Base64 encoded image representing the data exchange. When `null`, the `icon` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location this data exchange.\n  - `primary_contact` (`string`): Email or URL of the primary point of contact of the data exchange. When `null`, the `primary_contact` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_data_exchange.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_analytics_hub_data_exchange` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    data_exchange_id,
    display_name,
    location,
    description=null,
    documentation=null,
    icon=null,
    primary_contact=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    data_exchange_id: data_exchange_id,
    description: description,
    display_name: display_name,
    documentation: documentation,
    icon: icon,
    location: location,
    primary_contact: primary_contact,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.bigquery_analytics_hub_data_exchange.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDataExchangeId':: d.fn(help='`google.string.withDataExchangeId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the data_exchange_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `data_exchange_id` field.\n', args=[]),
  withDataExchangeId(resourceLabel, value): {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          data_exchange_id: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withDocumentation':: d.fn(help='`google.string.withDocumentation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the documentation field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `documentation` field.\n', args=[]),
  withDocumentation(resourceLabel, value): {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          documentation: value,
        },
      },
    },
  },
  '#withIcon':: d.fn(help='`google.string.withIcon` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the icon field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `icon` field.\n', args=[]),
  withIcon(resourceLabel, value): {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          icon: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withPrimaryContact':: d.fn(help='`google.string.withPrimaryContact` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the primary_contact field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `primary_contact` field.\n', args=[]),
  withPrimaryContact(resourceLabel, value): {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          primary_contact: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
