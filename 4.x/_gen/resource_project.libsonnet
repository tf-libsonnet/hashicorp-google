local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    project_id,
    auto_create_network=null,
    billing_account=null,
    folder_id=null,
    labels=null,
    org_id=null,
    skip_delete=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_project',
    label=resourceLabel,
    attrs=self.newAttrs(
      auto_create_network=auto_create_network,
      billing_account=billing_account,
      folder_id=folder_id,
      labels=labels,
      name=name,
      org_id=org_id,
      project_id=project_id,
      skip_delete=skip_delete,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    project_id,
    auto_create_network=null,
    billing_account=null,
    folder_id=null,
    labels=null,
    org_id=null,
    skip_delete=null,
    timeouts=null
  ):: std.prune(a={
    auto_create_network: auto_create_network,
    billing_account: billing_account,
    folder_id: folder_id,
    labels: labels,
    name: name,
    org_id: org_id,
    project_id: project_id,
    skip_delete: skip_delete,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null,
      read=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
      update: update,
    }),
  },
  withAutoCreateNetwork(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          auto_create_network: value,
        },
      },
    },
  },
  withBillingAccount(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          billing_account: value,
        },
      },
    },
  },
  withFolderId(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          folder_id: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  withProjectId(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  withSkipDelete(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          skip_delete: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
