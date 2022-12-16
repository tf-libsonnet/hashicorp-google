local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  destination:: {
    cloud_run_service:: {
      new(
        service,
        path=null,
        region=null
      ):: std.prune(a={
        path: path,
        region: region,
        service: service,
      }),
    },
    gke:: {
      new(
        cluster,
        location,
        namespace,
        service,
        path=null
      ):: std.prune(a={
        cluster: cluster,
        location: location,
        namespace: namespace,
        path: path,
        service: service,
      }),
    },
    new(
      cloud_function=null,
      cloud_run_service=null,
      gke=null,
      workflow=null
    ):: std.prune(a={
      cloud_function: cloud_function,
      cloud_run_service: cloud_run_service,
      gke: gke,
      workflow: workflow,
    }),
  },
  matching_criteria:: {
    new(
      attribute,
      value,
      operator=null
    ):: std.prune(a={
      attribute: attribute,
      operator: operator,
      value: value,
    }),
  },
  new(
    resourceLabel,
    location,
    name,
    channel=null,
    destination=null,
    labels=null,
    matching_criteria=null,
    project=null,
    service_account=null,
    timeouts=null,
    transport=null,
    _meta={}
  ):: tf.withResource(
    type='google_eventarc_trigger',
    label=resourceLabel,
    attrs=self.newAttrs(
      channel=channel,
      destination=destination,
      labels=labels,
      location=location,
      matching_criteria=matching_criteria,
      name=name,
      project=project,
      service_account=service_account,
      timeouts=timeouts,
      transport=transport
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    channel=null,
    destination=null,
    labels=null,
    matching_criteria=null,
    project=null,
    service_account=null,
    timeouts=null,
    transport=null
  ):: std.prune(a={
    channel: channel,
    destination: destination,
    labels: labels,
    location: location,
    matching_criteria: matching_criteria,
    name: name,
    project: project,
    service_account: service_account,
    timeouts: timeouts,
    transport: transport,
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
  transport:: {
    new(
      pubsub=null
    ):: std.prune(a={
      pubsub: pubsub,
    }),
    pubsub:: {
      new(
        topic=null
      ):: std.prune(a={
        topic: topic,
      }),
    },
  },
  withChannel(resourceLabel, value):: {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          channel: value,
        },
      },
    },
  },
  withDestination(resourceLabel, value):: {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          destination: value,
        },
      },
    },
  },
  withDestinationMixin(resourceLabel, value):: {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          destination+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMatchingCriteria(resourceLabel, value):: {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          matching_criteria: value,
        },
      },
    },
  },
  withMatchingCriteriaMixin(resourceLabel, value):: {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          matching_criteria+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withServiceAccount(resourceLabel, value):: {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTransport(resourceLabel, value):: {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          transport: value,
        },
      },
    },
  },
  withTransportMixin(resourceLabel, value):: {
    resource+: {
      google_eventarc_trigger+: {
        [resourceLabel]+: {
          transport+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
