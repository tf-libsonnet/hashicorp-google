local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  group_key:: {
    new(
      namespace=null
    ):: std.prune(a={
      namespace: namespace,
    }),
  },
  new(
    resourceLabel,
    labels,
    parent,
    description=null,
    display_name=null,
    group_key=null,
    initial_group_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_identity_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      group_key=group_key,
      initial_group_config=initial_group_config,
      labels=labels,
      parent=parent,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    labels,
    parent,
    description=null,
    display_name=null,
    group_key=null,
    initial_group_config=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    group_key: group_key,
    initial_group_config: initial_group_config,
    labels: labels,
    parent: parent,
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
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withGroupKey(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          group_key: value,
        },
      },
    },
  },
  withGroupKeyMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          group_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withInitialGroupConfig(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          initial_group_config: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
