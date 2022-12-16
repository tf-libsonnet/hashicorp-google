local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  aws_v4_authentication:: {
    new(
      access_key_id,
      origin_region,
      secret_access_key_version
    ):: std.prune(a={
      access_key_id: access_key_id,
      origin_region: origin_region,
      secret_access_key_version: secret_access_key_version,
    }),
  },
  new(
    resourceLabel,
    name,
    origin_address,
    aws_v4_authentication=null,
    description=null,
    failover_origin=null,
    labels=null,
    max_attempts=null,
    origin_override_action=null,
    origin_redirect=null,
    port=null,
    project=null,
    protocol=null,
    retry_conditions=null,
    timeout=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_services_edge_cache_origin',
    label=resourceLabel,
    attrs=self.newAttrs(
      aws_v4_authentication=aws_v4_authentication,
      description=description,
      failover_origin=failover_origin,
      labels=labels,
      max_attempts=max_attempts,
      name=name,
      origin_address=origin_address,
      origin_override_action=origin_override_action,
      origin_redirect=origin_redirect,
      port=port,
      project=project,
      protocol=protocol,
      retry_conditions=retry_conditions,
      timeout=timeout,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    origin_address,
    aws_v4_authentication=null,
    description=null,
    failover_origin=null,
    labels=null,
    max_attempts=null,
    origin_override_action=null,
    origin_redirect=null,
    port=null,
    project=null,
    protocol=null,
    retry_conditions=null,
    timeout=null,
    timeouts=null
  ):: std.prune(a={
    aws_v4_authentication: aws_v4_authentication,
    description: description,
    failover_origin: failover_origin,
    labels: labels,
    max_attempts: max_attempts,
    name: name,
    origin_address: origin_address,
    origin_override_action: origin_override_action,
    origin_redirect: origin_redirect,
    port: port,
    project: project,
    protocol: protocol,
    retry_conditions: retry_conditions,
    timeout: timeout,
    timeouts: timeouts,
  }),
  origin_override_action:: {
    header_action:: {
      new(
        request_headers_to_add=null
      ):: std.prune(a={
        request_headers_to_add: request_headers_to_add,
      }),
      request_headers_to_add:: {
        new(
          header_name,
          header_value,
          replace=null
        ):: std.prune(a={
          header_name: header_name,
          header_value: header_value,
          replace: replace,
        }),
      },
    },
    new(
      header_action=null,
      url_rewrite=null
    ):: std.prune(a={
      header_action: header_action,
      url_rewrite: url_rewrite,
    }),
    url_rewrite:: {
      new(
        host_rewrite=null
      ):: std.prune(a={
        host_rewrite: host_rewrite,
      }),
    },
  },
  origin_redirect:: {
    new(
      redirect_conditions=null
    ):: std.prune(a={
      redirect_conditions: redirect_conditions,
    }),
  },
  timeout:: {
    new(
      connect_timeout=null,
      max_attempts_timeout=null,
      read_timeout=null,
      response_timeout=null
    ):: std.prune(a={
      connect_timeout: connect_timeout,
      max_attempts_timeout: max_attempts_timeout,
      read_timeout: read_timeout,
      response_timeout: response_timeout,
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
  withAwsV4Authentication(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          aws_v4_authentication: value,
        },
      },
    },
  },
  withAwsV4AuthenticationMixin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          aws_v4_authentication+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withFailoverOrigin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          failover_origin: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMaxAttempts(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          max_attempts: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withOriginAddress(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          origin_address: value,
        },
      },
    },
  },
  withOriginOverrideAction(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          origin_override_action: value,
        },
      },
    },
  },
  withOriginOverrideActionMixin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          origin_override_action+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withOriginRedirect(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          origin_redirect: value,
        },
      },
    },
  },
  withOriginRedirectMixin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          origin_redirect+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPort(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withProtocol(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          protocol: value,
        },
      },
    },
  },
  withRetryConditions(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          retry_conditions: value,
        },
      },
    },
  },
  withTimeout(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          timeout: value,
        },
      },
    },
  },
  withTimeoutMixin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          timeout+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_origin+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
