local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    address=null,
    address_type=null,
    description=null,
    network=null,
    network_tier=null,
    prefix_length=null,
    project=null,
    purpose=null,
    region=null,
    subnetwork=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_address',
    label=resourceLabel,
    attrs=self.newAttrs(
      address=address,
      address_type=address_type,
      description=description,
      name=name,
      network=network,
      network_tier=network_tier,
      prefix_length=prefix_length,
      project=project,
      purpose=purpose,
      region=region,
      subnetwork=subnetwork,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    address=null,
    address_type=null,
    description=null,
    network=null,
    network_tier=null,
    prefix_length=null,
    project=null,
    purpose=null,
    region=null,
    subnetwork=null,
    timeouts=null
  ):: std.prune(a={
    address: address,
    address_type: address_type,
    description: description,
    name: name,
    network: network,
    network_tier: network_tier,
    prefix_length: prefix_length,
    project: project,
    purpose: purpose,
    region: region,
    subnetwork: subnetwork,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withAddress(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          address: value,
        },
      },
    },
  },
  withAddressType(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          address_type: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withNetworkTier(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          network_tier: value,
        },
      },
    },
  },
  withPrefixLength(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          prefix_length: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withPurpose(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          purpose: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withSubnetwork(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
