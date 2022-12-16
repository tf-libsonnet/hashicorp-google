local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  bucket_options:: {
    explicit_buckets:: {
      new(
        bounds
      ):: std.prune(a={
        bounds: bounds,
      }),
    },
    exponential_buckets:: {
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
  withBucketOptions(resourceLabel, value):: {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          bucket_options: value,
        },
      },
    },
  },
  withBucketOptionsMixin(resourceLabel, value):: {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          bucket_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withFilter(resourceLabel, value):: {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  withLabelExtractors(resourceLabel, value):: {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          label_extractors: value,
        },
      },
    },
  },
  withMetricDescriptor(resourceLabel, value):: {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          metric_descriptor: value,
        },
      },
    },
  },
  withMetricDescriptorMixin(resourceLabel, value):: {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          metric_descriptor+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withValueExtractor(resourceLabel, value):: {
    resource+: {
      google_logging_metric+: {
        [resourceLabel]+: {
          value_extractor: value,
        },
      },
    },
  },
}
