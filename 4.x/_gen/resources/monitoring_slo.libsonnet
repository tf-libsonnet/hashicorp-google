local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='monitoring_slo', url='', help='`monitoring_slo` represents the `google_monitoring_slo` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  basic_sli:: {
    availability:: {
      '#new':: d.fn(help='\n`google.monitoring_slo.basic_sli.availability.new` constructs a new object with attributes and blocks configured for the `availability`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether an availability SLI is enabled or not. Must be set to true. Defaults to &#39;true&#39;. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `availability` sub block.\n', args=[]),
      new(
        enabled=null
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    latency:: {
      '#new':: d.fn(help='\n`google.monitoring_slo.basic_sli.latency.new` constructs a new object with attributes and blocks configured for the `latency`\nTerraform sub block.\n\n\n\n**Args**:\n  - `threshold` (`string`): A duration string, e.g. 10s.\nGood service is defined to be the count of requests made to\nthis service that return in no more than threshold.\n\n**Returns**:\n  - An attribute object that represents the `latency` sub block.\n', args=[]),
      new(
        threshold
      ):: std.prune(a={
        threshold: threshold,
      }),
    },
    '#new':: d.fn(help='\n`google.monitoring_slo.basic_sli.new` constructs a new object with attributes and blocks configured for the `basic_sli`\nTerraform sub block.\n\n\n\n**Args**:\n  - `location` (`list`): An optional set of locations to which this SLI is relevant.\nTelemetry from other locations will not be used to calculate\nperformance for this SLI. If omitted, this SLI applies to all\nlocations in which the Service has activity. For service types\nthat don&#39;t support breaking down by location, setting this\nfield will result in an error. When `null`, the `location` field will be omitted from the resulting object.\n  - `method` (`list`): An optional set of RPCs to which this SLI is relevant.\nTelemetry from other methods will not be used to calculate\nperformance for this SLI. If omitted, this SLI applies to all\nthe Service&#39;s methods. For service types that don&#39;t support\nbreaking down by method, setting this field will result in an\nerror. When `null`, the `method` field will be omitted from the resulting object.\n  - `version` (`list`): The set of API versions to which this SLI is relevant.\nTelemetry from other API versions will not be used to\ncalculate performance for this SLI. If omitted,\nthis SLI applies to all API versions. For service types\nthat don&#39;t support breaking down by version, setting this\nfield will result in an error. When `null`, the `version` field will be omitted from the resulting object.\n  - `availability` (`list[obj]`): Availability based SLI, dervied from count of requests made to this service that return successfully. When `null`, the `availability` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.basic_sli.availability.new](#fn-basic_sliavailabilitynew) constructor.\n  - `latency` (`list[obj]`): Parameters for a latency threshold SLI. When `null`, the `latency` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.basic_sli.latency.new](#fn-basic_slilatencynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `basic_sli` sub block.\n', args=[]),
    new(
      availability=null,
      latency=null,
      location=null,
      method=null,
      version=null
    ):: std.prune(a={
      availability: availability,
      latency: latency,
      location: location,
      method: method,
      version: version,
    }),
  },
  '#new':: d.fn(help="\n`google.monitoring_slo.new` injects a new `google_monitoring_slo` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.monitoring_slo.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.monitoring_slo` using the reference:\n\n    $._ref.google_monitoring_slo.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_monitoring_slo.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `calendar_period` (`string`): A calendar period, semantically \u0026#34;since the start of the current\n\u0026lt;calendarPeriod\u0026gt;\u0026#34;. Possible values: [\u0026#34;DAY\u0026#34;, \u0026#34;WEEK\u0026#34;, \u0026#34;FORTNIGHT\u0026#34;, \u0026#34;MONTH\u0026#34;] When `null`, the `calendar_period` field will be omitted from the resulting object.\n  - `display_name` (`string`): Name used for UI elements listing this SLO. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `goal` (`number`): The fraction of service that must be good in order for this objective\nto be met. 0 \u0026lt; goal \u0026lt;= 0.999\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `rolling_period_days` (`number`): A rolling time period, semantically \u0026#34;in the past X days\u0026#34;.\nMust be between 1 to 30 days, inclusive. When `null`, the `rolling_period_days` field will be omitted from the resulting object.\n  - `service` (`string`): ID of the service to which this SLO belongs.\n  - `slo_id` (`string`): The id to use for this ServiceLevelObjective. If omitted, an id will be generated instead. When `null`, the `slo_id` field will be omitted from the resulting object.\n  - `user_labels` (`obj`): This field is intended to be used for organizing and identifying the AlertPolicy\nobjects.The field can contain up to 64 entries. Each key and value is limited\nto 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values\ncan contain only lowercase letters, numerals, underscores, and dashes. Keys\nmust begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.\n  - `basic_sli` (`list[obj]`): Basic Service-Level Indicator (SLI) on a well-known service type.\nPerformance will be computed on the basis of pre-defined metrics.\n\nSLIs are used to measure and calculate the quality of the Service\u0026#39;s\nperformance with respect to a single aspect of service quality.\n\nExactly one of the following must be set:\n\u0026#39;basic_sli\u0026#39;, \u0026#39;request_based_sli\u0026#39;, \u0026#39;windows_based_sli\u0026#39; When `null`, the `basic_sli` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.basic_sli.new](#fn-basic_slinew) constructor.\n  - `request_based_sli` (`list[obj]`): A request-based SLI defines a SLI for which atomic units of\nservice are counted directly.\n\nA SLI describes a good service.\nIt is used to measure and calculate the quality of the Service\u0026#39;s\nperformance with respect to a single aspect of service quality.\nExactly one of the following must be set:\n\u0026#39;basic_sli\u0026#39;, \u0026#39;request_based_sli\u0026#39;, \u0026#39;windows_based_sli\u0026#39; When `null`, the `request_based_sli` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.request_based_sli.new](#fn-request_based_slinew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.timeouts.new](#fn-timeoutsnew) constructor.\n  - `windows_based_sli` (`list[obj]`): A windows-based SLI defines the criteria for time windows.\ngood_service is defined based off the count of these time windows\nfor which the provided service was of good quality.\n\nA SLI describes a good service. It is used to measure and calculate\nthe quality of the Service\u0026#39;s performance with respect to a single\naspect of service quality.\n\nExactly one of the following must be set:\n\u0026#39;basic_sli\u0026#39;, \u0026#39;request_based_sli\u0026#39;, \u0026#39;windows_based_sli\u0026#39; When `null`, the `windows_based_sli` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.new](#fn-windows_based_slinew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    goal,
    service,
    basic_sli=null,
    calendar_period=null,
    display_name=null,
    project=null,
    request_based_sli=null,
    rolling_period_days=null,
    slo_id=null,
    timeouts=null,
    user_labels=null,
    windows_based_sli=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_slo',
    label=resourceLabel,
    attrs=self.newAttrs(
      basic_sli=basic_sli,
      calendar_period=calendar_period,
      display_name=display_name,
      goal=goal,
      project=project,
      request_based_sli=request_based_sli,
      rolling_period_days=rolling_period_days,
      service=service,
      slo_id=slo_id,
      timeouts=timeouts,
      user_labels=user_labels,
      windows_based_sli=windows_based_sli
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.monitoring_slo.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_slo`\nTerraform resource.\n\nUnlike [google.monitoring_slo.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `calendar_period` (`string`): A calendar period, semantically &#34;since the start of the current\n&lt;calendarPeriod&gt;&#34;. Possible values: [&#34;DAY&#34;, &#34;WEEK&#34;, &#34;FORTNIGHT&#34;, &#34;MONTH&#34;] When `null`, the `calendar_period` field will be omitted from the resulting object.\n  - `display_name` (`string`): Name used for UI elements listing this SLO. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `goal` (`number`): The fraction of service that must be good in order for this objective\nto be met. 0 &lt; goal &lt;= 0.999\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `rolling_period_days` (`number`): A rolling time period, semantically &#34;in the past X days&#34;.\nMust be between 1 to 30 days, inclusive. When `null`, the `rolling_period_days` field will be omitted from the resulting object.\n  - `service` (`string`): ID of the service to which this SLO belongs.\n  - `slo_id` (`string`): The id to use for this ServiceLevelObjective. If omitted, an id will be generated instead. When `null`, the `slo_id` field will be omitted from the resulting object.\n  - `user_labels` (`obj`): This field is intended to be used for organizing and identifying the AlertPolicy\nobjects.The field can contain up to 64 entries. Each key and value is limited\nto 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values\ncan contain only lowercase letters, numerals, underscores, and dashes. Keys\nmust begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.\n  - `basic_sli` (`list[obj]`): Basic Service-Level Indicator (SLI) on a well-known service type.\nPerformance will be computed on the basis of pre-defined metrics.\n\nSLIs are used to measure and calculate the quality of the Service&#39;s\nperformance with respect to a single aspect of service quality.\n\nExactly one of the following must be set:\n&#39;basic_sli&#39;, &#39;request_based_sli&#39;, &#39;windows_based_sli&#39; When `null`, the `basic_sli` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.basic_sli.new](#fn-basic_slinew) constructor.\n  - `request_based_sli` (`list[obj]`): A request-based SLI defines a SLI for which atomic units of\nservice are counted directly.\n\nA SLI describes a good service.\nIt is used to measure and calculate the quality of the Service&#39;s\nperformance with respect to a single aspect of service quality.\nExactly one of the following must be set:\n&#39;basic_sli&#39;, &#39;request_based_sli&#39;, &#39;windows_based_sli&#39; When `null`, the `request_based_sli` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.request_based_sli.new](#fn-request_based_slinew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.timeouts.new](#fn-timeoutsnew) constructor.\n  - `windows_based_sli` (`list[obj]`): A windows-based SLI defines the criteria for time windows.\ngood_service is defined based off the count of these time windows\nfor which the provided service was of good quality.\n\nA SLI describes a good service. It is used to measure and calculate\nthe quality of the Service&#39;s performance with respect to a single\naspect of service quality.\n\nExactly one of the following must be set:\n&#39;basic_sli&#39;, &#39;request_based_sli&#39;, &#39;windows_based_sli&#39; When `null`, the `windows_based_sli` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.new](#fn-windows_based_slinew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_slo` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    goal,
    service,
    basic_sli=null,
    calendar_period=null,
    display_name=null,
    project=null,
    request_based_sli=null,
    rolling_period_days=null,
    slo_id=null,
    timeouts=null,
    user_labels=null,
    windows_based_sli=null
  ):: std.prune(a={
    basic_sli: basic_sli,
    calendar_period: calendar_period,
    display_name: display_name,
    goal: goal,
    project: project,
    request_based_sli: request_based_sli,
    rolling_period_days: rolling_period_days,
    service: service,
    slo_id: slo_id,
    timeouts: timeouts,
    user_labels: user_labels,
    windows_based_sli: windows_based_sli,
  }),
  request_based_sli:: {
    distribution_cut:: {
      '#new':: d.fn(help='\n`google.monitoring_slo.request_based_sli.distribution_cut.new` constructs a new object with attributes and blocks configured for the `distribution_cut`\nTerraform sub block.\n\n\n\n**Args**:\n  - `distribution_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)\naggregating values to quantify the good service provided.\n\nMust have ValueType = DISTRIBUTION and\nMetricKind = DELTA or MetricKind = CUMULATIVE.\n  - `range` (`list[obj]`): Range of numerical values. The computed good_service\nwill be the count of values x in the Distribution such\nthat range.min &lt;= x &lt;= range.max. inclusive of min and\nmax. Open ranges can be defined by setting\njust one of min or max. When `null`, the `range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.request_based_sli.distribution_cut.range.new](#fn-request_based_slirequest_based_slirangenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `distribution_cut` sub block.\n', args=[]),
      new(
        distribution_filter,
        range=null
      ):: std.prune(a={
        distribution_filter: distribution_filter,
        range: range,
      }),
      range:: {
        '#new':: d.fn(help='\n`google.monitoring_slo.request_based_sli.distribution_cut.range.new` constructs a new object with attributes and blocks configured for the `range`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max` (`number`): max value for the range (inclusive). If not given,\nwill be set to &#34;infinity&#34;, defining an open range\n&#34;&gt;= range.min&#34; When `null`, the `max` field will be omitted from the resulting object.\n  - `min` (`number`): Min value for the range (inclusive). If not given,\nwill be set to &#34;-infinity&#34;, defining an open range\n&#34;&lt; range.max&#34; When `null`, the `min` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `range` sub block.\n', args=[]),
        new(
          max=null,
          min=null
        ):: std.prune(a={
          max: max,
          min: min,
        }),
      },
    },
    good_total_ratio:: {
      '#new':: d.fn(help='\n`google.monitoring_slo.request_based_sli.good_total_ratio.new` constructs a new object with attributes and blocks configured for the `good_total_ratio`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bad_service_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)\nquantifying bad service provided, either demanded service that\nwas not provided or demanded service that was of inadequate\nquality.\n\nMust have ValueType = DOUBLE or ValueType = INT64 and\nmust have MetricKind = DELTA or MetricKind = CUMULATIVE.\n\nExactly two of &#39;good_service_filter&#39;,&#39;bad_service_filter&#39;,&#39;total_service_filter&#39;\nmust be set (good &#43; bad = total is assumed). When `null`, the `bad_service_filter` field will be omitted from the resulting object.\n  - `good_service_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)\nquantifying good service provided.\nMust have ValueType = DOUBLE or ValueType = INT64 and\nmust have MetricKind = DELTA or MetricKind = CUMULATIVE.\n\nExactly two of &#39;good_service_filter&#39;,&#39;bad_service_filter&#39;,&#39;total_service_filter&#39;\nmust be set (good &#43; bad = total is assumed). When `null`, the `good_service_filter` field will be omitted from the resulting object.\n  - `total_service_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)\nquantifying total demanded service.\n\nMust have ValueType = DOUBLE or ValueType = INT64 and\nmust have MetricKind = DELTA or MetricKind = CUMULATIVE.\n\nExactly two of &#39;good_service_filter&#39;,&#39;bad_service_filter&#39;,&#39;total_service_filter&#39;\nmust be set (good &#43; bad = total is assumed). When `null`, the `total_service_filter` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `good_total_ratio` sub block.\n', args=[]),
      new(
        bad_service_filter=null,
        good_service_filter=null,
        total_service_filter=null
      ):: std.prune(a={
        bad_service_filter: bad_service_filter,
        good_service_filter: good_service_filter,
        total_service_filter: total_service_filter,
      }),
    },
    '#new':: d.fn(help='\n`google.monitoring_slo.request_based_sli.new` constructs a new object with attributes and blocks configured for the `request_based_sli`\nTerraform sub block.\n\n\n\n**Args**:\n  - `distribution_cut` (`list[obj]`): Used when good_service is defined by a count of values aggregated in a\nDistribution that fall into a good range. The total_service is the\ntotal count of all values aggregated in the Distribution.\nDefines a distribution TimeSeries filter and thresholds used for\nmeasuring good service and total service.\n\nExactly one of &#39;distribution_cut&#39; or &#39;good_total_ratio&#39; can be set. When `null`, the `distribution_cut` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.request_based_sli.distribution_cut.new](#fn-request_based_slidistribution_cutnew) constructor.\n  - `good_total_ratio` (`list[obj]`): A means to compute a ratio of &#39;good_service&#39; to &#39;total_service&#39;.\nDefines computing this ratio with two TimeSeries [monitoring filters](https://cloud.google.com/monitoring/api/v3/filters)\nMust specify exactly two of good, bad, and total service filters.\nThe relationship good_service &#43; bad_service = total_service\nwill be assumed.\n\nExactly one of &#39;distribution_cut&#39; or &#39;good_total_ratio&#39; can be set. When `null`, the `good_total_ratio` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.request_based_sli.good_total_ratio.new](#fn-request_based_sligood_total_rationew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `request_based_sli` sub block.\n', args=[]),
    new(
      distribution_cut=null,
      good_total_ratio=null
    ):: std.prune(a={
      distribution_cut: distribution_cut,
      good_total_ratio: good_total_ratio,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.monitoring_slo.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  windows_based_sli:: {
    good_total_ratio_threshold:: {
      basic_sli_performance:: {
        availability:: {
          '#new':: d.fn(help='\n`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.basic_sli_performance.availability.new` constructs a new object with attributes and blocks configured for the `availability`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether an availability SLI is enabled or not. Must be set to &#39;true. Defaults to &#39;true&#39;. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `availability` sub block.\n', args=[]),
          new(
            enabled=null
          ):: std.prune(a={
            enabled: enabled,
          }),
        },
        latency:: {
          '#new':: d.fn(help='\n`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.basic_sli_performance.latency.new` constructs a new object with attributes and blocks configured for the `latency`\nTerraform sub block.\n\n\n\n**Args**:\n  - `threshold` (`string`): A duration string, e.g. 10s.\nGood service is defined to be the count of requests made to\nthis service that return in no more than threshold.\n\n**Returns**:\n  - An attribute object that represents the `latency` sub block.\n', args=[]),
          new(
            threshold
          ):: std.prune(a={
            threshold: threshold,
          }),
        },
        '#new':: d.fn(help='\n`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.basic_sli_performance.new` constructs a new object with attributes and blocks configured for the `basic_sli_performance`\nTerraform sub block.\n\n\n\n**Args**:\n  - `location` (`list`): An optional set of locations to which this SLI is relevant.\nTelemetry from other locations will not be used to calculate\nperformance for this SLI. If omitted, this SLI applies to all\nlocations in which the Service has activity. For service types\nthat don&#39;t support breaking down by location, setting this\nfield will result in an error. When `null`, the `location` field will be omitted from the resulting object.\n  - `method` (`list`): An optional set of RPCs to which this SLI is relevant.\nTelemetry from other methods will not be used to calculate\nperformance for this SLI. If omitted, this SLI applies to all\nthe Service&#39;s methods. For service types that don&#39;t support\nbreaking down by method, setting this field will result in an\nerror. When `null`, the `method` field will be omitted from the resulting object.\n  - `version` (`list`): The set of API versions to which this SLI is relevant.\nTelemetry from other API versions will not be used to\ncalculate performance for this SLI. If omitted,\nthis SLI applies to all API versions. For service types\nthat don&#39;t support breaking down by version, setting this\nfield will result in an error. When `null`, the `version` field will be omitted from the resulting object.\n  - `availability` (`list[obj]`): Availability based SLI, dervied from count of requests made to this service that return successfully. When `null`, the `availability` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.basic_sli_performance.availability.new](#fn-windows_based_sliwindows_based_sligood_total_ratio_thresholdavailabilitynew) constructor.\n  - `latency` (`list[obj]`): Parameters for a latency threshold SLI. When `null`, the `latency` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.basic_sli_performance.latency.new](#fn-windows_based_sliwindows_based_sligood_total_ratio_thresholdlatencynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `basic_sli_performance` sub block.\n', args=[]),
        new(
          availability=null,
          latency=null,
          location=null,
          method=null,
          version=null
        ):: std.prune(a={
          availability: availability,
          latency: latency,
          location: location,
          method: method,
          version: version,
        }),
      },
      '#new':: d.fn(help='\n`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.new` constructs a new object with attributes and blocks configured for the `good_total_ratio_threshold`\nTerraform sub block.\n\n\n\n**Args**:\n  - `threshold` (`number`): If window performance &gt;= threshold, the window is counted\nas good. When `null`, the `threshold` field will be omitted from the resulting object.\n  - `basic_sli_performance` (`list[obj]`): Basic SLI to evaluate to judge window quality. When `null`, the `basic_sli_performance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.basic_sli_performance.new](#fn-windows_based_sliwindows_based_slibasic_sli_performancenew) constructor.\n  - `performance` (`list[obj]`): Request-based SLI to evaluate to judge window quality. When `null`, the `performance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.new](#fn-windows_based_sliwindows_based_sliperformancenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `good_total_ratio_threshold` sub block.\n', args=[]),
      new(
        basic_sli_performance=null,
        performance=null,
        threshold=null
      ):: std.prune(a={
        basic_sli_performance: basic_sli_performance,
        performance: performance,
        threshold: threshold,
      }),
      performance:: {
        distribution_cut:: {
          '#new':: d.fn(help='\n`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.distribution_cut.new` constructs a new object with attributes and blocks configured for the `distribution_cut`\nTerraform sub block.\n\n\n\n**Args**:\n  - `distribution_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)\naggregating values to quantify the good service provided.\n\nMust have ValueType = DISTRIBUTION and\nMetricKind = DELTA or MetricKind = CUMULATIVE.\n  - `range` (`list[obj]`): Range of numerical values. The computed good_service\nwill be the count of values x in the Distribution such\nthat range.min &lt;= x &lt;= range.max. inclusive of min and\nmax. Open ranges can be defined by setting\njust one of min or max. When `null`, the `range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.distribution_cut.range.new](#fn-windows_based_sliwindows_based_sligood_total_ratio_thresholdperformancerangenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `distribution_cut` sub block.\n', args=[]),
          new(
            distribution_filter,
            range=null
          ):: std.prune(a={
            distribution_filter: distribution_filter,
            range: range,
          }),
          range:: {
            '#new':: d.fn(help='\n`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.distribution_cut.range.new` constructs a new object with attributes and blocks configured for the `range`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max` (`number`): max value for the range (inclusive). If not given,\nwill be set to &#34;infinity&#34;, defining an open range\n&#34;&gt;= range.min&#34; When `null`, the `max` field will be omitted from the resulting object.\n  - `min` (`number`): Min value for the range (inclusive). If not given,\nwill be set to &#34;-infinity&#34;, defining an open range\n&#34;&lt; range.max&#34; When `null`, the `min` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `range` sub block.\n', args=[]),
            new(
              max=null,
              min=null
            ):: std.prune(a={
              max: max,
              min: min,
            }),
          },
        },
        good_total_ratio:: {
          '#new':: d.fn(help='\n`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.good_total_ratio.new` constructs a new object with attributes and blocks configured for the `good_total_ratio`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bad_service_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)\nquantifying bad service provided, either demanded service that\nwas not provided or demanded service that was of inadequate\nquality. Exactly two of\ngood, bad, or total service filter must be defined (where\ngood &#43; bad = total is assumed)\n\nMust have ValueType = DOUBLE or ValueType = INT64 and\nmust have MetricKind = DELTA or MetricKind = CUMULATIVE. When `null`, the `bad_service_filter` field will be omitted from the resulting object.\n  - `good_service_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)\nquantifying good service provided. Exactly two of\ngood, bad, or total service filter must be defined (where\ngood &#43; bad = total is assumed)\n\nMust have ValueType = DOUBLE or ValueType = INT64 and\nmust have MetricKind = DELTA or MetricKind = CUMULATIVE. When `null`, the `good_service_filter` field will be omitted from the resulting object.\n  - `total_service_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)\nquantifying total demanded service. Exactly two of\ngood, bad, or total service filter must be defined (where\ngood &#43; bad = total is assumed)\n\nMust have ValueType = DOUBLE or ValueType = INT64 and\nmust have MetricKind = DELTA or MetricKind = CUMULATIVE. When `null`, the `total_service_filter` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `good_total_ratio` sub block.\n', args=[]),
          new(
            bad_service_filter=null,
            good_service_filter=null,
            total_service_filter=null
          ):: std.prune(a={
            bad_service_filter: bad_service_filter,
            good_service_filter: good_service_filter,
            total_service_filter: total_service_filter,
          }),
        },
        '#new':: d.fn(help='\n`google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.new` constructs a new object with attributes and blocks configured for the `performance`\nTerraform sub block.\n\n\n\n**Args**:\n  - `distribution_cut` (`list[obj]`): Used when good_service is defined by a count of values aggregated in a\nDistribution that fall into a good range. The total_service is the\ntotal count of all values aggregated in the Distribution.\nDefines a distribution TimeSeries filter and thresholds used for\nmeasuring good service and total service. When `null`, the `distribution_cut` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.distribution_cut.new](#fn-windows_based_sliwindows_based_sligood_total_ratio_thresholddistribution_cutnew) constructor.\n  - `good_total_ratio` (`list[obj]`): A means to compute a ratio of &#39;good_service&#39; to &#39;total_service&#39;.\nDefines computing this ratio with two TimeSeries [monitoring filters](https://cloud.google.com/monitoring/api/v3/filters)\nMust specify exactly two of good, bad, and total service filters.\nThe relationship good_service &#43; bad_service = total_service\nwill be assumed. When `null`, the `good_total_ratio` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.performance.good_total_ratio.new](#fn-windows_based_sliwindows_based_sligood_total_ratio_thresholdgood_total_rationew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `performance` sub block.\n', args=[]),
        new(
          distribution_cut=null,
          good_total_ratio=null
        ):: std.prune(a={
          distribution_cut: distribution_cut,
          good_total_ratio: good_total_ratio,
        }),
      },
    },
    metric_mean_in_range:: {
      '#new':: d.fn(help='\n`google.monitoring_slo.windows_based_sli.metric_mean_in_range.new` constructs a new object with attributes and blocks configured for the `metric_mean_in_range`\nTerraform sub block.\n\n\n\n**Args**:\n  - `time_series` (`string`): A [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)\nspecifying the TimeSeries to use for evaluating window\nThe provided TimeSeries must have ValueType = INT64 or\nValueType = DOUBLE and MetricKind = GAUGE. Mean value &#39;X&#39;\nshould satisfy &#39;range.min &lt;= X &lt;= range.max&#39;\nunder good service.\n  - `range` (`list[obj]`): Range of numerical values. The computed good_service\nwill be the count of values x in the Distribution such\nthat range.min &lt;= x &lt;= range.max. inclusive of min and\nmax. Open ranges can be defined by setting\njust one of min or max. Mean value &#39;X&#39; of &#39;time_series&#39;\nvalues should satisfy &#39;range.min &lt;= X &lt;= range.max&#39; for a\ngood service. When `null`, the `range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.metric_mean_in_range.range.new](#fn-windows_based_sliwindows_based_slirangenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `metric_mean_in_range` sub block.\n', args=[]),
      new(
        time_series,
        range=null
      ):: std.prune(a={
        range: range,
        time_series: time_series,
      }),
      range:: {
        '#new':: d.fn(help='\n`google.monitoring_slo.windows_based_sli.metric_mean_in_range.range.new` constructs a new object with attributes and blocks configured for the `range`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max` (`number`): max value for the range (inclusive). If not given,\nwill be set to &#34;infinity&#34;, defining an open range\n&#34;&gt;= range.min&#34; When `null`, the `max` field will be omitted from the resulting object.\n  - `min` (`number`): Min value for the range (inclusive). If not given,\nwill be set to &#34;-infinity&#34;, defining an open range\n&#34;&lt; range.max&#34; When `null`, the `min` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `range` sub block.\n', args=[]),
        new(
          max=null,
          min=null
        ):: std.prune(a={
          max: max,
          min: min,
        }),
      },
    },
    metric_sum_in_range:: {
      '#new':: d.fn(help='\n`google.monitoring_slo.windows_based_sli.metric_sum_in_range.new` constructs a new object with attributes and blocks configured for the `metric_sum_in_range`\nTerraform sub block.\n\n\n\n**Args**:\n  - `time_series` (`string`): A [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)\nspecifying the TimeSeries to use for evaluating window\nquality. The provided TimeSeries must have\nValueType = INT64 or ValueType = DOUBLE and\nMetricKind = GAUGE.\n\nSummed value &#39;X&#39; should satisfy\n&#39;range.min &lt;= X &lt;= range.max&#39; for a good window.\n  - `range` (`list[obj]`): Range of numerical values. The computed good_service\nwill be the count of values x in the Distribution such\nthat range.min &lt;= x &lt;= range.max. inclusive of min and\nmax. Open ranges can be defined by setting\njust one of min or max. Summed value &#39;X&#39; should satisfy\n&#39;range.min &lt;= X &lt;= range.max&#39; for a good window. When `null`, the `range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.metric_sum_in_range.range.new](#fn-windows_based_sliwindows_based_slirangenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `metric_sum_in_range` sub block.\n', args=[]),
      new(
        time_series,
        range=null
      ):: std.prune(a={
        range: range,
        time_series: time_series,
      }),
      range:: {
        '#new':: d.fn(help='\n`google.monitoring_slo.windows_based_sli.metric_sum_in_range.range.new` constructs a new object with attributes and blocks configured for the `range`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max` (`number`): max value for the range (inclusive). If not given,\nwill be set to &#34;infinity&#34;, defining an open range\n&#34;&gt;= range.min&#34; When `null`, the `max` field will be omitted from the resulting object.\n  - `min` (`number`): Min value for the range (inclusive). If not given,\nwill be set to &#34;-infinity&#34;, defining an open range\n&#34;&lt; range.max&#34; When `null`, the `min` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `range` sub block.\n', args=[]),
        new(
          max=null,
          min=null
        ):: std.prune(a={
          max: max,
          min: min,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.monitoring_slo.windows_based_sli.new` constructs a new object with attributes and blocks configured for the `windows_based_sli`\nTerraform sub block.\n\n\n\n**Args**:\n  - `good_bad_metric_filter` (`string`): A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)\nwith ValueType = BOOL. The window is good if any true values\nappear in the window. One of &#39;good_bad_metric_filter&#39;,\n&#39;good_total_ratio_threshold&#39;, &#39;metric_mean_in_range&#39;,\n&#39;metric_sum_in_range&#39; must be set for &#39;windows_based_sli&#39;. When `null`, the `good_bad_metric_filter` field will be omitted from the resulting object.\n  - `window_period` (`string`): Duration over which window quality is evaluated, given as a\nduration string &#34;{X}s&#34; representing X seconds. Must be an\ninteger fraction of a day and at least 60s. When `null`, the `window_period` field will be omitted from the resulting object.\n  - `good_total_ratio_threshold` (`list[obj]`): Criterion that describes a window as good if its performance is\nhigh enough. One of &#39;good_bad_metric_filter&#39;,\n&#39;good_total_ratio_threshold&#39;, &#39;metric_mean_in_range&#39;,\n&#39;metric_sum_in_range&#39; must be set for &#39;windows_based_sli&#39;. When `null`, the `good_total_ratio_threshold` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.good_total_ratio_threshold.new](#fn-windows_based_sligood_total_ratio_thresholdnew) constructor.\n  - `metric_mean_in_range` (`list[obj]`): Criterion that describes a window as good if the metric&#39;s value\nis in a good range, *averaged* across returned streams.\nOne of &#39;good_bad_metric_filter&#39;,\n\n&#39;good_total_ratio_threshold&#39;, &#39;metric_mean_in_range&#39;,\n&#39;metric_sum_in_range&#39; must be set for &#39;windows_based_sli&#39;.\nAverage value X of &#39;time_series&#39; should satisfy\n&#39;range.min &lt;= X &lt;= range.max&#39; for a good window. When `null`, the `metric_mean_in_range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.metric_mean_in_range.new](#fn-windows_based_slimetric_mean_in_rangenew) constructor.\n  - `metric_sum_in_range` (`list[obj]`): Criterion that describes a window as good if the metric&#39;s value\nis in a good range, *summed* across returned streams.\nSummed value &#39;X&#39; of &#39;time_series&#39; should satisfy\n&#39;range.min &lt;= X &lt;= range.max&#39; for a good window.\n\nOne of &#39;good_bad_metric_filter&#39;,\n&#39;good_total_ratio_threshold&#39;, &#39;metric_mean_in_range&#39;,\n&#39;metric_sum_in_range&#39; must be set for &#39;windows_based_sli&#39;. When `null`, the `metric_sum_in_range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_slo.windows_based_sli.metric_sum_in_range.new](#fn-windows_based_slimetric_sum_in_rangenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `windows_based_sli` sub block.\n', args=[]),
    new(
      good_bad_metric_filter=null,
      good_total_ratio_threshold=null,
      metric_mean_in_range=null,
      metric_sum_in_range=null,
      window_period=null
    ):: std.prune(a={
      good_bad_metric_filter: good_bad_metric_filter,
      good_total_ratio_threshold: good_total_ratio_threshold,
      metric_mean_in_range: metric_mean_in_range,
      metric_sum_in_range: metric_sum_in_range,
      window_period: window_period,
    }),
  },
  '#withBasicSli':: d.fn(help='`google.list[obj].withBasicSli` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the basic_sli field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBasicSliMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `basic_sli` field.\n', args=[]),
  withBasicSli(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          basic_sli: value,
        },
      },
    },
  },
  '#withBasicSliMixin':: d.fn(help='`google.list[obj].withBasicSliMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the basic_sli field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBasicSli](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `basic_sli` field.\n', args=[]),
  withBasicSliMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          basic_sli+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCalendarPeriod':: d.fn(help='`google.string.withCalendarPeriod` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the calendar_period field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `calendar_period` field.\n', args=[]),
  withCalendarPeriod(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          calendar_period: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withGoal':: d.fn(help='`google.number.withGoal` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the goal field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `goal` field.\n', args=[]),
  withGoal(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          goal: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRequestBasedSli':: d.fn(help='`google.list[obj].withRequestBasedSli` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the request_based_sli field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRequestBasedSliMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `request_based_sli` field.\n', args=[]),
  withRequestBasedSli(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          request_based_sli: value,
        },
      },
    },
  },
  '#withRequestBasedSliMixin':: d.fn(help='`google.list[obj].withRequestBasedSliMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the request_based_sli field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRequestBasedSli](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `request_based_sli` field.\n', args=[]),
  withRequestBasedSliMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          request_based_sli+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRollingPeriodDays':: d.fn(help='`google.number.withRollingPeriodDays` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the rolling_period_days field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `rolling_period_days` field.\n', args=[]),
  withRollingPeriodDays(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          rolling_period_days: value,
        },
      },
    },
  },
  '#withService':: d.fn(help='`google.string.withService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service` field.\n', args=[]),
  withService(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  '#withSloId':: d.fn(help='`google.string.withSloId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the slo_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `slo_id` field.\n', args=[]),
  withSloId(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          slo_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUserLabels':: d.fn(help='`google.obj.withUserLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the user_labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `user_labels` field.\n', args=[]),
  withUserLabels(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          user_labels: value,
        },
      },
    },
  },
  '#withWindowsBasedSli':: d.fn(help='`google.list[obj].withWindowsBasedSli` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the windows_based_sli field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withWindowsBasedSliMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `windows_based_sli` field.\n', args=[]),
  withWindowsBasedSli(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          windows_based_sli: value,
        },
      },
    },
  },
  '#withWindowsBasedSliMixin':: d.fn(help='`google.list[obj].withWindowsBasedSliMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the windows_based_sli field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withWindowsBasedSli](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `windows_based_sli` field.\n', args=[]),
  withWindowsBasedSliMixin(resourceLabel, value): {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          windows_based_sli+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
