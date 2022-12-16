local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  max_age:: {
    new(
      days=null,
      duration=null
    ):: std.prune(a={
      days: days,
      duration: duration,
    }),
  },
  max_version:: {
    new(
      number
    ):: std.prune(a={
      number: number,
    }),
  },
  new(
    resourceLabel,
    column_family,
    instance_name,
    table,
    deletion_policy=null,
    gc_rules=null,
    max_age=null,
    max_version=null,
    mode=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigtable_gc_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      column_family=column_family,
      deletion_policy=deletion_policy,
      gc_rules=gc_rules,
      instance_name=instance_name,
      max_age=max_age,
      max_version=max_version,
      mode=mode,
      project=project,
      table=table
    ),
    _meta=_meta
  ),
  newAttrs(
    column_family,
    instance_name,
    table,
    deletion_policy=null,
    gc_rules=null,
    max_age=null,
    max_version=null,
    mode=null,
    project=null
  ):: std.prune(a={
    column_family: column_family,
    deletion_policy: deletion_policy,
    gc_rules: gc_rules,
    instance_name: instance_name,
    max_age: max_age,
    max_version: max_version,
    mode: mode,
    project: project,
    table: table,
  }),
  withColumnFamily(resourceLabel, value):: {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          column_family: value,
        },
      },
    },
  },
  withDeletionPolicy(resourceLabel, value):: {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          deletion_policy: value,
        },
      },
    },
  },
  withGcRules(resourceLabel, value):: {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          gc_rules: value,
        },
      },
    },
  },
  withInstanceName(resourceLabel, value):: {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          instance_name: value,
        },
      },
    },
  },
  withMaxAge(resourceLabel, value):: {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          max_age: value,
        },
      },
    },
  },
  withMaxAgeMixin(resourceLabel, value):: {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          max_age+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMaxVersion(resourceLabel, value):: {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          max_version: value,
        },
      },
    },
  },
  withMaxVersionMixin(resourceLabel, value):: {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          max_version+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMode(resourceLabel, value):: {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          mode: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTable(resourceLabel, value):: {
    resource+: {
      google_bigtable_gc_policy+: {
        [resourceLabel]+: {
          table: value,
        },
      },
    },
  },
}
