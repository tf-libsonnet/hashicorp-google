local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    secret_id,
    expire_time=null,
    labels=null,
    project=null,
    replication=null,
    rotation=null,
    timeouts=null,
    topics=null,
    ttl=null,
    _meta={}
  ):: tf.withResource(
    type='google_secret_manager_secret',
    label=resourceLabel,
    attrs=self.newAttrs(
      expire_time=expire_time,
      labels=labels,
      project=project,
      replication=replication,
      rotation=rotation,
      secret_id=secret_id,
      timeouts=timeouts,
      topics=topics,
      ttl=ttl
    ),
    _meta=_meta
  ),
  newAttrs(
    secret_id,
    expire_time=null,
    labels=null,
    project=null,
    replication=null,
    rotation=null,
    timeouts=null,
    topics=null,
    ttl=null
  ):: std.prune(a={
    expire_time: expire_time,
    labels: labels,
    project: project,
    replication: replication,
    rotation: rotation,
    secret_id: secret_id,
    timeouts: timeouts,
    topics: topics,
    ttl: ttl,
  }),
  replication:: {
    new(
      automatic=null,
      user_managed=null
    ):: std.prune(a={
      automatic: automatic,
      user_managed: user_managed,
    }),
    user_managed:: {
      new(
        replicas=null
      ):: std.prune(a={
        replicas: replicas,
      }),
      replicas:: {
        customer_managed_encryption:: {
          new(
            kms_key_name
          ):: std.prune(a={
            kms_key_name: kms_key_name,
          }),
        },
        new(
          location,
          customer_managed_encryption=null
        ):: std.prune(a={
          customer_managed_encryption: customer_managed_encryption,
          location: location,
        }),
      },
    },
  },
  rotation:: {
    new(
      next_rotation_time=null,
      rotation_period=null
    ):: std.prune(a={
      next_rotation_time: next_rotation_time,
      rotation_period: rotation_period,
    }),
  },
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
  topics:: {
    new(
      name
    ):: std.prune(a={
      name: name,
    }),
  },
  withExpireTime(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          expire_time: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withReplication(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          replication: value,
        },
      },
    },
  },
  withReplicationMixin(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          replication+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRotation(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          rotation: value,
        },
      },
    },
  },
  withRotationMixin(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          rotation+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSecretId(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          secret_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTopics(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          topics: value,
        },
      },
    },
  },
  withTopicsMixin(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          topics+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTtl(resourceLabel, value):: {
    resource+: {
      google_secret_manager_secret+: {
        [resourceLabel]+: {
          ttl: value,
        },
      },
    },
  },
}
