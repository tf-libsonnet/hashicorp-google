local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  backend:: {
    new(
      group,
      balancing_mode=null,
      capacity_scaler=null,
      description=null,
      failover=null,
      max_connections=null,
      max_connections_per_endpoint=null,
      max_connections_per_instance=null,
      max_rate=null,
      max_rate_per_endpoint=null,
      max_rate_per_instance=null,
      max_utilization=null
    ):: std.prune(a={
      balancing_mode: balancing_mode,
      capacity_scaler: capacity_scaler,
      description: description,
      failover: failover,
      group: group,
      max_connections: max_connections,
      max_connections_per_endpoint: max_connections_per_endpoint,
      max_connections_per_instance: max_connections_per_instance,
      max_rate: max_rate,
      max_rate_per_endpoint: max_rate_per_endpoint,
      max_rate_per_instance: max_rate_per_instance,
      max_utilization: max_utilization,
    }),
  },
  cdn_policy:: {
    cache_key_policy:: {
      new(
        include_host=null,
        include_named_cookies=null,
        include_protocol=null,
        include_query_string=null,
        query_string_blacklist=null,
        query_string_whitelist=null
      ):: std.prune(a={
        include_host: include_host,
        include_named_cookies: include_named_cookies,
        include_protocol: include_protocol,
        include_query_string: include_query_string,
        query_string_blacklist: query_string_blacklist,
        query_string_whitelist: query_string_whitelist,
      }),
    },
    negative_caching_policy:: {
      new(
        code=null
      ):: std.prune(a={
        code: code,
      }),
    },
    new(
      cache_key_policy=null,
      cache_mode=null,
      client_ttl=null,
      default_ttl=null,
      max_ttl=null,
      negative_caching=null,
      negative_caching_policy=null,
      serve_while_stale=null,
      signed_url_cache_max_age_sec=null
    ):: std.prune(a={
      cache_key_policy: cache_key_policy,
      cache_mode: cache_mode,
      client_ttl: client_ttl,
      default_ttl: default_ttl,
      max_ttl: max_ttl,
      negative_caching: negative_caching,
      negative_caching_policy: negative_caching_policy,
      serve_while_stale: serve_while_stale,
      signed_url_cache_max_age_sec: signed_url_cache_max_age_sec,
    }),
  },
  circuit_breakers:: {
    new(
      max_connections=null,
      max_pending_requests=null,
      max_requests=null,
      max_requests_per_connection=null,
      max_retries=null
    ):: std.prune(a={
      max_connections: max_connections,
      max_pending_requests: max_pending_requests,
      max_requests: max_requests,
      max_requests_per_connection: max_requests_per_connection,
      max_retries: max_retries,
    }),
  },
  consistent_hash:: {
    http_cookie:: {
      new(
        name=null,
        path=null,
        ttl=null
      ):: std.prune(a={
        name: name,
        path: path,
        ttl: ttl,
      }),
      ttl:: {
        new(
          seconds,
          nanos=null
        ):: std.prune(a={
          nanos: nanos,
          seconds: seconds,
        }),
      },
    },
    new(
      http_cookie=null,
      http_header_name=null,
      minimum_ring_size=null
    ):: std.prune(a={
      http_cookie: http_cookie,
      http_header_name: http_header_name,
      minimum_ring_size: minimum_ring_size,
    }),
  },
  failover_policy:: {
    new(
      disable_connection_drain_on_failover=null,
      drop_traffic_if_unhealthy=null,
      failover_ratio=null
    ):: std.prune(a={
      disable_connection_drain_on_failover: disable_connection_drain_on_failover,
      drop_traffic_if_unhealthy: drop_traffic_if_unhealthy,
      failover_ratio: failover_ratio,
    }),
  },
  iap:: {
    new(
      oauth2_client_id,
      oauth2_client_secret
    ):: std.prune(a={
      oauth2_client_id: oauth2_client_id,
      oauth2_client_secret: oauth2_client_secret,
    }),
  },
  log_config:: {
    new(
      enable=null,
      sample_rate=null
    ):: std.prune(a={
      enable: enable,
      sample_rate: sample_rate,
    }),
  },
  new(
    resourceLabel,
    name,
    affinity_cookie_ttl_sec=null,
    backend=null,
    cdn_policy=null,
    circuit_breakers=null,
    connection_draining_timeout_sec=null,
    consistent_hash=null,
    description=null,
    enable_cdn=null,
    failover_policy=null,
    health_checks=null,
    iap=null,
    load_balancing_scheme=null,
    locality_lb_policy=null,
    log_config=null,
    network=null,
    outlier_detection=null,
    port_name=null,
    project=null,
    protocol=null,
    region=null,
    session_affinity=null,
    timeout_sec=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_backend_service',
    label=resourceLabel,
    attrs=self.newAttrs(
      affinity_cookie_ttl_sec=affinity_cookie_ttl_sec,
      backend=backend,
      cdn_policy=cdn_policy,
      circuit_breakers=circuit_breakers,
      connection_draining_timeout_sec=connection_draining_timeout_sec,
      consistent_hash=consistent_hash,
      description=description,
      enable_cdn=enable_cdn,
      failover_policy=failover_policy,
      health_checks=health_checks,
      iap=iap,
      load_balancing_scheme=load_balancing_scheme,
      locality_lb_policy=locality_lb_policy,
      log_config=log_config,
      name=name,
      network=network,
      outlier_detection=outlier_detection,
      port_name=port_name,
      project=project,
      protocol=protocol,
      region=region,
      session_affinity=session_affinity,
      timeout_sec=timeout_sec,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    affinity_cookie_ttl_sec=null,
    backend=null,
    cdn_policy=null,
    circuit_breakers=null,
    connection_draining_timeout_sec=null,
    consistent_hash=null,
    description=null,
    enable_cdn=null,
    failover_policy=null,
    health_checks=null,
    iap=null,
    load_balancing_scheme=null,
    locality_lb_policy=null,
    log_config=null,
    network=null,
    outlier_detection=null,
    port_name=null,
    project=null,
    protocol=null,
    region=null,
    session_affinity=null,
    timeout_sec=null,
    timeouts=null
  ):: std.prune(a={
    affinity_cookie_ttl_sec: affinity_cookie_ttl_sec,
    backend: backend,
    cdn_policy: cdn_policy,
    circuit_breakers: circuit_breakers,
    connection_draining_timeout_sec: connection_draining_timeout_sec,
    consistent_hash: consistent_hash,
    description: description,
    enable_cdn: enable_cdn,
    failover_policy: failover_policy,
    health_checks: health_checks,
    iap: iap,
    load_balancing_scheme: load_balancing_scheme,
    locality_lb_policy: locality_lb_policy,
    log_config: log_config,
    name: name,
    network: network,
    outlier_detection: outlier_detection,
    port_name: port_name,
    project: project,
    protocol: protocol,
    region: region,
    session_affinity: session_affinity,
    timeout_sec: timeout_sec,
    timeouts: timeouts,
  }),
  outlier_detection:: {
    base_ejection_time:: {
      new(
        seconds,
        nanos=null
      ):: std.prune(a={
        nanos: nanos,
        seconds: seconds,
      }),
    },
    interval:: {
      new(
        seconds,
        nanos=null
      ):: std.prune(a={
        nanos: nanos,
        seconds: seconds,
      }),
    },
    new(
      base_ejection_time=null,
      consecutive_errors=null,
      consecutive_gateway_failure=null,
      enforcing_consecutive_errors=null,
      enforcing_consecutive_gateway_failure=null,
      enforcing_success_rate=null,
      interval=null,
      max_ejection_percent=null,
      success_rate_minimum_hosts=null,
      success_rate_request_volume=null,
      success_rate_stdev_factor=null
    ):: std.prune(a={
      base_ejection_time: base_ejection_time,
      consecutive_errors: consecutive_errors,
      consecutive_gateway_failure: consecutive_gateway_failure,
      enforcing_consecutive_errors: enforcing_consecutive_errors,
      enforcing_consecutive_gateway_failure: enforcing_consecutive_gateway_failure,
      enforcing_success_rate: enforcing_success_rate,
      interval: interval,
      max_ejection_percent: max_ejection_percent,
      success_rate_minimum_hosts: success_rate_minimum_hosts,
      success_rate_request_volume: success_rate_request_volume,
      success_rate_stdev_factor: success_rate_stdev_factor,
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
  withAffinityCookieTtlSec(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          affinity_cookie_ttl_sec: value,
        },
      },
    },
  },
  withBackend(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          backend: value,
        },
      },
    },
  },
  withBackendMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          backend+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCdnPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          cdn_policy: value,
        },
      },
    },
  },
  withCdnPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          cdn_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCircuitBreakers(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          circuit_breakers: value,
        },
      },
    },
  },
  withCircuitBreakersMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          circuit_breakers+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withConnectionDrainingTimeoutSec(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          connection_draining_timeout_sec: value,
        },
      },
    },
  },
  withConsistentHash(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          consistent_hash: value,
        },
      },
    },
  },
  withConsistentHashMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          consistent_hash+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withEnableCdn(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          enable_cdn: value,
        },
      },
    },
  },
  withFailoverPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          failover_policy: value,
        },
      },
    },
  },
  withFailoverPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          failover_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withHealthChecks(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          health_checks: value,
        },
      },
    },
  },
  withIap(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          iap: value,
        },
      },
    },
  },
  withIapMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          iap+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLoadBalancingScheme(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          load_balancing_scheme: value,
        },
      },
    },
  },
  withLocalityLbPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          locality_lb_policy: value,
        },
      },
    },
  },
  withLogConfig(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          log_config: value,
        },
      },
    },
  },
  withLogConfigMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withOutlierDetection(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          outlier_detection: value,
        },
      },
    },
  },
  withOutlierDetectionMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          outlier_detection+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPortName(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          port_name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withProtocol(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          protocol: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withSessionAffinity(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          session_affinity: value,
        },
      },
    },
  },
  withTimeoutSec(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          timeout_sec: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_backend_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
