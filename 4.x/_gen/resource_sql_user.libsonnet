local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    instance,
    name,
    deletion_policy=null,
    host=null,
    password=null,
    password_policy=null,
    project=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_sql_user',
    label=resourceLabel,
    attrs=self.newAttrs(
      deletion_policy=deletion_policy,
      host=host,
      instance=instance,
      name=name,
      password=password,
      password_policy=password_policy,
      project=project,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  newAttrs(
    instance,
    name,
    deletion_policy=null,
    host=null,
    password=null,
    password_policy=null,
    project=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    deletion_policy: deletion_policy,
    host: host,
    instance: instance,
    name: name,
    password: password,
    password_policy: password_policy,
    project: project,
    timeouts: timeouts,
    type: type,
  }),
  password_policy:: {
    new(
      allowed_failed_attempts=null,
      enable_failed_attempts_check=null,
      enable_password_verification=null,
      password_expiration_duration=null
    ):: std.prune(a={
      allowed_failed_attempts: allowed_failed_attempts,
      enable_failed_attempts_check: enable_failed_attempts_check,
      enable_password_verification: enable_password_verification,
      password_expiration_duration: password_expiration_duration,
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
  withDeletionPolicy(resourceLabel, value):: {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          deletion_policy: value,
        },
      },
    },
  },
  withHost(resourceLabel, value):: {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          host: value,
        },
      },
    },
  },
  withInstance(resourceLabel, value):: {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPassword(resourceLabel, value):: {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          password: value,
        },
      },
    },
  },
  withPasswordPolicy(resourceLabel, value):: {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          password_policy: value,
        },
      },
    },
  },
  withPasswordPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          password_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_sql_user+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
