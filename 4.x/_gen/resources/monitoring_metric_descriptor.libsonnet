local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='monitoring_metric_descriptor', url='', help='`monitoring_metric_descriptor` represents the `google_monitoring_metric_descriptor` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  labels:: {
    '#new':: d.fn(help='\n`google.monitoring_metric_descriptor.labels.new` constructs a new object with attributes and blocks configured for the `labels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): A human-readable description for the label. When `null`, the `description` field will be omitted from the resulting object.\n  - `key` (`string`): The key for this label. The key must not exceed 100 characters. The first character of the key must be an upper- or lower-case letter, the remaining characters must be letters, digits or underscores, and the key must match the regular expression [a-zA-Z][a-zA-Z0-9_]*\n  - `value_type` (`string`): The type of data that can be assigned to the label. Default value: &#34;STRING&#34; Possible values: [&#34;STRING&#34;, &#34;BOOL&#34;, &#34;INT64&#34;] When `null`, the `value_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `labels` sub block.\n', args=[]),
    new(
      key,
      description=null,
      value_type=null
    ):: std.prune(a={
      description: description,
      key: key,
      value_type: value_type,
    }),
  },
  metadata:: {
    '#new':: d.fn(help='\n`google.monitoring_metric_descriptor.metadata.new` constructs a new object with attributes and blocks configured for the `metadata`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ingest_delay` (`string`): The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors. In &#39;[duration format](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf?&amp;_ga=2.264881487.1507873253.1593446723-935052455.1591817775#google.protobuf.Duration)&#39;. When `null`, the `ingest_delay` field will be omitted from the resulting object.\n  - `sample_period` (`string`): The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period. In &#39;[duration format](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf?&amp;_ga=2.264881487.1507873253.1593446723-935052455.1591817775#google.protobuf.Duration)&#39;. When `null`, the `sample_period` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `metadata` sub block.\n', args=[]),
    new(
      ingest_delay=null,
      sample_period=null
    ):: std.prune(a={
      ingest_delay: ingest_delay,
      sample_period: sample_period,
    }),
  },
  '#new':: d.fn(help="\n`google.monitoring_metric_descriptor.new` injects a new `google_monitoring_metric_descriptor` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.monitoring_metric_descriptor.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.monitoring_metric_descriptor` using the reference:\n\n    $._ref.google_monitoring_metric_descriptor.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_monitoring_metric_descriptor.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A detailed description of the metric, which can be used in documentation.\n  - `display_name` (`string`): A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example \u0026#34;Request count\u0026#34;.\n  - `launch_stage` (`string`): The launch stage of the metric definition. Possible values: [\u0026#34;LAUNCH_STAGE_UNSPECIFIED\u0026#34;, \u0026#34;UNIMPLEMENTED\u0026#34;, \u0026#34;PRELAUNCH\u0026#34;, \u0026#34;EARLY_ACCESS\u0026#34;, \u0026#34;ALPHA\u0026#34;, \u0026#34;BETA\u0026#34;, \u0026#34;GA\u0026#34;, \u0026#34;DEPRECATED\u0026#34;] When `null`, the `launch_stage` field will be omitted from the resulting object.\n  - `metric_kind` (`string`): Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metricKind and valueType might not be supported. Possible values: [\u0026#34;METRIC_KIND_UNSPECIFIED\u0026#34;, \u0026#34;GAUGE\u0026#34;, \u0026#34;DELTA\u0026#34;, \u0026#34;CUMULATIVE\u0026#34;]\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The metric type, including its DNS name prefix. The type is not URL-encoded. All service defined metrics must be prefixed with the service name, in the format of {service name}/{relative metric name}, such as cloudsql.googleapis.com/database/cpu/utilization. The relative metric name must have only upper and lower-case letters, digits, \u0026#39;/\u0026#39; and underscores \u0026#39;_\u0026#39; are allowed. Additionally, the maximum number of characters allowed for the relative_metric_name is 100. All user-defined metric types have the DNS name custom.googleapis.com, external.googleapis.com, or logging.googleapis.com/user/.\n  - `unit` (`string`): The units in which the metric value is reported. It is only applicable if the\nvalueType is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of\nthe stored metric values.\n\nDifferent systems may scale the values to be more easily displayed (so a value of\n0.02KBy might be displayed as 20By, and a value of 3523KBy might be displayed as\n3.5MBy). However, if the unit is KBy, then the value of the metric is always in\nthousands of bytes, no matter how it may be displayed.\n\nIf you want a custom metric to record the exact number of CPU-seconds used by a job,\nyou can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently\n1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as\n12005.\n\nAlternatively, if you want a custom metric to record data in a more granular way, you\ncan create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value\n12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).\nThe supported units are a subset of The Unified Code for Units of Measure standard.\nMore info can be found in the API documentation\n(https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors). When `null`, the `unit` field will be omitted from the resulting object.\n  - `value_type` (`string`): Whether the measurement is an integer, a floating-point number, etc. Some combinations of metricKind and valueType might not be supported. Possible values: [\u0026#34;BOOL\u0026#34;, \u0026#34;INT64\u0026#34;, \u0026#34;DOUBLE\u0026#34;, \u0026#34;STRING\u0026#34;, \u0026#34;DISTRIBUTION\u0026#34;]\n  - `labels` (`list[obj]`): The set of labels that can be used to describe a specific instance of this metric type. In order to delete a label, the entire resource must be deleted, then created with the desired labels. When `null`, the `labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_metric_descriptor.labels.new](#fn-labelsnew) constructor.\n  - `metadata` (`list[obj]`): Metadata which can be used to guide usage of the metric. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_metric_descriptor.metadata.new](#fn-metadatanew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_metric_descriptor.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    description,
    display_name,
    metric_kind,
    type,
    value_type,
    labels=null,
    launch_stage=null,
    metadata=null,
    project=null,
    timeouts=null,
    unit=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_metric_descriptor',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      labels=labels,
      launch_stage=launch_stage,
      metadata=metadata,
      metric_kind=metric_kind,
      project=project,
      timeouts=timeouts,
      type=type,
      unit=unit,
      value_type=value_type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.monitoring_metric_descriptor.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_metric_descriptor`\nTerraform resource.\n\nUnlike [google.monitoring_metric_descriptor.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A detailed description of the metric, which can be used in documentation.\n  - `display_name` (`string`): A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example &#34;Request count&#34;.\n  - `launch_stage` (`string`): The launch stage of the metric definition. Possible values: [&#34;LAUNCH_STAGE_UNSPECIFIED&#34;, &#34;UNIMPLEMENTED&#34;, &#34;PRELAUNCH&#34;, &#34;EARLY_ACCESS&#34;, &#34;ALPHA&#34;, &#34;BETA&#34;, &#34;GA&#34;, &#34;DEPRECATED&#34;] When `null`, the `launch_stage` field will be omitted from the resulting object.\n  - `metric_kind` (`string`): Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metricKind and valueType might not be supported. Possible values: [&#34;METRIC_KIND_UNSPECIFIED&#34;, &#34;GAUGE&#34;, &#34;DELTA&#34;, &#34;CUMULATIVE&#34;]\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `type` (`string`): The metric type, including its DNS name prefix. The type is not URL-encoded. All service defined metrics must be prefixed with the service name, in the format of {service name}/{relative metric name}, such as cloudsql.googleapis.com/database/cpu/utilization. The relative metric name must have only upper and lower-case letters, digits, &#39;/&#39; and underscores &#39;_&#39; are allowed. Additionally, the maximum number of characters allowed for the relative_metric_name is 100. All user-defined metric types have the DNS name custom.googleapis.com, external.googleapis.com, or logging.googleapis.com/user/.\n  - `unit` (`string`): The units in which the metric value is reported. It is only applicable if the\nvalueType is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of\nthe stored metric values.\n\nDifferent systems may scale the values to be more easily displayed (so a value of\n0.02KBy might be displayed as 20By, and a value of 3523KBy might be displayed as\n3.5MBy). However, if the unit is KBy, then the value of the metric is always in\nthousands of bytes, no matter how it may be displayed.\n\nIf you want a custom metric to record the exact number of CPU-seconds used by a job,\nyou can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently\n1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as\n12005.\n\nAlternatively, if you want a custom metric to record data in a more granular way, you\ncan create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value\n12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).\nThe supported units are a subset of The Unified Code for Units of Measure standard.\nMore info can be found in the API documentation\n(https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors). When `null`, the `unit` field will be omitted from the resulting object.\n  - `value_type` (`string`): Whether the measurement is an integer, a floating-point number, etc. Some combinations of metricKind and valueType might not be supported. Possible values: [&#34;BOOL&#34;, &#34;INT64&#34;, &#34;DOUBLE&#34;, &#34;STRING&#34;, &#34;DISTRIBUTION&#34;]\n  - `labels` (`list[obj]`): The set of labels that can be used to describe a specific instance of this metric type. In order to delete a label, the entire resource must be deleted, then created with the desired labels. When `null`, the `labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_metric_descriptor.labels.new](#fn-labelsnew) constructor.\n  - `metadata` (`list[obj]`): Metadata which can be used to guide usage of the metric. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_metric_descriptor.metadata.new](#fn-metadatanew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_metric_descriptor.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_metric_descriptor` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    description,
    display_name,
    metric_kind,
    type,
    value_type,
    labels=null,
    launch_stage=null,
    metadata=null,
    project=null,
    timeouts=null,
    unit=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    labels: labels,
    launch_stage: launch_stage,
    metadata: metadata,
    metric_kind: metric_kind,
    project: project,
    timeouts: timeouts,
    type: type,
    unit: unit,
    value_type: value_type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.monitoring_metric_descriptor.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.list[obj].withLabels` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the labels field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLabelsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLabelsMixin':: d.fn(help='`google.list[obj].withLabelsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the labels field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLabels](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `labels` field.\n', args=[]),
  withLabelsMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          labels+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLaunchStage':: d.fn(help='`google.string.withLaunchStage` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the launch_stage field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `launch_stage` field.\n', args=[]),
  withLaunchStage(resourceLabel, value): {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          launch_stage: value,
        },
      },
    },
  },
  '#withMetadata':: d.fn(help='`google.list[obj].withMetadata` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metadata field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMetadataMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metadata` field.\n', args=[]),
  withMetadata(resourceLabel, value): {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  '#withMetadataMixin':: d.fn(help='`google.list[obj].withMetadataMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metadata field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMetadata](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metadata` field.\n', args=[]),
  withMetadataMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          metadata+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMetricKind':: d.fn(help='`google.string.withMetricKind` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the metric_kind field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `metric_kind` field.\n', args=[]),
  withMetricKind(resourceLabel, value): {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          metric_kind: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  '#withUnit':: d.fn(help='`google.string.withUnit` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the unit field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `unit` field.\n', args=[]),
  withUnit(resourceLabel, value): {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          unit: value,
        },
      },
    },
  },
  '#withValueType':: d.fn(help='`google.string.withValueType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the value_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `value_type` field.\n', args=[]),
  withValueType(resourceLabel, value): {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          value_type: value,
        },
      },
    },
  },
}
