local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  authority:: {
    new(
      issuer
    ):: std.prune(a={
      issuer: issuer,
    }),
  },
  endpoint:: {
    gke_cluster:: {
      new(
        resource_link
      ):: std.prune(a={
        resource_link: resource_link,
      }),
    },
    new(
      gke_cluster=null
    ):: std.prune(a={
      gke_cluster: gke_cluster,
    }),
  },
  new(
    resourceLabel,
    membership_id,
    authority=null,
    endpoint=null,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_membership',
    label=resourceLabel,
    attrs=self.newAttrs(
      authority=authority,
      endpoint=endpoint,
      labels=labels,
      membership_id=membership_id,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    membership_id,
    authority=null,
    endpoint=null,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    authority: authority,
    endpoint: endpoint,
    labels: labels,
    membership_id: membership_id,
    project: project,
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
  withAuthority(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          authority: value,
        },
      },
    },
  },
  withAuthorityMixin(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          authority+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEndpoint(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          endpoint: value,
        },
      },
    },
  },
  withEndpointMixin(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          endpoint+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMembershipId(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          membership_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
