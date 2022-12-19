local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dataplex_zone', url='', help='`dataplex_zone` represents the `google_dataplex_zone` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  discovery_spec:: {
    csv_options:: {
      '#new':: d.fn(help='\n`google.dataplex_zone.discovery_spec.csv_options.new` constructs a new object with attributes and blocks configured for the `csv_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `delimiter` (`string`): Optional. The delimiter being used to separate values. This defaults to &#39;,&#39;. When `null`, the `delimiter` field will be omitted from the resulting object.\n  - `disable_type_inference` (`bool`): Optional. Whether to disable the inference of data type for CSV data. If true, all columns will be registered as strings. When `null`, the `disable_type_inference` field will be omitted from the resulting object.\n  - `encoding` (`string`): Optional. The character encoding of the data. The default is UTF-8. When `null`, the `encoding` field will be omitted from the resulting object.\n  - `header_rows` (`number`): Optional. The number of rows to interpret as header rows that should be skipped when reading data rows. When `null`, the `header_rows` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `csv_options` sub block.\n', args=[]),
      new(
        delimiter=null,
        disable_type_inference=null,
        encoding=null,
        header_rows=null
      ):: std.prune(a={
        delimiter: delimiter,
        disable_type_inference: disable_type_inference,
        encoding: encoding,
        header_rows: header_rows,
      }),
    },
    json_options:: {
      '#new':: d.fn(help='\n`google.dataplex_zone.discovery_spec.json_options.new` constructs a new object with attributes and blocks configured for the `json_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disable_type_inference` (`bool`): Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean). When `null`, the `disable_type_inference` field will be omitted from the resulting object.\n  - `encoding` (`string`): Optional. The character encoding of the data. The default is UTF-8. When `null`, the `encoding` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `json_options` sub block.\n', args=[]),
      new(
        disable_type_inference=null,
        encoding=null
      ):: std.prune(a={
        disable_type_inference: disable_type_inference,
        encoding: encoding,
      }),
    },
    '#new':: d.fn(help='\n`google.dataplex_zone.discovery_spec.new` constructs a new object with attributes and blocks configured for the `discovery_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Required. Whether discovery is enabled.\n  - `exclude_patterns` (`list`): Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names. When `null`, the `exclude_patterns` field will be omitted from the resulting object.\n  - `include_patterns` (`list`): Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names. When `null`, the `include_patterns` field will be omitted from the resulting object.\n  - `schedule` (`string`): Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: &#34;CRON_TZ=${IANA_TIME_ZONE}&#34; or TZ=${IANA_TIME_ZONE}&#34;. The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, &#34;CRON_TZ=America/New_York 1 * * * *&#34;, or &#34;TZ=America/New_York 1 * * * *&#34;. When `null`, the `schedule` field will be omitted from the resulting object.\n  - `csv_options` (`list[obj]`): Optional. Configuration for CSV data. When `null`, the `csv_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_zone.discovery_spec.csv_options.new](#fn-discoveryspeccsvoptionsnew) constructor.\n  - `json_options` (`list[obj]`): Optional. Configuration for Json data. When `null`, the `json_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_zone.discovery_spec.json_options.new](#fn-discoveryspecjsonoptionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `discovery_spec` sub block.\n', args=[]),
    new(
      enabled,
      csv_options=null,
      exclude_patterns=null,
      include_patterns=null,
      json_options=null,
      schedule=null
    ):: std.prune(a={
      csv_options: csv_options,
      enabled: enabled,
      exclude_patterns: exclude_patterns,
      include_patterns: include_patterns,
      json_options: json_options,
      schedule: schedule,
    }),
  },
  '#new':: d.fn(help="\n`google.dataplex_zone.new` injects a new `google_dataplex_zone` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dataplex_zone.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dataplex_zone` using the reference:\n\n    $._ref.google_dataplex_zone.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dataplex_zone.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Optional. Description of the zone. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Optional. User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. User defined labels for the zone. When `null`, the `labels` field will be omitted from the resulting object.\n  - `lake` (`string`): The lake for the resource\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The name of the zone.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): Required. Immutable. The type of the zone. Possible values: TYPE_UNSPECIFIED, RAW, CURATED\n  - `discovery_spec` (`list[obj]`): Required. Specification of the discovery feature applied to data in this zone. When `null`, the `discovery_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_zone.discovery_spec.new](#fn-dataplexzonediscoveryspecnew) constructor.\n  - `resource_spec` (`list[obj]`): Required. Immutable. Specification of the resources that are referenced by the assets within this zone. When `null`, the `resource_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_zone.resource_spec.new](#fn-dataplexzoneresourcespecnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_zone.timeouts.new](#fn-dataplexzonetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    lake,
    location,
    name,
    type,
    description=null,
    discovery_spec=null,
    display_name=null,
    labels=null,
    project=null,
    resource_spec=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataplex_zone',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      discovery_spec=discovery_spec,
      display_name=display_name,
      labels=labels,
      lake=lake,
      location=location,
      name=name,
      project=project,
      resource_spec=resource_spec,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dataplex_zone.newAttrs` constructs a new object with attributes and blocks configured for the `dataplex_zone`\nTerraform resource.\n\nUnlike [google.dataplex_zone.new](#fn-dataplexzonenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Optional. Description of the zone. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Optional. User friendly display name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. User defined labels for the zone. When `null`, the `labels` field will be omitted from the resulting object.\n  - `lake` (`string`): The lake for the resource\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The name of the zone.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): Required. Immutable. The type of the zone. Possible values: TYPE_UNSPECIFIED, RAW, CURATED\n  - `discovery_spec` (`list[obj]`): Required. Specification of the discovery feature applied to data in this zone. When `null`, the `discovery_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_zone.discovery_spec.new](#fn-dataplexzonediscoveryspecnew) constructor.\n  - `resource_spec` (`list[obj]`): Required. Immutable. Specification of the resources that are referenced by the assets within this zone. When `null`, the `resource_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_zone.resource_spec.new](#fn-dataplexzoneresourcespecnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataplex_zone.timeouts.new](#fn-dataplexzonetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataplex_zone` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    lake,
    location,
    name,
    type,
    description=null,
    discovery_spec=null,
    display_name=null,
    labels=null,
    project=null,
    resource_spec=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    discovery_spec: discovery_spec,
    display_name: display_name,
    labels: labels,
    lake: lake,
    location: location,
    name: name,
    project: project,
    resource_spec: resource_spec,
    timeouts: timeouts,
    type: type,
  }),
  resource_spec:: {
    '#new':: d.fn(help='\n`google.dataplex_zone.resource_spec.new` constructs a new object with attributes and blocks configured for the `resource_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `location_type` (`string`): Required. Immutable. The location type of the resources that are allowed to be attached to the assets within this zone. Possible values: LOCATION_TYPE_UNSPECIFIED, SINGLE_REGION, MULTI_REGION\n\n**Returns**:\n  - An attribute object that represents the `resource_spec` sub block.\n', args=[]),
    new(
      location_type
    ):: std.prune(a={
      location_type: location_type,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.dataplex_zone.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.dataplex_zone.withDescription` constructs a mixin object that can be merged into the `dataplex_zone`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDiscoverySpec':: d.fn(help='`google.dataplex_zone.withDiscoverySpec` constructs a mixin object that can be merged into the `dataplex_zone`\nTerraform resource block to set or update the discovery_spec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `discovery_spec` field.\n', args=[]),
  withDiscoverySpec(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          discovery_spec: value,
        },
      },
    },
  },
  '#withDiscoverySpecMixin':: d.fn(help='`google.dataplex_zone.withDiscoverySpecMixin` constructs a mixin object that can be merged into the `dataplex_zone`\nTerraform resource block to set or update the discovery_spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.dataplex_zone.withDiscoverySpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `discovery_spec` field.\n', args=[]),
  withDiscoverySpecMixin(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          discovery_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.dataplex_zone.withDisplayName` constructs a mixin object that can be merged into the `dataplex_zone`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.dataplex_zone.withLabels` constructs a mixin object that can be merged into the `dataplex_zone`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLake':: d.fn(help='`google.dataplex_zone.withLake` constructs a mixin object that can be merged into the `dataplex_zone`\nTerraform resource block to set or update the lake field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `lake` field.\n', args=[]),
  withLake(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          lake: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.dataplex_zone.withLocation` constructs a mixin object that can be merged into the `dataplex_zone`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.dataplex_zone.withName` constructs a mixin object that can be merged into the `dataplex_zone`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.dataplex_zone.withProject` constructs a mixin object that can be merged into the `dataplex_zone`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withResourceSpec':: d.fn(help='`google.dataplex_zone.withResourceSpec` constructs a mixin object that can be merged into the `dataplex_zone`\nTerraform resource block to set or update the resource_spec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `resource_spec` field.\n', args=[]),
  withResourceSpec(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          resource_spec: value,
        },
      },
    },
  },
  '#withResourceSpecMixin':: d.fn(help='`google.dataplex_zone.withResourceSpecMixin` constructs a mixin object that can be merged into the `dataplex_zone`\nTerraform resource block to set or update the resource_spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.dataplex_zone.withResourceSpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `resource_spec` field.\n', args=[]),
  withResourceSpecMixin(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          resource_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.dataplex_zone.withTimeouts` constructs a mixin object that can be merged into the `dataplex_zone`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.dataplex_zone.withTimeoutsMixin` constructs a mixin object that can be merged into the `dataplex_zone`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.dataplex_zone.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.dataplex_zone.withType` constructs a mixin object that can be merged into the `dataplex_zone`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
