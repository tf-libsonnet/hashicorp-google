local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  aws:: {
    new(
      account_id
    ):: std.prune(a={
      account_id: account_id,
    }),
  },
  new(
    resourceLabel,
    workload_identity_pool_id,
    workload_identity_pool_provider_id,
    attribute_condition=null,
    attribute_mapping=null,
    aws=null,
    description=null,
    disabled=null,
    display_name=null,
    oidc=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_iam_workload_identity_pool_provider',
    label=resourceLabel,
    attrs=self.newAttrs(
      attribute_condition=attribute_condition,
      attribute_mapping=attribute_mapping,
      aws=aws,
      description=description,
      disabled=disabled,
      display_name=display_name,
      oidc=oidc,
      project=project,
      timeouts=timeouts,
      workload_identity_pool_id=workload_identity_pool_id,
      workload_identity_pool_provider_id=workload_identity_pool_provider_id
    ),
    _meta=_meta
  ),
  newAttrs(
    workload_identity_pool_id,
    workload_identity_pool_provider_id,
    attribute_condition=null,
    attribute_mapping=null,
    aws=null,
    description=null,
    disabled=null,
    display_name=null,
    oidc=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    attribute_condition: attribute_condition,
    attribute_mapping: attribute_mapping,
    aws: aws,
    description: description,
    disabled: disabled,
    display_name: display_name,
    oidc: oidc,
    project: project,
    timeouts: timeouts,
    workload_identity_pool_id: workload_identity_pool_id,
    workload_identity_pool_provider_id: workload_identity_pool_provider_id,
  }),
  oidc:: {
    new(
      issuer_uri,
      allowed_audiences=null
    ):: std.prune(a={
      allowed_audiences: allowed_audiences,
      issuer_uri: issuer_uri,
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
  withAttributeCondition(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          attribute_condition: value,
        },
      },
    },
  },
  withAttributeMapping(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          attribute_mapping: value,
        },
      },
    },
  },
  withAws(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          aws: value,
        },
      },
    },
  },
  withAwsMixin(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          aws+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withOidc(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          oidc: value,
        },
      },
    },
  },
  withOidcMixin(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          oidc+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withWorkloadIdentityPoolId(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          workload_identity_pool_id: value,
        },
      },
    },
  },
  withWorkloadIdentityPoolProviderId(resourceLabel, value):: {
    resource+: {
      google_iam_workload_identity_pool_provider+: {
        [resourceLabel]+: {
          workload_identity_pool_provider_id: value,
        },
      },
    },
  },
}
