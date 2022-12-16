local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  discovery_spec:: {
    csv_options:: {
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
      new(
        disable_type_inference=null,
        encoding=null
      ):: std.prune(a={
        disable_type_inference: disable_type_inference,
        encoding: encoding,
      }),
    },
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
    new(
      location_type
    ):: std.prune(a={
      location_type: location_type,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDiscoverySpec(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          discovery_spec: value,
        },
      },
    },
  },
  withDiscoverySpecMixin(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          discovery_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLake(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          lake: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withResourceSpec(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          resource_spec: value,
        },
      },
    },
  },
  withResourceSpecMixin(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          resource_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dataplex_zone+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
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
