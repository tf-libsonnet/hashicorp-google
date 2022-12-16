local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    ip_cidr_range=null,
    machine_type=null,
    max_instances=null,
    max_throughput=null,
    min_instances=null,
    min_throughput=null,
    network=null,
    project=null,
    region=null,
    subnet=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vpc_access_connector',
    label=resourceLabel,
    attrs=self.newAttrs(
      ip_cidr_range=ip_cidr_range,
      machine_type=machine_type,
      max_instances=max_instances,
      max_throughput=max_throughput,
      min_instances=min_instances,
      min_throughput=min_throughput,
      name=name,
      network=network,
      project=project,
      region=region,
      subnet=subnet,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    ip_cidr_range=null,
    machine_type=null,
    max_instances=null,
    max_throughput=null,
    min_instances=null,
    min_throughput=null,
    network=null,
    project=null,
    region=null,
    subnet=null,
    timeouts=null
  ):: std.prune(a={
    ip_cidr_range: ip_cidr_range,
    machine_type: machine_type,
    max_instances: max_instances,
    max_throughput: max_throughput,
    min_instances: min_instances,
    min_throughput: min_throughput,
    name: name,
    network: network,
    project: project,
    region: region,
    subnet: subnet,
    timeouts: timeouts,
  }),
  subnet:: {
    new(
      name=null,
      project_id=null
    ):: std.prune(a={
      name: name,
      project_id: project_id,
    }),
  },
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withIpCidrRange(resourceLabel, value):: {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          ip_cidr_range: value,
        },
      },
    },
  },
  withMachineType(resourceLabel, value):: {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          machine_type: value,
        },
      },
    },
  },
  withMaxInstances(resourceLabel, value):: {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          max_instances: value,
        },
      },
    },
  },
  withMaxThroughput(resourceLabel, value):: {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          max_throughput: value,
        },
      },
    },
  },
  withMinInstances(resourceLabel, value):: {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          min_instances: value,
        },
      },
    },
  },
  withMinThroughput(resourceLabel, value):: {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          min_throughput: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withSubnet(resourceLabel, value):: {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          subnet: value,
        },
      },
    },
  },
  withSubnetMixin(resourceLabel, value):: {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          subnet+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
