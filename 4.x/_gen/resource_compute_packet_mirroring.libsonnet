local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  collector_ilb:: {
    new(
      url
    ):: std.prune(a={
      url: url,
    }),
  },
  filter:: {
    new(
      cidr_ranges=null,
      direction=null,
      ip_protocols=null
    ):: std.prune(a={
      cidr_ranges: cidr_ranges,
      direction: direction,
      ip_protocols: ip_protocols,
    }),
  },
  mirrored_resources:: {
    instances:: {
      new(
        url
      ):: std.prune(a={
        url: url,
      }),
    },
    new(
      instances=null,
      subnetworks=null,
      tags=null
    ):: std.prune(a={
      instances: instances,
      subnetworks: subnetworks,
      tags: tags,
    }),
    subnetworks:: {
      new(
        url
      ):: std.prune(a={
        url: url,
      }),
    },
  },
  network:: {
    new(
      url
    ):: std.prune(a={
      url: url,
    }),
  },
  new(
    resourceLabel,
    name,
    collector_ilb=null,
    description=null,
    filter=null,
    mirrored_resources=null,
    network=null,
    priority=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_packet_mirroring',
    label=resourceLabel,
    attrs=self.newAttrs(
      collector_ilb=collector_ilb,
      description=description,
      filter=filter,
      mirrored_resources=mirrored_resources,
      name=name,
      network=network,
      priority=priority,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    collector_ilb=null,
    description=null,
    filter=null,
    mirrored_resources=null,
    network=null,
    priority=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    collector_ilb: collector_ilb,
    description: description,
    filter: filter,
    mirrored_resources: mirrored_resources,
    name: name,
    network: network,
    priority: priority,
    project: project,
    region: region,
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
  withCollectorIlb(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          collector_ilb: value,
        },
      },
    },
  },
  withCollectorIlbMixin(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          collector_ilb+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withFilter(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  withFilterMixin(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          filter+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMirroredResources(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          mirrored_resources: value,
        },
      },
    },
  },
  withMirroredResourcesMixin(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          mirrored_resources+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withNetworkMixin(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          network+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPriority(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
