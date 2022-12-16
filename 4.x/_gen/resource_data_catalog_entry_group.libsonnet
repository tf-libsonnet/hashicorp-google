local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    entry_group_id,
    description=null,
    display_name=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_entry_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      entry_group_id=entry_group_id,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    entry_group_id,
    description=null,
    display_name=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    entry_group_id: entry_group_id,
    project: project,
    region: region,
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
      google_data_catalog_entry_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEntryGroupId(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group+: {
        [resourceLabel]+: {
          entry_group_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
