local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  metadata:: {
    new(
      namespace,
      annotations=null,
      labels=null
    ):: std.prune(a={
      annotations: annotations,
      labels: labels,
      namespace: namespace,
    }),
  },
  new(
    resourceLabel,
    location,
    name,
    metadata=null,
    project=null,
    spec=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_run_domain_mapping',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      metadata=metadata,
      name=name,
      project=project,
      spec=spec,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    metadata=null,
    project=null,
    spec=null,
    timeouts=null
  ):: std.prune(a={
    location: location,
    metadata: metadata,
    name: name,
    project: project,
    spec: spec,
    timeouts: timeouts,
  }),
  spec:: {
    new(
      route_name,
      certificate_mode=null,
      force_override=null
    ):: std.prune(a={
      certificate_mode: certificate_mode,
      force_override: force_override,
      route_name: route_name,
    }),
  },
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMetadata(resourceLabel, value):: {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  withMetadataMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          metadata+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSpec(resourceLabel, value):: {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          spec: value,
        },
      },
    },
  },
  withSpecMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_run_domain_mapping+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
