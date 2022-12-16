local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  alert_strategy:: {
    new(
      auto_close=null,
      notification_rate_limit=null
    ):: std.prune(a={
      auto_close: auto_close,
      notification_rate_limit: notification_rate_limit,
    }),
    notification_rate_limit:: {
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
      new(
        filter,
        label_extractors=null
      ):: std.prune(a={
        filter: filter,
        label_extractors: label_extractors,
      }),
    },
    condition_monitoring_query_language:: {
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
        new(
          count=null,
          percent=null
        ):: std.prune(a={
          count: count,
          percent: percent,
        }),
      },
    },
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
    new(
      content=null,
      mime_type=null
    ):: std.prune(a={
      content: content,
      mime_type: mime_type,
    }),
  },
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
  withAlertStrategy(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          alert_strategy: value,
        },
      },
    },
  },
  withAlertStrategyMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          alert_strategy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCombiner(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          combiner: value,
        },
      },
    },
  },
  withConditions(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          conditions: value,
        },
      },
    },
  },
  withConditionsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          conditions+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withDocumentation(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          documentation: value,
        },
      },
    },
  },
  withDocumentationMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          documentation+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEnabled(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  withNotificationChannels(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          notification_channels: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_alert_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
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
