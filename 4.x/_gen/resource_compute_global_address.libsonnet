local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    address=null,
    address_type=null,
    description=null,
    ip_version=null,
    network=null,
    prefix_length=null,
    project=null,
    purpose=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_global_address',
    label=resourceLabel,
    attrs=self.newAttrs(
      address=address,
      address_type=address_type,
      description=description,
      ip_version=ip_version,
      name=name,
      network=network,
      prefix_length=prefix_length,
      project=project,
      purpose=purpose,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    address=null,
    address_type=null,
    description=null,
    ip_version=null,
    network=null,
    prefix_length=null,
    project=null,
    purpose=null,
    timeouts=null
  ):: std.prune(a={
    address: address,
    address_type: address_type,
    description: description,
    ip_version: ip_version,
    name: name,
    network: network,
    prefix_length: prefix_length,
    project: project,
    purpose: purpose,
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
      google_compute_global_address+: {
        [resourceLabel]+: {
          address: value,
        },
      },
    },
  },
  withAddressType(resourceLabel, value):: {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          address_type: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withIpVersion(resourceLabel, value):: {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          ip_version: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withPrefixLength(resourceLabel, value):: {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          prefix_length: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withPurpose(resourceLabel, value):: {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          purpose: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_global_address+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
