local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  metastore:: {
    new(
      service=null
    ):: std.prune(a={
      service: service,
    }),
  },
  new(
    resourceLabel,
    location,
    name,
    description=null,
    display_name=null,
    labels=null,
    metastore=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataplex_lake',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      labels=labels,
      location=location,
      metastore=metastore,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    description=null,
    display_name=null,
    labels=null,
    metastore=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    labels: labels,
    location: location,
    metastore: metastore,
    name: name,
    project: project,
    timeouts: timeouts,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMetastore(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          metastore: value,
        },
      },
    },
  },
  withMetastoreMixin(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          metastore+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dataplex_lake+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
