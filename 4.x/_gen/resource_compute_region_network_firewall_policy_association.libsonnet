local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    attachment_target,
    firewall_policy,
    name,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_network_firewall_policy_association',
    label=resourceLabel,
    attrs=self.newAttrs(
      attachment_target=attachment_target,
      firewall_policy=firewall_policy,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    attachment_target,
    firewall_policy,
    name,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    attachment_target: attachment_target,
    firewall_policy: firewall_policy,
    name: name,
    project: project,
    region: region,
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
  withAttachmentTarget(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_firewall_policy_association+: {
        [resourceLabel]+: {
          attachment_target: value,
        },
      },
    },
  },
  withFirewallPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_firewall_policy_association+: {
        [resourceLabel]+: {
          firewall_policy: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_firewall_policy_association+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_firewall_policy_association+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_firewall_policy_association+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_firewall_policy_association+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_firewall_policy_association+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
