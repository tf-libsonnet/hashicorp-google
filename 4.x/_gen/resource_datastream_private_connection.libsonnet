local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    location,
    private_connection_id,
    labels=null,
    project=null,
    timeouts=null,
    vpc_peering_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_datastream_private_connection',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      labels=labels,
      location=location,
      private_connection_id=private_connection_id,
      project=project,
      timeouts=timeouts,
      vpc_peering_config=vpc_peering_config
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    location,
    private_connection_id,
    labels=null,
    project=null,
    timeouts=null,
    vpc_peering_config=null
  ):: std.prune(a={
    display_name: display_name,
    labels: labels,
    location: location,
    private_connection_id: private_connection_id,
    project: project,
    timeouts: timeouts,
    vpc_peering_config: vpc_peering_config,
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
  vpc_peering_config:: {
    new(
      subnet,
      vpc
    ):: std.prune(a={
      subnet: subnet,
      vpc: vpc,
    }),
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_datastream_private_connection+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_datastream_private_connection+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_datastream_private_connection+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPrivateConnectionId(resourceLabel, value):: {
    resource+: {
      google_datastream_private_connection+: {
        [resourceLabel]+: {
          private_connection_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_datastream_private_connection+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_datastream_private_connection+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_datastream_private_connection+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVpcPeeringConfig(resourceLabel, value):: {
    resource+: {
      google_datastream_private_connection+: {
        [resourceLabel]+: {
          vpc_peering_config: value,
        },
      },
    },
  },
  withVpcPeeringConfigMixin(resourceLabel, value):: {
    resource+: {
      google_datastream_private_connection+: {
        [resourceLabel]+: {
          vpc_peering_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
