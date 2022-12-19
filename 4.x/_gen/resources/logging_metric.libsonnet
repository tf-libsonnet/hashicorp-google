local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='logging_metric', url='', help='`logging_metric` represents the `google_logging_metric` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  bucket_options:: {
    explicit_buckets:: {
      '#new':: d.fn(help='\n`google.logging_metric.bucket_options.explicit_buckets.new` constructs a new object with attributes and blocks configured for the `explicit_buckets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bounds` (`list`): The values must be monotonically increasing.\n\n**Returns**:\n  - An attribute object that represents the `explicit_buckets` sub block.\n', args=[]),
      new(
        bounds
      ):: std.prune(a={
        bounds: bounds,
      }),
    },
    exponential_buckets:: {
      '#new':: d.fn(help='\n`google.logging_metric.bucket_options.exponential_buckets.new` constructs a new object with attributes and blocks configured for the `exponential_buckets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `growth_factor` (`number`): Must be greater than 1. When `null`, the `growth_factor` field will be omitted from the resulting object.\n  - `num_finite_buckets` (`number`): Must be greater than 0. When `null`, the `num_finite_buckets` field will be omitted from the resulting object.\n  - `scale` (`number`): Must be greater than 0. When `null`, the `scale` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `exponential_buckets` sub block.\n', args=[]),
      new(
        growth_factor=null,
        num_finite_buckets=null,
        scale=null
      ):: std.prune(a={
        growth_factor: growth_factor,
        num_finite_buckets: num_finite_buckets,
        scale: scale,
      }),
    },
    linear_buckets:: {
      '#new':: d.fn(help='\n`google.logging_metric.bucket_options.linear_buckets.new` constructs a new object with attributes and blocks configured for the `linear_buckets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `num_finite_buckets` (`number`): Must be greater than 0. When `null`, the `num_finite_buckets` field will be omitted from the resulting object.\n  - `offset` (`number`): Lower bound of the first bucket. When `null`, the `offset` field will be omitted from the resulting object.\n  - `width` (`number`): Must be greater than 0. When `null`, the `width` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `linear_buckets` sub block.\n', args=[]),
      new(
        num_finite_buckets=null,
        offset=null,
        width=null
      ):: std.prune(a={
        num_finite_buckets: num_finite_buckets,
        offset: offset,
        width: width,
      }),
    },
    '#new':: d.fn(help='\n`google.logging_metric.bucket_options.new` constructs a new object with attributes and blocks configured for the `bucket_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `explicit_buckets` (`list[obj]`): Specifies a set of buckets with arbitrary widths. When `null`, the `explicit_buckets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.bucket_options.explicit_buckets.new](#fn-bucket_optionsexplicit_bucketsnew) constructor.\n  - `exponential_buckets` (`list[obj]`): Specifies an exponential sequence of buckets that have a width that is proportional to the value of\nthe lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket. When `null`, the `exponential_buckets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.bucket_options.exponential_buckets.new](#fn-bucket_optionsexponential_bucketsnew) constructor.\n  - `linear_buckets` (`list[obj]`): Specifies a linear sequence of buckets that all have the same width (except overflow and underflow).\nEach bucket represents a constant absolute uncertainty on the specific value in the bucket. When `null`, the `linear_buckets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.bucket_options.linear_buckets.new](#fn-bucket_optionslinear_bucketsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `bucket_options` sub block.\n', args=[]),
    new(
      explicit_buckets=null,
      exponential_buckets=null,
      linear_buckets=null
    ):: std.prune(a={
      explicit_buckets: explicit_buckets,
      exponential_buckets: exponential_buckets,
      linear_buckets: linear_buckets,
    }),
  },
  metric_descriptor:: {
    labels:: {
      '#new':: d.fn(help='\n`google.logging_metric.metric_descriptor.labels.new` constructs a new object with attributes and blocks configured for the `labels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): A human-readable description for the label. When `null`, the `description` field will be omitted from the resulting object.\n  - `key` (`string`): The label key.\n  - `value_type` (`string`): The type of data that can be assigned to the label. Default value: &#34;STRING&#34; Possible values: [&#34;BOOL&#34;, &#34;INT64&#34;, &#34;STRING&#34;] When `null`, the `value_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `labels` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.logging_metric.metric_descriptor.new` constructs a new object with attributes and blocks configured for the `metric_descriptor`\nTerraform sub block.\n\n\n\n**Args**:\n  - `display_name` (`string`): A concise name for the metric, which can be displayed in user interfaces. Use sentence case \nwithout an ending period, for example &#34;Request count&#34;. This field is optional but it is \nrecommended to be set for any metrics associated with user-visible concepts, such as Quota. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `metric_kind` (`string`): Whether the metric records instantaneous values, changes to a value, etc.\nSome combinations of metricKind and valueType might not be supported.\nFor counter metrics, set this to DELTA. Possible values: [&#34;DELTA&#34;, &#34;GAUGE&#34;, &#34;CUMULATIVE&#34;]\n  - `unit` (`string`): The unit in which the metric value is reported. It is only applicable if the valueType is\n&#39;INT64&#39;, &#39;DOUBLE&#39;, or &#39;DISTRIBUTION&#39;. The supported units are a subset of\n[The Unified Code for Units of Measure](http://unitsofmeasure.org/ucum.html) standard When `null`, the `unit` field will be omitted from the resulting object.\n  - `value_type` (`string`): Whether the measurement is an integer, a floating-point number, etc.\nSome combinations of metricKind and valueType might not be supported.\nFor counter metrics, set this to INT64. Possible values: [&#34;BOOL&#34;, &#34;INT64&#34;, &#34;DOUBLE&#34;, &#34;STRING&#34;, &#34;DISTRIBUTION&#34;, &#34;MONEY&#34;]\n  - `labels` (`list[obj]`): The set of labels that can be used to describe a specific instance of this metric type. For\nexample, the appengine.googleapis.com/http/server/response_latencies metric type has a label\nfor the HTTP response code, response_code, so you can look at latencies for successful responses\nor just for responses that failed. When `null`, the `labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.metric_descriptor.labels.new](#fn-metric_descriptorlabelsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `metric_descriptor` sub block.\n', args=[]),
    new(
      metric_kind,
      value_type,
      display_name=null,
      labels=null,
      unit=null
    ):: std.prune(a={
      display_name: display_name,
      labels: labels,
      metric_kind: metric_kind,
      unit: unit,
      value_type: value_type,
    }),
  },
  '#new':: d.fn(help="\n`google.logging_metric.new` injects a new `google_logging_metric` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.logging_metric.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.logging_metric` using the reference:\n\n    $._ref.google_logging_metric.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_logging_metric.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A description of this metric, which is used in documentation. The maximum length of the\ndescription is 8000 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `filter` (`string`): An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-filters) which\nis used to match log entries.\n  - `label_extractors` (`obj`): A map from a label key string to an extractor expression which is used to extract data from a log\nentry field and assign as the label value. Each label key specified in the LabelDescriptor must\nhave an associated extractor expression in this map. The syntax of the extractor expression is\nthe same as for the valueExtractor field. When `null`, the `label_extractors` field will be omitted from the resulting object.\n  - `name` (`string`): The client-assigned metric identifier. Examples - \u0026#34;error_count\u0026#34;, \u0026#34;nginx/requests\u0026#34;.\nMetric identifiers are limited to 100 characters and can include only the following\ncharacters A-Z, a-z, 0-9, and the special characters _-.,\u0026#43;!*\u0026#39;,()%/. The forward-slash\ncharacter (/) denotes a hierarchy of name pieces, and it cannot be the first character\nof the name.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `value_extractor` (`string`): A valueExtractor is required when using a distribution logs-based metric to extract the values to\nrecord from a log entry. Two functions are supported for value extraction - EXTRACT(field) or\nREGEXP_EXTRACT(field, regex). The argument are 1. field - The name of the log entry field from which\nthe value is to be extracted. 2. regex - A regular expression using the Google RE2 syntax\n(https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified\nlog entry field. The value of the field is converted to a string before applying the regex. It is an\nerror to specify a regex that does not include exactly one capture group. When `null`, the `value_extractor` field will be omitted from the resulting object.\n  - `bucket_options` (`list[obj]`): The bucketOptions are required when the logs-based metric is using a DISTRIBUTION value type and it\ndescribes the bucket boundaries used to create a histogram of the extracted values. When `null`, the `bucket_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.bucket_options.new](#fn-bucket_optionsnew) constructor.\n  - `metric_descriptor` (`list[obj]`): The metric descriptor associated with the logs-based metric. When `null`, the `metric_descriptor` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.metric_descriptor.new](#fn-metric_descriptornew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    filter,
    name,
    bucket_options=null,
    description=null,
    label_extractors=null,
    metric_descriptor=null,
    project=null,
    timeouts=null,
    value_extractor=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_metric',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket_options=bucket_options,
      description=description,
      filter=filter,
      label_extractors=label_extractors,
      metric_descriptor=metric_descriptor,
      name=name,
      project=project,
      timeouts=timeouts,
      value_extractor=value_extractor
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.logging_metric.newAttrs` constructs a new object with attributes and blocks configured for the `logging_metric`\nTerraform resource.\n\nUnlike [google.logging_metric.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A description of this metric, which is used in documentation. The maximum length of the\ndescription is 8000 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `filter` (`string`): An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-filters) which\nis used to match log entries.\n  - `label_extractors` (`obj`): A map from a label key string to an extractor expression which is used to extract data from a log\nentry field and assign as the label value. Each label key specified in the LabelDescriptor must\nhave an associated extractor expression in this map. The syntax of the extractor expression is\nthe same as for the valueExtractor field. When `null`, the `label_extractors` field will be omitted from the resulting object.\n  - `name` (`string`): The client-assigned metric identifier. Examples - &#34;error_count&#34;, &#34;nginx/requests&#34;.\nMetric identifiers are limited to 100 characters and can include only the following\ncharacters A-Z, a-z, 0-9, and the special characters _-.,&#43;!*&#39;,()%/. The forward-slash\ncharacter (/) denotes a hierarchy of name pieces, and it cannot be the first character\nof the name.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `value_extractor` (`string`): A valueExtractor is required when using a distribution logs-based metric to extract the values to\nrecord from a log entry. Two functions are supported for value extraction - EXTRACT(field) or\nREGEXP_EXTRACT(field, regex). The argument are 1. field - The name of the log entry field from which\nthe value is to be extracted. 2. regex - A regular expression using the Google RE2 syntax\n(https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified\nlog entry field. The value of the field is converted to a string before applying the regex. It is an\nerror to specify a regex that does not include exactly one capture group. When `null`, the `value_extractor` field will be omitted from the resulting object.\n  - `bucket_options` (`list[obj]`): The bucketOptions are required when the logs-based metric is using a DISTRIBUTION value type and it\ndescribes the bucket boundaries used to create a histogram of the extracted values. When `null`, the `bucket_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.bucket_options.new](#fn-bucket_optionsnew) constructor.\n  - `metric_descriptor` (`list[obj]`): The metric descriptor associated with the logs-based metric. When `null`, the `metric_descriptor` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.metric_descriptor.new](#fn-metric_descriptornew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.logging_metric.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `logging_metric` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    filter,
    name,
    bucket_options=null,
    description=null,
    label_extractors=null,
    metric_descriptor=null,
    project=null,
    timeouts=null,
    value_extractor=null
  ):: std.prune(a={
    bucket_options: bucket_options,
    description: description,
    filter: filter,
    label_extractors: label_extractors,
    metric_descriptor: metric_descriptor,
    name: name,
    project: project,
    timeouts: timeouts,
    value_extractor: value_extractor,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.logging_metric.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBucketOptions':: d.fn(help='`google.list[obj].withBucketOptions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bucket_options field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBucketOptionsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bucket_options` field.\n', args=[]),
  withBucketOptions(resourceLabel, value): {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          bucket_options: value,
        },
      },
    },
  },
  '#withBucketOptionsMixin':: d.fn(help='`google.list[obj].withBucketOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bucket_options field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBucketOptions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bucket_options` field.\n', args=[]),
  withBucketOptionsMixin(resourceLabel, value): {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          bucket_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFilter':: d.fn(help='`google.string.withFilter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the filter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `filter` field.\n', args=[]),
  withFilter(resourceLabel, value): {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  '#withLabelExtractors':: d.fn(help='`google.obj.withLabelExtractors` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the label_extractors field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `label_extractors` field.\n', args=[]),
  withLabelExtractors(resourceLabel, value): {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          label_extractors: value,
        },
      },
    },
  },
  '#withMetricDescriptor':: d.fn(help='`google.list[obj].withMetricDescriptor` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metric_descriptor field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMetricDescriptorMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metric_descriptor` field.\n', args=[]),
  withMetricDescriptor(resourceLabel, value): {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          metric_descriptor: value,
        },
      },
    },
  },
  '#withMetricDescriptorMixin':: d.fn(help='`google.list[obj].withMetricDescriptorMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metric_descriptor field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMetricDescriptor](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metric_descriptor` field.\n', args=[]),
  withMetricDescriptorMixin(resourceLabel, value): {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          metric_descriptor+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withValueExtractor':: d.fn(help='`google.string.withValueExtractor` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the value_extractor field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `value_extractor` field.\n', args=[]),
  withValueExtractor(resourceLabel, value): {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          value_extractor: value,
        },
      },
    },
  },
}
