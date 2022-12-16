local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    location,
    name,
    org_id,
    consumer_accept_list=null,
    description=null,
    disk_encryption_key_name=null,
    display_name=null,
    ip_range=null,
    peering_cidr_range=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      consumer_accept_list=consumer_accept_list,
      description=description,
      disk_encryption_key_name=disk_encryption_key_name,
      display_name=display_name,
      ip_range=ip_range,
      location=location,
      name=name,
      org_id=org_id,
      peering_cidr_range=peering_cidr_range,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    org_id,
    consumer_accept_list=null,
    description=null,
    disk_encryption_key_name=null,
    display_name=null,
    ip_range=null,
    peering_cidr_range=null,
    timeouts=null
  ):: std.prune(a={
    consumer_accept_list: consumer_accept_list,
    description: description,
    disk_encryption_key_name: disk_encryption_key_name,
    display_name: display_name,
    ip_range: ip_range,
    location: location,
    name: name,
    org_id: org_id,
    peering_cidr_range: peering_cidr_range,
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
  withConsumerAcceptList(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          consumer_accept_list: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDiskEncryptionKeyName(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          disk_encryption_key_name: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withIpRange(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          ip_range: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  withPeeringCidrRange(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          peering_cidr_range: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
