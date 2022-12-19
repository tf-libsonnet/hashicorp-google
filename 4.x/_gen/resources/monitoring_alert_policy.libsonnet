local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='monitoring_alert_policy', url='', help='`monitoring_alert_policy` represents the `google_monitoring_alert_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  alert_strategy:: {
    '#new':: d.fn(help='\n`google.monitoring_alert_policy.alert_strategy.new` constructs a new object with attributes and blocks configured for the `alert_strategy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auto_close` (`string`): If an alert policy that was active has no data for this long, any open incidents will close. When `null`, the `auto_close` field will be omitted from the resulting object.\n  - `notification_rate_limit` (`list[obj]`): Required for alert policies with a LogMatch condition.\nThis limit is not implemented for alert policies that are not log-based. When `null`, the `notification_rate_limit` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.alert_strategy.notification_rate_limit.new](#fn-alertstrategynotificationratelimitnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `alert_strategy` sub block.\n', args=[]),
    new(
      auto_close=null,
      notification_rate_limit=null
    ):: std.prune(a={
      auto_close: auto_close,
      notification_rate_limit: notification_rate_limit,
    }),
    notification_rate_limit:: {
      '#new':: d.fn(help='\n`google.monitoring_alert_policy.alert_strategy.notification_rate_limit.new` constructs a new object with attributes and blocks configured for the `notification_rate_limit`\nTerraform sub block.\n\n\n\n**Args**:\n  - `period` (`string`): Not more than one notification per period. When `null`, the `period` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `notification_rate_limit` sub block.\n', args=[]),
      new(
        period=null
      ):: std.prune(a={
        period: period,
      }),
    },
  },
  conditions:: {
    condition_absent:: {
      aggregations:: {
        '#new':: d.fn(help='\n`google.monitoring_alert_policy.conditions.condition_absent.aggregations.new` constructs a new object with attributes and blocks configured for the `aggregations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `alignment_period` (`string`): The alignment period for per-time\nseries alignment. If present,\nalignmentPeriod must be at least\n60 seconds. After per-time series\nalignment, each time series will\ncontain data points only on the\nperiod boundaries. If\nperSeriesAligner is not specified\nor equals ALIGN_NONE, then this\nfield is ignored. If\nperSeriesAligner is specified and\ndoes not equal ALIGN_NONE, then\nthis field must be defined;\notherwise an error is returned. When `null`, the `alignment_period` field will be omitted from the resulting object.\n  - `cross_series_reducer` (`string`): The approach to be used to combine\ntime series. Not all reducer\nfunctions may be applied to all\ntime series, depending on the\nmetric type and the value type of\nthe original time series.\nReduction may change the metric\ntype of value type of the time\nseries.Time series data must be\naligned in order to perform cross-\ntime series reduction. If\ncrossSeriesReducer is specified,\nthen perSeriesAligner must be\nspecified and not equal ALIGN_NONE\nand alignmentPeriod must be\nspecified; otherwise, an error is\nreturned. Possible values: [&#34;REDUCE_NONE&#34;, &#34;REDUCE_MEAN&#34;, &#34;REDUCE_MIN&#34;, &#34;REDUCE_MAX&#34;, &#34;REDUCE_SUM&#34;, &#34;REDUCE_STDDEV&#34;, &#34;REDUCE_COUNT&#34;, &#34;REDUCE_COUNT_TRUE&#34;, &#34;REDUCE_COUNT_FALSE&#34;, &#34;REDUCE_FRACTION_TRUE&#34;, &#34;REDUCE_PERCENTILE_99&#34;, &#34;REDUCE_PERCENTILE_95&#34;, &#34;REDUCE_PERCENTILE_50&#34;, &#34;REDUCE_PERCENTILE_05&#34;] When `null`, the `cross_series_reducer` field will be omitted from the resulting object.\n  - `group_by_fields` (`list`): The set of fields to preserve when\ncrossSeriesReducer is specified.\nThe groupByFields determine how\nthe time series are partitioned\ninto subsets prior to applying the\naggregation function. Each subset\ncontains time series that have the\nsame value for each of the\ngrouping fields. Each individual\ntime series is a member of exactly\none subset. The crossSeriesReducer\nis applied to each subset of time\nseries. It is not possible to\nreduce across different resource\ntypes, so this field implicitly\ncontains resource.type. Fields not\nspecified in groupByFields are\naggregated away. If groupByFields\nis not specified and all the time\nseries have the same resource\ntype, then the time series are\naggregated into a single output\ntime series. If crossSeriesReducer\nis not defined, this field is\nignored. When `null`, the `group_by_fields` field will be omitted from the resulting object.\n  - `per_series_aligner` (`string`): The approach to be used to align\nindividual time series. Not all\nalignment functions may be applied\nto all time series, depending on\nthe metric type and value type of\nthe original time series.\nAlignment may change the metric\ntype or the value type of the time\nseries.Time series data must be\naligned in order to perform cross-\ntime series reduction. If\ncrossSeriesReducer is specified,\nthen perSeriesAligner must be\nspecified and not equal ALIGN_NONE\nand alignmentPeriod must be\nspecified; otherwise, an error is\nreturned. Possible values: [&#34;ALIGN_NONE&#34;, &#34;ALIGN_DELTA&#34;, &#34;ALIGN_RATE&#34;, &#34;ALIGN_INTERPOLATE&#34;, &#34;ALIGN_NEXT_OLDER&#34;, &#34;ALIGN_MIN&#34;, &#34;ALIGN_MAX&#34;, &#34;ALIGN_MEAN&#34;, &#34;ALIGN_COUNT&#34;, &#34;ALIGN_SUM&#34;, &#34;ALIGN_STDDEV&#34;, &#34;ALIGN_COUNT_TRUE&#34;, &#34;ALIGN_COUNT_FALSE&#34;, &#34;ALIGN_FRACTION_TRUE&#34;, &#34;ALIGN_PERCENTILE_99&#34;, &#34;ALIGN_PERCENTILE_95&#34;, &#34;ALIGN_PERCENTILE_50&#34;, &#34;ALIGN_PERCENTILE_05&#34;, &#34;ALIGN_PERCENT_CHANGE&#34;] When `null`, the `per_series_aligner` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `aggregations` sub block.\n', args=[]),
        new(
          alignment_period=null,
          cross_series_reducer=null,
          group_by_fields=null,
          per_series_aligner=null
        ):: std.prune(a={
          alignment_period: alignment_period,
          cross_series_reducer: cross_series_reducer,
          group_by_fields: group_by_fields,
          per_series_aligner: per_series_aligner,
        }),
      },
      '#new':: d.fn(help='\n`google.monitoring_alert_policy.conditions.condition_absent.new` constructs a new object with attributes and blocks configured for the `condition_absent`\nTerraform sub block.\n\n\n\n**Args**:\n  - `duration` (`string`): The amount of time that a time series must\nfail to report new data to be considered\nfailing. Currently, only values that are a\nmultiple of a minute--e.g. 60s, 120s, or 300s\n--are supported.\n  - `filter` (`string`): A filter that identifies which time series\nshould be compared with the threshold.The\nfilter is similar to the one that is\nspecified in the\nMetricService.ListTimeSeries request (that\ncall is useful to verify the time series\nthat will be retrieved / processed) and must\nspecify the metric type and optionally may\ncontain restrictions on resource type,\nresource labels, and metric labels. This\nfield may not exceed 2048 Unicode characters\nin length. When `null`, the `filter` field will be omitted from the resulting object.\n  - `aggregations` (`list[obj]`): Specifies the alignment of data points in\nindividual time series as well as how to\ncombine the retrieved time series together\n(such as when aggregating multiple streams\non each resource to a single stream for each\nresource or when aggregating streams across\nall members of a group of resources).\nMultiple aggregations are applied in the\norder specified. When `null`, the `aggregations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_absent.aggregations.new](#fn-conditionabsentaggregationsnew) constructor.\n  - `trigger` (`list[obj]`): The number/percent of time series for which\nthe comparison must hold in order for the\ncondition to trigger. If unspecified, then\nthe condition will trigger if the comparison\nis true for any of the time series that have\nbeen identified by filter and aggregations. When `null`, the `trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_absent.trigger.new](#fn-conditionabsenttriggernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `condition_absent` sub block.\n', args=[]),
      new(
        duration,
        aggregations=null,
        filter=null,
        trigger=null
      ):: std.prune(a={
        aggregations: aggregations,
        duration: duration,
        filter: filter,
        trigger: trigger,
      }),
      trigger:: {
        '#new':: d.fn(help='\n`google.monitoring_alert_policy.conditions.condition_absent.trigger.new` constructs a new object with attributes and blocks configured for the `trigger`\nTerraform sub block.\n\n\n\n**Args**:\n  - `count` (`number`): The absolute number of time series\nthat must fail the predicate for the\ncondition to be triggered. When `null`, the `count` field will be omitted from the resulting object.\n  - `percent` (`number`): The percentage of time series that\nmust fail the predicate for the\ncondition to be triggered. When `null`, the `percent` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `trigger` sub block.\n', args=[]),
        new(
          count=null,
          percent=null
        ):: std.prune(a={
          count: count,
          percent: percent,
        }),
      },
    },
    condition_matched_log:: {
      '#new':: d.fn(help='\n`google.monitoring_alert_policy.conditions.condition_matched_log.new` constructs a new object with attributes and blocks configured for the `condition_matched_log`\nTerraform sub block.\n\n\n\n**Args**:\n  - `filter` (`string`): A logs-based filter.\n  - `label_extractors` (`obj`): A map from a label key to an extractor expression, which is used to\nextract the value for this label key. Each entry in this map is\na specification for how data should be extracted from log entries that\nmatch filter. Each combination of extracted values is treated as\na separate rule for the purposes of triggering notifications.\nLabel keys and corresponding values can be used in notifications\ngenerated by this condition. When `null`, the `label_extractors` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `condition_matched_log` sub block.\n', args=[]),
      new(
        filter,
        label_extractors=null
      ):: std.prune(a={
        filter: filter,
        label_extractors: label_extractors,
      }),
    },
    condition_monitoring_query_language:: {
      '#new':: d.fn(help='\n`google.monitoring_alert_policy.conditions.condition_monitoring_query_language.new` constructs a new object with attributes and blocks configured for the `condition_monitoring_query_language`\nTerraform sub block.\n\n\n\n**Args**:\n  - `duration` (`string`): The amount of time that a time series must\nviolate the threshold to be considered\nfailing. Currently, only values that are a\nmultiple of a minute--e.g., 0, 60, 120, or\n300 seconds--are supported. If an invalid\nvalue is given, an error will be returned.\nWhen choosing a duration, it is useful to\nkeep in mind the frequency of the underlying\ntime series data (which may also be affected\nby any alignments specified in the\naggregations field); a good duration is long\nenough so that a single outlier does not\ngenerate spurious alerts, but short enough\nthat unhealthy states are detected and\nalerted on quickly.\n  - `evaluation_missing_data` (`string`): A condition control that determines how\nmetric-threshold conditions are evaluated when\ndata stops arriving. Possible values: [&#34;EVALUATION_MISSING_DATA_INACTIVE&#34;, &#34;EVALUATION_MISSING_DATA_ACTIVE&#34;, &#34;EVALUATION_MISSING_DATA_NO_OP&#34;] When `null`, the `evaluation_missing_data` field will be omitted from the resulting object.\n  - `query` (`string`): Monitoring Query Language query that outputs a boolean stream.\n  - `trigger` (`list[obj]`): The number/percent of time series for which\nthe comparison must hold in order for the\ncondition to trigger. If unspecified, then\nthe condition will trigger if the comparison\nis true for any of the time series that have\nbeen identified by filter and aggregations,\nor by the ratio, if denominator_filter and\ndenominator_aggregations are specified. When `null`, the `trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_monitoring_query_language.trigger.new](#fn-conditionmonitoringquerylanguagetriggernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `condition_monitoring_query_language` sub block.\n', args=[]),
      new(
        duration,
        query,
        evaluation_missing_data=null,
        trigger=null
      ):: std.prune(a={
        duration: duration,
        evaluation_missing_data: evaluation_missing_data,
        query: query,
        trigger: trigger,
      }),
      trigger:: {
        '#new':: d.fn(help='\n`google.monitoring_alert_policy.conditions.condition_monitoring_query_language.trigger.new` constructs a new object with attributes and blocks configured for the `trigger`\nTerraform sub block.\n\n\n\n**Args**:\n  - `count` (`number`): The absolute number of time series\nthat must fail the predicate for the\ncondition to be triggered. When `null`, the `count` field will be omitted from the resulting object.\n  - `percent` (`number`): The percentage of time series that\nmust fail the predicate for the\ncondition to be triggered. When `null`, the `percent` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `trigger` sub block.\n', args=[]),
        new(
          count=null,
          percent=null
        ):: std.prune(a={
          count: count,
          percent: percent,
        }),
      },
    },
    condition_threshold:: {
      aggregations:: {
        '#new':: d.fn(help='\n`google.monitoring_alert_policy.conditions.condition_threshold.aggregations.new` constructs a new object with attributes and blocks configured for the `aggregations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `alignment_period` (`string`): The alignment period for per-time\nseries alignment. If present,\nalignmentPeriod must be at least\n60 seconds. After per-time series\nalignment, each time series will\ncontain data points only on the\nperiod boundaries. If\nperSeriesAligner is not specified\nor equals ALIGN_NONE, then this\nfield is ignored. If\nperSeriesAligner is specified and\ndoes not equal ALIGN_NONE, then\nthis field must be defined;\notherwise an error is returned. When `null`, the `alignment_period` field will be omitted from the resulting object.\n  - `cross_series_reducer` (`string`): The approach to be used to combine\ntime series. Not all reducer\nfunctions may be applied to all\ntime series, depending on the\nmetric type and the value type of\nthe original time series.\nReduction may change the metric\ntype of value type of the time\nseries.Time series data must be\naligned in order to perform cross-\ntime series reduction. If\ncrossSeriesReducer is specified,\nthen perSeriesAligner must be\nspecified and not equal ALIGN_NONE\nand alignmentPeriod must be\nspecified; otherwise, an error is\nreturned. Possible values: [&#34;REDUCE_NONE&#34;, &#34;REDUCE_MEAN&#34;, &#34;REDUCE_MIN&#34;, &#34;REDUCE_MAX&#34;, &#34;REDUCE_SUM&#34;, &#34;REDUCE_STDDEV&#34;, &#34;REDUCE_COUNT&#34;, &#34;REDUCE_COUNT_TRUE&#34;, &#34;REDUCE_COUNT_FALSE&#34;, &#34;REDUCE_FRACTION_TRUE&#34;, &#34;REDUCE_PERCENTILE_99&#34;, &#34;REDUCE_PERCENTILE_95&#34;, &#34;REDUCE_PERCENTILE_50&#34;, &#34;REDUCE_PERCENTILE_05&#34;] When `null`, the `cross_series_reducer` field will be omitted from the resulting object.\n  - `group_by_fields` (`list`): The set of fields to preserve when\ncrossSeriesReducer is specified.\nThe groupByFields determine how\nthe time series are partitioned\ninto subsets prior to applying the\naggregation function. Each subset\ncontains time series that have the\nsame value for each of the\ngrouping fields. Each individual\ntime series is a member of exactly\none subset. The crossSeriesReducer\nis applied to each subset of time\nseries. It is not possible to\nreduce across different resource\ntypes, so this field implicitly\ncontains resource.type. Fields not\nspecified in groupByFields are\naggregated away. If groupByFields\nis not specified and all the time\nseries have the same resource\ntype, then the time series are\naggregated into a single output\ntime series. If crossSeriesReducer\nis not defined, this field is\nignored. When `null`, the `group_by_fields` field will be omitted from the resulting object.\n  - `per_series_aligner` (`string`): The approach to be used to align\nindividual time series. Not all\nalignment functions may be applied\nto all time series, depending on\nthe metric type and value type of\nthe original time series.\nAlignment may change the metric\ntype or the value type of the time\nseries.Time series data must be\naligned in order to perform cross-\ntime series reduction. If\ncrossSeriesReducer is specified,\nthen perSeriesAligner must be\nspecified and not equal ALIGN_NONE\nand alignmentPeriod must be\nspecified; otherwise, an error is\nreturned. Possible values: [&#34;ALIGN_NONE&#34;, &#34;ALIGN_DELTA&#34;, &#34;ALIGN_RATE&#34;, &#34;ALIGN_INTERPOLATE&#34;, &#34;ALIGN_NEXT_OLDER&#34;, &#34;ALIGN_MIN&#34;, &#34;ALIGN_MAX&#34;, &#34;ALIGN_MEAN&#34;, &#34;ALIGN_COUNT&#34;, &#34;ALIGN_SUM&#34;, &#34;ALIGN_STDDEV&#34;, &#34;ALIGN_COUNT_TRUE&#34;, &#34;ALIGN_COUNT_FALSE&#34;, &#34;ALIGN_FRACTION_TRUE&#34;, &#34;ALIGN_PERCENTILE_99&#34;, &#34;ALIGN_PERCENTILE_95&#34;, &#34;ALIGN_PERCENTILE_50&#34;, &#34;ALIGN_PERCENTILE_05&#34;, &#34;ALIGN_PERCENT_CHANGE&#34;] When `null`, the `per_series_aligner` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `aggregations` sub block.\n', args=[]),
        new(
          alignment_period=null,
          cross_series_reducer=null,
          group_by_fields=null,
          per_series_aligner=null
        ):: std.prune(a={
          alignment_period: alignment_period,
          cross_series_reducer: cross_series_reducer,
          group_by_fields: group_by_fields,
          per_series_aligner: per_series_aligner,
        }),
      },
      denominator_aggregations:: {
        '#new':: d.fn(help='\n`google.monitoring_alert_policy.conditions.condition_threshold.denominator_aggregations.new` constructs a new object with attributes and blocks configured for the `denominator_aggregations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `alignment_period` (`string`): The alignment period for per-time\nseries alignment. If present,\nalignmentPeriod must be at least\n60 seconds. After per-time series\nalignment, each time series will\ncontain data points only on the\nperiod boundaries. If\nperSeriesAligner is not specified\nor equals ALIGN_NONE, then this\nfield is ignored. If\nperSeriesAligner is specified and\ndoes not equal ALIGN_NONE, then\nthis field must be defined;\notherwise an error is returned. When `null`, the `alignment_period` field will be omitted from the resulting object.\n  - `cross_series_reducer` (`string`): The approach to be used to combine\ntime series. Not all reducer\nfunctions may be applied to all\ntime series, depending on the\nmetric type and the value type of\nthe original time series.\nReduction may change the metric\ntype of value type of the time\nseries.Time series data must be\naligned in order to perform cross-\ntime series reduction. If\ncrossSeriesReducer is specified,\nthen perSeriesAligner must be\nspecified and not equal ALIGN_NONE\nand alignmentPeriod must be\nspecified; otherwise, an error is\nreturned. Possible values: [&#34;REDUCE_NONE&#34;, &#34;REDUCE_MEAN&#34;, &#34;REDUCE_MIN&#34;, &#34;REDUCE_MAX&#34;, &#34;REDUCE_SUM&#34;, &#34;REDUCE_STDDEV&#34;, &#34;REDUCE_COUNT&#34;, &#34;REDUCE_COUNT_TRUE&#34;, &#34;REDUCE_COUNT_FALSE&#34;, &#34;REDUCE_FRACTION_TRUE&#34;, &#34;REDUCE_PERCENTILE_99&#34;, &#34;REDUCE_PERCENTILE_95&#34;, &#34;REDUCE_PERCENTILE_50&#34;, &#34;REDUCE_PERCENTILE_05&#34;] When `null`, the `cross_series_reducer` field will be omitted from the resulting object.\n  - `group_by_fields` (`list`): The set of fields to preserve when\ncrossSeriesReducer is specified.\nThe groupByFields determine how\nthe time series are partitioned\ninto subsets prior to applying the\naggregation function. Each subset\ncontains time series that have the\nsame value for each of the\ngrouping fields. Each individual\ntime series is a member of exactly\none subset. The crossSeriesReducer\nis applied to each subset of time\nseries. It is not possible to\nreduce across different resource\ntypes, so this field implicitly\ncontains resource.type. Fields not\nspecified in groupByFields are\naggregated away. If groupByFields\nis not specified and all the time\nseries have the same resource\ntype, then the time series are\naggregated into a single output\ntime series. If crossSeriesReducer\nis not defined, this field is\nignored. When `null`, the `group_by_fields` field will be omitted from the resulting object.\n  - `per_series_aligner` (`string`): The approach to be used to align\nindividual time series. Not all\nalignment functions may be applied\nto all time series, depending on\nthe metric type and value type of\nthe original time series.\nAlignment may change the metric\ntype or the value type of the time\nseries.Time series data must be\naligned in order to perform cross-\ntime series reduction. If\ncrossSeriesReducer is specified,\nthen perSeriesAligner must be\nspecified and not equal ALIGN_NONE\nand alignmentPeriod must be\nspecified; otherwise, an error is\nreturned. Possible values: [&#34;ALIGN_NONE&#34;, &#34;ALIGN_DELTA&#34;, &#34;ALIGN_RATE&#34;, &#34;ALIGN_INTERPOLATE&#34;, &#34;ALIGN_NEXT_OLDER&#34;, &#34;ALIGN_MIN&#34;, &#34;ALIGN_MAX&#34;, &#34;ALIGN_MEAN&#34;, &#34;ALIGN_COUNT&#34;, &#34;ALIGN_SUM&#34;, &#34;ALIGN_STDDEV&#34;, &#34;ALIGN_COUNT_TRUE&#34;, &#34;ALIGN_COUNT_FALSE&#34;, &#34;ALIGN_FRACTION_TRUE&#34;, &#34;ALIGN_PERCENTILE_99&#34;, &#34;ALIGN_PERCENTILE_95&#34;, &#34;ALIGN_PERCENTILE_50&#34;, &#34;ALIGN_PERCENTILE_05&#34;, &#34;ALIGN_PERCENT_CHANGE&#34;] When `null`, the `per_series_aligner` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `denominator_aggregations` sub block.\n', args=[]),
        new(
          alignment_period=null,
          cross_series_reducer=null,
          group_by_fields=null,
          per_series_aligner=null
        ):: std.prune(a={
          alignment_period: alignment_period,
          cross_series_reducer: cross_series_reducer,
          group_by_fields: group_by_fields,
          per_series_aligner: per_series_aligner,
        }),
      },
      '#new':: d.fn(help='\n`google.monitoring_alert_policy.conditions.condition_threshold.new` constructs a new object with attributes and blocks configured for the `condition_threshold`\nTerraform sub block.\n\n\n\n**Args**:\n  - `comparison` (`string`): The comparison to apply between the time\nseries (indicated by filter and aggregation)\nand the threshold (indicated by\nthreshold_value). The comparison is applied\non each time series, with the time series on\nthe left-hand side and the threshold on the\nright-hand side. Only COMPARISON_LT and\nCOMPARISON_GT are supported currently. Possible values: [&#34;COMPARISON_GT&#34;, &#34;COMPARISON_GE&#34;, &#34;COMPARISON_LT&#34;, &#34;COMPARISON_LE&#34;, &#34;COMPARISON_EQ&#34;, &#34;COMPARISON_NE&#34;]\n  - `denominator_filter` (`string`): A filter that identifies a time series that\nshould be used as the denominator of a ratio\nthat will be compared with the threshold. If\na denominator_filter is specified, the time\nseries specified by the filter field will be\nused as the numerator.The filter is similar\nto the one that is specified in the\nMetricService.ListTimeSeries request (that\ncall is useful to verify the time series\nthat will be retrieved / processed) and must\nspecify the metric type and optionally may\ncontain restrictions on resource type,\nresource labels, and metric labels. This\nfield may not exceed 2048 Unicode characters\nin length. When `null`, the `denominator_filter` field will be omitted from the resulting object.\n  - `duration` (`string`): The amount of time that a time series must\nviolate the threshold to be considered\nfailing. Currently, only values that are a\nmultiple of a minute--e.g., 0, 60, 120, or\n300 seconds--are supported. If an invalid\nvalue is given, an error will be returned.\nWhen choosing a duration, it is useful to\nkeep in mind the frequency of the underlying\ntime series data (which may also be affected\nby any alignments specified in the\naggregations field); a good duration is long\nenough so that a single outlier does not\ngenerate spurious alerts, but short enough\nthat unhealthy states are detected and\nalerted on quickly.\n  - `evaluation_missing_data` (`string`): A condition control that determines how\nmetric-threshold conditions are evaluated when\ndata stops arriving. Possible values: [&#34;EVALUATION_MISSING_DATA_INACTIVE&#34;, &#34;EVALUATION_MISSING_DATA_ACTIVE&#34;, &#34;EVALUATION_MISSING_DATA_NO_OP&#34;] When `null`, the `evaluation_missing_data` field will be omitted from the resulting object.\n  - `filter` (`string`): A filter that identifies which time series\nshould be compared with the threshold.The\nfilter is similar to the one that is\nspecified in the\nMetricService.ListTimeSeries request (that\ncall is useful to verify the time series\nthat will be retrieved / processed) and must\nspecify the metric type and optionally may\ncontain restrictions on resource type,\nresource labels, and metric labels. This\nfield may not exceed 2048 Unicode characters\nin length. When `null`, the `filter` field will be omitted from the resulting object.\n  - `threshold_value` (`number`): A value against which to compare the time\nseries. When `null`, the `threshold_value` field will be omitted from the resulting object.\n  - `aggregations` (`list[obj]`): Specifies the alignment of data points in\nindividual time series as well as how to\ncombine the retrieved time series together\n(such as when aggregating multiple streams\non each resource to a single stream for each\nresource or when aggregating streams across\nall members of a group of resources).\nMultiple aggregations are applied in the\norder specified.This field is similar to the\none in the MetricService.ListTimeSeries\nrequest. It is advisable to use the\nListTimeSeries method when debugging this\nfield. When `null`, the `aggregations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_threshold.aggregations.new](#fn-conditionthresholdaggregationsnew) constructor.\n  - `denominator_aggregations` (`list[obj]`): Specifies the alignment of data points in\nindividual time series selected by\ndenominatorFilter as well as how to combine\nthe retrieved time series together (such as\nwhen aggregating multiple streams on each\nresource to a single stream for each\nresource or when aggregating streams across\nall members of a group of resources).When\ncomputing ratios, the aggregations and\ndenominator_aggregations fields must use the\nsame alignment period and produce time\nseries that have the same periodicity and\nlabels.This field is similar to the one in\nthe MetricService.ListTimeSeries request. It\nis advisable to use the ListTimeSeries\nmethod when debugging this field. When `null`, the `denominator_aggregations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_threshold.denominator_aggregations.new](#fn-conditionthresholddenominatoraggregationsnew) constructor.\n  - `trigger` (`list[obj]`): The number/percent of time series for which\nthe comparison must hold in order for the\ncondition to trigger. If unspecified, then\nthe condition will trigger if the comparison\nis true for any of the time series that have\nbeen identified by filter and aggregations,\nor by the ratio, if denominator_filter and\ndenominator_aggregations are specified. When `null`, the `trigger` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_threshold.trigger.new](#fn-conditionthresholdtriggernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `condition_threshold` sub block.\n', args=[]),
      new(
        comparison,
        duration,
        aggregations=null,
        denominator_aggregations=null,
        denominator_filter=null,
        evaluation_missing_data=null,
        filter=null,
        threshold_value=null,
        trigger=null
      ):: std.prune(a={
        aggregations: aggregations,
        comparison: comparison,
        denominator_aggregations: denominator_aggregations,
        denominator_filter: denominator_filter,
        duration: duration,
        evaluation_missing_data: evaluation_missing_data,
        filter: filter,
        threshold_value: threshold_value,
        trigger: trigger,
      }),
      trigger:: {
        '#new':: d.fn(help='\n`google.monitoring_alert_policy.conditions.condition_threshold.trigger.new` constructs a new object with attributes and blocks configured for the `trigger`\nTerraform sub block.\n\n\n\n**Args**:\n  - `count` (`number`): The absolute number of time series\nthat must fail the predicate for the\ncondition to be triggered. When `null`, the `count` field will be omitted from the resulting object.\n  - `percent` (`number`): The percentage of time series that\nmust fail the predicate for the\ncondition to be triggered. When `null`, the `percent` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `trigger` sub block.\n', args=[]),
        new(
          count=null,
          percent=null
        ):: std.prune(a={
          count: count,
          percent: percent,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.monitoring_alert_policy.conditions.new` constructs a new object with attributes and blocks configured for the `conditions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `display_name` (`string`): A short name or phrase used to identify the\ncondition in dashboards, notifications, and\nincidents. To avoid confusion, don&#39;t use the same\ndisplay name for multiple conditions in the same\npolicy.\n  - `condition_absent` (`list[obj]`): A condition that checks that a time series\ncontinues to receive new data points. When `null`, the `condition_absent` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_absent.new](#fn-conditionsconditionabsentnew) constructor.\n  - `condition_matched_log` (`list[obj]`): A condition that checks for log messages matching given constraints.\nIf set, no other conditions can be present. When `null`, the `condition_matched_log` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_matched_log.new](#fn-conditionsconditionmatchedlognew) constructor.\n  - `condition_monitoring_query_language` (`list[obj]`): A Monitoring Query Language query that outputs a boolean stream When `null`, the `condition_monitoring_query_language` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_monitoring_query_language.new](#fn-conditionsconditionmonitoringquerylanguagenew) constructor.\n  - `condition_threshold` (`list[obj]`): A condition that compares a time series against a\nthreshold. When `null`, the `condition_threshold` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.condition_threshold.new](#fn-conditionsconditionthresholdnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `conditions` sub block.\n', args=[]),
    new(
      display_name,
      condition_absent=null,
      condition_matched_log=null,
      condition_monitoring_query_language=null,
      condition_threshold=null
    ):: std.prune(a={
      condition_absent: condition_absent,
      condition_matched_log: condition_matched_log,
      condition_monitoring_query_language: condition_monitoring_query_language,
      condition_threshold: condition_threshold,
      display_name: display_name,
    }),
  },
  documentation:: {
    '#new':: d.fn(help='\n`google.monitoring_alert_policy.documentation.new` constructs a new object with attributes and blocks configured for the `documentation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `content` (`string`): The text of the documentation, interpreted according to mimeType.\nThe content may not exceed 8,192 Unicode characters and may not\nexceed more than 10,240 bytes when encoded in UTF-8 format,\nwhichever is smaller. When `null`, the `content` field will be omitted from the resulting object.\n  - `mime_type` (`string`): The format of the content field. Presently, only the value\n&#34;text/markdown&#34; is supported. When `null`, the `mime_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `documentation` sub block.\n', args=[]),
    new(
      content=null,
      mime_type=null
    ):: std.prune(a={
      content: content,
      mime_type: mime_type,
    }),
  },
  '#new':: d.fn(help="\n`google.monitoring_alert_policy.new` injects a new `google_monitoring_alert_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.monitoring_alert_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.monitoring_alert_policy` using the reference:\n\n    $._ref.google_monitoring_alert_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_monitoring_alert_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `combiner` (`string`): How to combine the results of multiple conditions to\ndetermine if an incident should be opened. Possible values: [\u0026#34;AND\u0026#34;, \u0026#34;OR\u0026#34;, \u0026#34;AND_WITH_MATCHING_RESOURCE\u0026#34;]\n  - `display_name` (`string`): A short name or phrase used to identify the policy in\ndashboards, notifications, and incidents. To avoid confusion, don\u0026#39;t use\nthe same display name for multiple policies in the same project. The\nname is limited to 512 Unicode characters.\n  - `enabled` (`bool`): Whether or not the policy is enabled. The default is true. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `notification_channels` (`list`): Identifies the notification channels to which notifications should be\nsent when incidents are opened or closed or when new violations occur\non an already opened incident. Each element of this array corresponds\nto the name field in each of the NotificationChannel objects that are\nreturned from the notificationChannels.list method. The syntax of the\nentries in this field is\n\u0026#39;projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]\u0026#39; When `null`, the `notification_channels` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `user_labels` (`obj`): This field is intended to be used for organizing and identifying the AlertPolicy\nobjects.The field can contain up to 64 entries. Each key and value is limited\nto 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values\ncan contain only lowercase letters, numerals, underscores, and dashes. Keys\nmust begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.\n  - `alert_strategy` (`list[obj]`): Control over how this alert policy\u0026#39;s notification channels are notified. When `null`, the `alert_strategy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.alert_strategy.new](#fn-monitoringalertpolicyalertstrategynew) constructor.\n  - `conditions` (`list[obj]`): A list of conditions for the policy. The conditions are combined by\nAND or OR according to the combiner field. If the combined conditions\nevaluate to true, then an incident is created. A policy can have from\none to six conditions. When `null`, the `conditions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.new](#fn-monitoringalertpolicyconditionsnew) constructor.\n  - `documentation` (`list[obj]`): Documentation that is included with notifications and incidents related\nto this policy. Best practice is for the documentation to include information\nto help responders understand, mitigate, escalate, and correct the underlying\nproblems detected by the alerting policy. Notification channels that have\nlimited capacity might not show this documentation. When `null`, the `documentation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.documentation.new](#fn-monitoringalertpolicydocumentationnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.timeouts.new](#fn-monitoringalertpolicytimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    combiner,
    display_name,
    alert_strategy=null,
    conditions=null,
    documentation=null,
    enabled=null,
    notification_channels=null,
    project=null,
    timeouts=null,
    user_labels=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_alert_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      alert_strategy=alert_strategy,
      combiner=combiner,
      conditions=conditions,
      display_name=display_name,
      documentation=documentation,
      enabled=enabled,
      notification_channels=notification_channels,
      project=project,
      timeouts=timeouts,
      user_labels=user_labels
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.monitoring_alert_policy.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_alert_policy`\nTerraform resource.\n\nUnlike [google.monitoring_alert_policy.new](#fn-monitoringalertpolicynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `combiner` (`string`): How to combine the results of multiple conditions to\ndetermine if an incident should be opened. Possible values: [&#34;AND&#34;, &#34;OR&#34;, &#34;AND_WITH_MATCHING_RESOURCE&#34;]\n  - `display_name` (`string`): A short name or phrase used to identify the policy in\ndashboards, notifications, and incidents. To avoid confusion, don&#39;t use\nthe same display name for multiple policies in the same project. The\nname is limited to 512 Unicode characters.\n  - `enabled` (`bool`): Whether or not the policy is enabled. The default is true. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `notification_channels` (`list`): Identifies the notification channels to which notifications should be\nsent when incidents are opened or closed or when new violations occur\non an already opened incident. Each element of this array corresponds\nto the name field in each of the NotificationChannel objects that are\nreturned from the notificationChannels.list method. The syntax of the\nentries in this field is\n&#39;projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]&#39; When `null`, the `notification_channels` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `user_labels` (`obj`): This field is intended to be used for organizing and identifying the AlertPolicy\nobjects.The field can contain up to 64 entries. Each key and value is limited\nto 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values\ncan contain only lowercase letters, numerals, underscores, and dashes. Keys\nmust begin with a letter. When `null`, the `user_labels` field will be omitted from the resulting object.\n  - `alert_strategy` (`list[obj]`): Control over how this alert policy&#39;s notification channels are notified. When `null`, the `alert_strategy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.alert_strategy.new](#fn-monitoringalertpolicyalertstrategynew) constructor.\n  - `conditions` (`list[obj]`): A list of conditions for the policy. The conditions are combined by\nAND or OR according to the combiner field. If the combined conditions\nevaluate to true, then an incident is created. A policy can have from\none to six conditions. When `null`, the `conditions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.conditions.new](#fn-monitoringalertpolicyconditionsnew) constructor.\n  - `documentation` (`list[obj]`): Documentation that is included with notifications and incidents related\nto this policy. Best practice is for the documentation to include information\nto help responders understand, mitigate, escalate, and correct the underlying\nproblems detected by the alerting policy. Notification channels that have\nlimited capacity might not show this documentation. When `null`, the `documentation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.documentation.new](#fn-monitoringalertpolicydocumentationnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.monitoring_alert_policy.timeouts.new](#fn-monitoringalertpolicytimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `monitoring_alert_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    combiner,
    display_name,
    alert_strategy=null,
    conditions=null,
    documentation=null,
    enabled=null,
    notification_channels=null,
    project=null,
    timeouts=null,
    user_labels=null
  ):: std.prune(a={
    alert_strategy: alert_strategy,
    combiner: combiner,
    conditions: conditions,
    display_name: display_name,
    documentation: documentation,
    enabled: enabled,
    notification_channels: notification_channels,
    project: project,
    timeouts: timeouts,
    user_labels: user_labels,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.monitoring_alert_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAlertStrategy':: d.fn(help='`google.monitoring_alert_policy.withAlertStrategy` constructs a mixin object that can be merged into the `monitoring_alert_policy`\nTerraform resource block to set or update the alert_strategy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `alert_strategy` field.\n', args=[]),
  withAlertStrategy(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          alert_strategy: value,
        },
      },
    },
  },
  '#withAlertStrategyMixin':: d.fn(help='`google.monitoring_alert_policy.withAlertStrategyMixin` constructs a mixin object that can be merged into the `monitoring_alert_policy`\nTerraform resource block to set or update the alert_strategy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.monitoring_alert_policy.withAlertStrategy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `alert_strategy` field.\n', args=[]),
  withAlertStrategyMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          alert_strategy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCombiner':: d.fn(help='`google.monitoring_alert_policy.withCombiner` constructs a mixin object that can be merged into the `monitoring_alert_policy`\nTerraform resource block to set or update the combiner field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `combiner` field.\n', args=[]),
  withCombiner(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          combiner: value,
        },
      },
    },
  },
  '#withConditions':: d.fn(help='`google.monitoring_alert_policy.withConditions` constructs a mixin object that can be merged into the `monitoring_alert_policy`\nTerraform resource block to set or update the conditions field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `conditions` field.\n', args=[]),
  withConditions(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          conditions: value,
        },
      },
    },
  },
  '#withConditionsMixin':: d.fn(help='`google.monitoring_alert_policy.withConditionsMixin` constructs a mixin object that can be merged into the `monitoring_alert_policy`\nTerraform resource block to set or update the conditions field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.monitoring_alert_policy.withConditions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `conditions` field.\n', args=[]),
  withConditionsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          conditions+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.monitoring_alert_policy.withDisplayName` constructs a mixin object that can be merged into the `monitoring_alert_policy`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withDocumentation':: d.fn(help='`google.monitoring_alert_policy.withDocumentation` constructs a mixin object that can be merged into the `monitoring_alert_policy`\nTerraform resource block to set or update the documentation field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `documentation` field.\n', args=[]),
  withDocumentation(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          documentation: value,
        },
      },
    },
  },
  '#withDocumentationMixin':: d.fn(help='`google.monitoring_alert_policy.withDocumentationMixin` constructs a mixin object that can be merged into the `monitoring_alert_policy`\nTerraform resource block to set or update the documentation field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.monitoring_alert_policy.withDocumentation](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `documentation` field.\n', args=[]),
  withDocumentationMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          documentation+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEnabled':: d.fn(help='`google.monitoring_alert_policy.withEnabled` constructs a mixin object that can be merged into the `monitoring_alert_policy`\nTerraform resource block to set or update the enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `enabled` field.\n', args=[]),
  withEnabled(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  '#withNotificationChannels':: d.fn(help='`google.monitoring_alert_policy.withNotificationChannels` constructs a mixin object that can be merged into the `monitoring_alert_policy`\nTerraform resource block to set or update the notification_channels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `notification_channels` field.\n', args=[]),
  withNotificationChannels(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          notification_channels: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.monitoring_alert_policy.withProject` constructs a mixin object that can be merged into the `monitoring_alert_policy`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.monitoring_alert_policy.withTimeouts` constructs a mixin object that can be merged into the `monitoring_alert_policy`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.monitoring_alert_policy.withTimeoutsMixin` constructs a mixin object that can be merged into the `monitoring_alert_policy`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.monitoring_alert_policy.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUserLabels':: d.fn(help='`google.monitoring_alert_policy.withUserLabels` constructs a mixin object that can be merged into the `monitoring_alert_policy`\nTerraform resource block to set or update the user_labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `user_labels` field.\n', args=[]),
  withUserLabels(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          user_labels: value,
        },
      },
    },
  },
}
