local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  bigquery_dataset:: {
    new(
      dataset
    ):: std.prune(a={
      dataset: dataset,
    }),
  },
  data_provider:: {
    new(
      name,
      primary_contact=null
    ):: std.prune(a={
      name: name,
      primary_contact: primary_contact,
    }),
  },
  new(
    resourceLabel,
    data_exchange_id,
    display_name,
    listing_id,
    location,
    bigquery_dataset=null,
    categories=null,
    data_provider=null,
    description=null,
    documentation=null,
    icon=null,
    primary_contact=null,
    project=null,
    publisher=null,
    request_access=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_analytics_hub_listing',
    label=resourceLabel,
    attrs=self.newAttrs(
      bigquery_dataset=bigquery_dataset,
      categories=categories,
      data_exchange_id=data_exchange_id,
      data_provider=data_provider,
      description=description,
      display_name=display_name,
      documentation=documentation,
      icon=icon,
      listing_id=listing_id,
      location=location,
      primary_contact=primary_contact,
      project=project,
      publisher=publisher,
      request_access=request_access,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    data_exchange_id,
    display_name,
    listing_id,
    location,
    bigquery_dataset=null,
    categories=null,
    data_provider=null,
    description=null,
    documentation=null,
    icon=null,
    primary_contact=null,
    project=null,
    publisher=null,
    request_access=null,
    timeouts=null
  ):: std.prune(a={
    bigquery_dataset: bigquery_dataset,
    categories: categories,
    data_exchange_id: data_exchange_id,
    data_provider: data_provider,
    description: description,
    display_name: display_name,
    documentation: documentation,
    icon: icon,
    listing_id: listing_id,
    location: location,
    primary_contact: primary_contact,
    project: project,
    publisher: publisher,
    request_access: request_access,
    timeouts: timeouts,
  }),
  publisher:: {
    new(
      name,
      primary_contact=null
    ):: std.prune(a={
      name: name,
      primary_contact: primary_contact,
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
  withBigqueryDataset(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          bigquery_dataset: value,
        },
      },
    },
  },
  withBigqueryDatasetMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          bigquery_dataset+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCategories(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          categories: value,
        },
      },
    },
  },
  withDataExchangeId(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          data_exchange_id: value,
        },
      },
    },
  },
  withDataProvider(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          data_provider: value,
        },
      },
    },
  },
  withDataProviderMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          data_provider+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withDocumentation(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          documentation: value,
        },
      },
    },
  },
  withIcon(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          icon: value,
        },
      },
    },
  },
  withListingId(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          listing_id: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPrimaryContact(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          primary_contact: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withPublisher(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          publisher: value,
        },
      },
    },
  },
  withPublisherMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          publisher+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRequestAccess(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          request_access: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
