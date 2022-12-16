local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    data_exchange_id,
    display_name,
    location,
    description=null,
    documentation=null,
    icon=null,
    primary_contact=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_analytics_hub_data_exchange',
    label=resourceLabel,
    attrs=self.newAttrs(
      data_exchange_id=data_exchange_id,
      description=description,
      display_name=display_name,
      documentation=documentation,
      icon=icon,
      location=location,
      primary_contact=primary_contact,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    data_exchange_id,
    display_name,
    location,
    description=null,
    documentation=null,
    icon=null,
    primary_contact=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    data_exchange_id: data_exchange_id,
    description: description,
    display_name: display_name,
    documentation: documentation,
    icon: icon,
    location: location,
    primary_contact: primary_contact,
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
  withDataExchangeId(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          data_exchange_id: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withDocumentation(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          documentation: value,
        },
      },
    },
  },
  withIcon(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          icon: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPrimaryContact(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          primary_contact: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_data_exchange+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
