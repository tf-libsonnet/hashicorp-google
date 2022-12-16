local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  kms_settings:: {
    new(
      next_rotation_time,
      rotation_period
    ):: std.prune(a={
      next_rotation_time: next_rotation_time,
      rotation_period: rotation_period,
    }),
  },
  new(
    resourceLabel,
    billing_account,
    compliance_regime,
    display_name,
    location,
    organization,
    kms_settings=null,
    labels=null,
    provisioned_resources_parent=null,
    resource_settings=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_assured_workloads_workload',
    label=resourceLabel,
    attrs=self.newAttrs(
      billing_account=billing_account,
      compliance_regime=compliance_regime,
      display_name=display_name,
      kms_settings=kms_settings,
      labels=labels,
      location=location,
      organization=organization,
      provisioned_resources_parent=provisioned_resources_parent,
      resource_settings=resource_settings,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    billing_account,
    compliance_regime,
    display_name,
    location,
    organization,
    kms_settings=null,
    labels=null,
    provisioned_resources_parent=null,
    resource_settings=null,
    timeouts=null
  ):: std.prune(a={
    billing_account: billing_account,
    compliance_regime: compliance_regime,
    display_name: display_name,
    kms_settings: kms_settings,
    labels: labels,
    location: location,
    organization: organization,
    provisioned_resources_parent: provisioned_resources_parent,
    resource_settings: resource_settings,
    timeouts: timeouts,
  }),
  resource_settings:: {
    new(
      resource_id=null,
      resource_type=null
    ):: std.prune(a={
      resource_id: resource_id,
      resource_type: resource_type,
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
  withBillingAccount(resourceLabel, value):: {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          billing_account: value,
        },
      },
    },
  },
  withComplianceRegime(resourceLabel, value):: {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          compliance_regime: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withKmsSettings(resourceLabel, value):: {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          kms_settings: value,
        },
      },
    },
  },
  withKmsSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          kms_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withOrganization(resourceLabel, value):: {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          organization: value,
        },
      },
    },
  },
  withProvisionedResourcesParent(resourceLabel, value):: {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          provisioned_resources_parent: value,
        },
      },
    },
  },
  withResourceSettings(resourceLabel, value):: {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          resource_settings: value,
        },
      },
    },
  },
  withResourceSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          resource_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
