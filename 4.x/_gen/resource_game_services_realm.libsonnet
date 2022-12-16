local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    realm_id,
    time_zone,
    description=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_game_services_realm',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      labels=labels,
      location=location,
      project=project,
      realm_id=realm_id,
      time_zone=time_zone,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    realm_id,
    time_zone,
    description=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    labels: labels,
    location: location,
    project: project,
    realm_id: realm_id,
    time_zone: time_zone,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRealmId(resourceLabel, value):: {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          realm_id: value,
        },
      },
    },
  },
  withTimeZone(resourceLabel, value):: {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          time_zone: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_game_services_realm+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
