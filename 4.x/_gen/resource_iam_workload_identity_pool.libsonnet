local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    workload_identity_pool_id,
    description=null,
    disabled=null,
    display_name=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_iam_workload_identity_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      disabled=disabled,
      display_name=display_name,
      project=project,
      timeouts=timeouts,
      workload_identity_pool_id=workload_identity_pool_id
    ),
    _meta=_meta
  ),
  newAttrs(
    workload_identity_pool_id,
    description=null,
    disabled=null,
    display_name=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    disabled: disabled,
    display_name: display_name,
    project: project,
    timeouts: timeouts,
    workload_identity_pool_id: workload_identity_pool_id,
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
      google_iam_workload_identity_pool+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withWorkloadIdentityPoolId(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool+: {
        [resourceLabel]+: {
          workload_identity_pool_id: value,
        },
      },
    },
  },
}
