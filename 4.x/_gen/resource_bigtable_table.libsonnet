local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  column_family:: {
    new(
      family
    ):: std.prune(a={
      family: family,
    }),
  },
  new(
    resourceLabel,
    instance_name,
    name,
    column_family=null,
    project=null,
    split_keys=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigtable_table',
    label=resourceLabel,
    attrs=self.newAttrs(
      column_family=column_family,
      instance_name=instance_name,
      name=name,
      project=project,
      split_keys=split_keys,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    instance_name,
    name,
    column_family=null,
    project=null,
    split_keys=null,
    timeouts=null
  ):: std.prune(a={
    column_family: column_family,
    instance_name: instance_name,
    name: name,
    project: project,
    split_keys: split_keys,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null
    ):: std.prune(a={
      create: create,
    }),
  },
  withColumnFamily(resourceLabel, value):: {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          column_family: value,
        },
      },
    },
  },
  withColumnFamilyMixin(resourceLabel, value):: {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          column_family+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withInstanceName(resourceLabel, value):: {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          instance_name: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSplitKeys(resourceLabel, value):: {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          split_keys: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
