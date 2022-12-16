local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  basic_sli:: {
    availability:: {
      new(
        enabled=null
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    latency:: {
      new(
        threshold
      ):: std.prune(a={
        threshold: threshold,
      }),
    },
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
      new(
        distribution_filter,
        range=null
      ):: std.prune(a={
        distribution_filter: distribution_filter,
        range: range,
      }),
      range:: {
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
    new(
      distribution_cut=null,
      good_total_ratio=null
    ):: std.prune(a={
      distribution_cut: distribution_cut,
      good_total_ratio: good_total_ratio,
    }),
  },
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
  windows_based_sli:: {
    good_total_ratio_threshold:: {
      basic_sli_performance:: {
        availability:: {
          new(
            enabled=null
          ):: std.prune(a={
            enabled: enabled,
          }),
        },
        latency:: {
          new(
            threshold
          ):: std.prune(a={
            threshold: threshold,
          }),
        },
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
          new(
            distribution_filter,
            range=null
          ):: std.prune(a={
            distribution_filter: distribution_filter,
            range: range,
          }),
          range:: {
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
      new(
        time_series,
        range=null
      ):: std.prune(a={
        range: range,
        time_series: time_series,
      }),
      range:: {
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
      new(
        time_series,
        range=null
      ):: std.prune(a={
        range: range,
        time_series: time_series,
      }),
      range:: {
        new(
          max=null,
          min=null
        ):: std.prune(a={
          max: max,
          min: min,
        }),
      },
    },
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
  withBasicSli(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          basic_sli: value,
        },
      },
    },
  },
  withBasicSliMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          basic_sli+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCalendarPeriod(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          calendar_period: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withGoal(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          goal: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRequestBasedSli(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          request_based_sli: value,
        },
      },
    },
  },
  withRequestBasedSliMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          request_based_sli+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRollingPeriodDays(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          rolling_period_days: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  withSloId(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          slo_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUserLabels(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          user_labels: value,
        },
      },
    },
  },
  withWindowsBasedSli(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          windows_based_sli: value,
        },
      },
    },
  },
  withWindowsBasedSliMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_slo+: {
        [resourceLabel]+: {
          windows_based_sli+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
