local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    project_id,
    analytics_region=null,
    authorized_network=null,
    billing_type=null,
    description=null,
    display_name=null,
    properties=null,
    retention=null,
    runtime_database_encryption_key_name=null,
    runtime_type=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_organization',
    label=resourceLabel,
    attrs=self.newAttrs(
      analytics_region=analytics_region,
      authorized_network=authorized_network,
      billing_type=billing_type,
      description=description,
      display_name=display_name,
      project_id=project_id,
      properties=properties,
      retention=retention,
      runtime_database_encryption_key_name=runtime_database_encryption_key_name,
      runtime_type=runtime_type,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    project_id,
    analytics_region=null,
    authorized_network=null,
    billing_type=null,
    description=null,
    display_name=null,
    properties=null,
    retention=null,
    runtime_database_encryption_key_name=null,
    runtime_type=null,
    timeouts=null
  ):: std.prune(a={
    analytics_region: analytics_region,
    authorized_network: authorized_network,
    billing_type: billing_type,
    description: description,
    display_name: display_name,
    project_id: project_id,
    properties: properties,
    retention: retention,
    runtime_database_encryption_key_name: runtime_database_encryption_key_name,
    runtime_type: runtime_type,
    timeouts: timeouts,
  }),
  properties:: {
    new(
      property=null
    ):: std.prune(a={
      property: property,
    }),
    property:: {
      new(
        name=null,
        value=null
      ):: std.prune(a={
        name: name,
        value: value,
      }),
    },
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
  withAnalyticsRegion(resourceLabel, value):: {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          analytics_region: value,
        },
      },
    },
  },
  withAuthorizedNetwork(resourceLabel, value):: {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          authorized_network: value,
        },
      },
    },
  },
  withBillingType(resourceLabel, value):: {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          billing_type: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withProjectId(resourceLabel, value):: {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  withProperties(resourceLabel, value):: {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          properties: value,
        },
      },
    },
  },
  withPropertiesMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          properties+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRetention(resourceLabel, value):: {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          retention: value,
        },
      },
    },
  },
  withRuntimeDatabaseEncryptionKeyName(resourceLabel, value):: {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          runtime_database_encryption_key_name: value,
        },
      },
    },
  },
  withRuntimeType(resourceLabel, value):: {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          runtime_type: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
