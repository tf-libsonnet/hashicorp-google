local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  destination:: {
    new(
      instance=null,
      ip_address=null,
      network=null,
      port=null,
      project_id=null
    ):: std.prune(a={
      instance: instance,
      ip_address: ip_address,
      network: network,
      port: port,
      project_id: project_id,
    }),
  },
  new(
    resourceLabel,
    name,
    description=null,
    destination=null,
    labels=null,
    project=null,
    protocol=null,
    related_projects=null,
    source=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_management_connectivity_test',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      destination=destination,
      labels=labels,
      name=name,
      project=project,
      protocol=protocol,
      related_projects=related_projects,
      source=source,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    description=null,
    destination=null,
    labels=null,
    project=null,
    protocol=null,
    related_projects=null,
    source=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    destination: destination,
    labels: labels,
    name: name,
    project: project,
    protocol: protocol,
    related_projects: related_projects,
    source: source,
    timeouts: timeouts,
  }),
  source:: {
    new(
      instance=null,
      ip_address=null,
      network=null,
      network_type=null,
      port=null,
      project_id=null
    ):: std.prune(a={
      instance: instance,
      ip_address: ip_address,
      network: network,
      network_type: network_type,
      port: port,
      project_id: project_id,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDestination(resourceLabel, value):: {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          destination: value,
        },
      },
    },
  },
  withDestinationMixin(resourceLabel, value):: {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          destination+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withProtocol(resourceLabel, value):: {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          protocol: value,
        },
      },
    },
  },
  withRelatedProjects(resourceLabel, value):: {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          related_projects: value,
        },
      },
    },
  },
  withSource(resourceLabel, value):: {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          source: value,
        },
      },
    },
  },
  withSourceMixin(resourceLabel, value):: {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          source+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
