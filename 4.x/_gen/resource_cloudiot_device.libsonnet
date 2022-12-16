local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  credentials:: {
    new(
      expiration_time=null,
      public_key=null
    ):: std.prune(a={
      expiration_time: expiration_time,
      public_key: public_key,
    }),
    public_key:: {
      new(
        format,
        key
      ):: std.prune(a={
        format: format,
        key: key,
      }),
    },
  },
  gateway_config:: {
    new(
      gateway_auth_method=null,
      gateway_type=null
    ):: std.prune(a={
      gateway_auth_method: gateway_auth_method,
      gateway_type: gateway_type,
    }),
  },
  new(
    resourceLabel,
    name,
    registry,
    blocked=null,
    credentials=null,
    gateway_config=null,
    log_level=null,
    metadata=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudiot_device',
    label=resourceLabel,
    attrs=self.newAttrs(
      blocked=blocked,
      credentials=credentials,
      gateway_config=gateway_config,
      log_level=log_level,
      metadata=metadata,
      name=name,
      registry=registry,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    registry,
    blocked=null,
    credentials=null,
    gateway_config=null,
    log_level=null,
    metadata=null,
    timeouts=null
  ):: std.prune(a={
    blocked: blocked,
    credentials: credentials,
    gateway_config: gateway_config,
    log_level: log_level,
    metadata: metadata,
    name: name,
    registry: registry,
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
  withBlocked(resourceLabel, value):: {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          blocked: value,
        },
      },
    },
  },
  withCredentials(resourceLabel, value):: {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          credentials: value,
        },
      },
    },
  },
  withCredentialsMixin(resourceLabel, value):: {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          credentials+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withGatewayConfig(resourceLabel, value):: {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          gateway_config: value,
        },
      },
    },
  },
  withGatewayConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          gateway_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLogLevel(resourceLabel, value):: {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          log_level: value,
        },
      },
    },
  },
  withMetadata(resourceLabel, value):: {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withRegistry(resourceLabel, value):: {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          registry: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloudiot_device+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
