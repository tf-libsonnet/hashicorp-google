local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    domain_name,
    locations,
    reserved_ip_range,
    admin=null,
    authorized_networks=null,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_active_directory_domain',
    label=resourceLabel,
    attrs=self.newAttrs(
      admin=admin,
      authorized_networks=authorized_networks,
      domain_name=domain_name,
      labels=labels,
      locations=locations,
      project=project,
      reserved_ip_range=reserved_ip_range,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    domain_name,
    locations,
    reserved_ip_range,
    admin=null,
    authorized_networks=null,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    admin: admin,
    authorized_networks: authorized_networks,
    domain_name: domain_name,
    labels: labels,
    locations: locations,
    project: project,
    reserved_ip_range: reserved_ip_range,
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
  withAdmin(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          admin: value,
        },
      },
    },
  },
  withAuthorizedNetworks(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          authorized_networks: value,
        },
      },
    },
  },
  withDomainName(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          domain_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocations(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          locations: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withReservedIpRange(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          reserved_ip_range: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
