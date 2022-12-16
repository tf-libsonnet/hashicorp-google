local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    domain,
    target_dns_ip_addresses,
    target_domain_name,
    trust_direction,
    trust_handshake_secret,
    trust_type,
    project=null,
    selective_authentication=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_active_directory_domain_trust',
    label=resourceLabel,
    attrs=self.newAttrs(
      domain=domain,
      project=project,
      selective_authentication=selective_authentication,
      target_dns_ip_addresses=target_dns_ip_addresses,
      target_domain_name=target_domain_name,
      timeouts=timeouts,
      trust_direction=trust_direction,
      trust_handshake_secret=trust_handshake_secret,
      trust_type=trust_type
    ),
    _meta=_meta
  ),
  newAttrs(
    domain,
    target_dns_ip_addresses,
    target_domain_name,
    trust_direction,
    trust_handshake_secret,
    trust_type,
    project=null,
    selective_authentication=null,
    timeouts=null
  ):: std.prune(a={
    domain: domain,
    project: project,
    selective_authentication: selective_authentication,
    target_dns_ip_addresses: target_dns_ip_addresses,
    target_domain_name: target_domain_name,
    timeouts: timeouts,
    trust_direction: trust_direction,
    trust_handshake_secret: trust_handshake_secret,
    trust_type: trust_type,
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
  withDomain(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          domain: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSelectiveAuthentication(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          selective_authentication: value,
        },
      },
    },
  },
  withTargetDnsIpAddresses(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          target_dns_ip_addresses: value,
        },
      },
    },
  },
  withTargetDomainName(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          target_domain_name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTrustDirection(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          trust_direction: value,
        },
      },
    },
  },
  withTrustHandshakeSecret(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          trust_handshake_secret: value,
        },
      },
    },
  },
  withTrustType(resourceLabel, value):: {
    resource+: {
      google_active_directory_domain_trust+: {
        [resourceLabel]+: {
          trust_type: value,
        },
      },
    },
  },
}
