local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  cdn_policy:: {
    bypass_cache_on_request_headers:: {
      new(
        header_name=null
      ):: std.prune(a={
        header_name: header_name,
      }),
    },
    cache_key_policy:: {
      new(
        include_http_headers=null,
        query_string_whitelist=null
      ):: std.prune(a={
        include_http_headers: include_http_headers,
        query_string_whitelist: query_string_whitelist,
      }),
    },
    negative_caching_policy:: {
      new(
        code=null,
        ttl=null
      ):: std.prune(a={
        code: code,
        ttl: ttl,
      }),
    },
    new(
      bypass_cache_on_request_headers=null,
      cache_key_policy=null,
      cache_mode=null,
      client_ttl=null,
      default_ttl=null,
      max_ttl=null,
      negative_caching=null,
      negative_caching_policy=null,
      request_coalescing=null,
      serve_while_stale=null,
      signed_url_cache_max_age_sec=null
    ):: std.prune(a={
      bypass_cache_on_request_headers: bypass_cache_on_request_headers,
      cache_key_policy: cache_key_policy,
      cache_mode: cache_mode,
      client_ttl: client_ttl,
      default_ttl: default_ttl,
      max_ttl: max_ttl,
      negative_caching: negative_caching,
      negative_caching_policy: negative_caching_policy,
      request_coalescing: request_coalescing,
      serve_while_stale: serve_while_stale,
      signed_url_cache_max_age_sec: signed_url_cache_max_age_sec,
    }),
  },
  new(
    resourceLabel,
    bucket_name,
    name,
    cdn_policy=null,
    compression_mode=null,
    custom_response_headers=null,
    description=null,
    edge_security_policy=null,
    enable_cdn=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_backend_bucket',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket_name=bucket_name,
      cdn_policy=cdn_policy,
      compression_mode=compression_mode,
      custom_response_headers=custom_response_headers,
      description=description,
      edge_security_policy=edge_security_policy,
      enable_cdn=enable_cdn,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    bucket_name,
    name,
    cdn_policy=null,
    compression_mode=null,
    custom_response_headers=null,
    description=null,
    edge_security_policy=null,
    enable_cdn=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    bucket_name: bucket_name,
    cdn_policy: cdn_policy,
    compression_mode: compression_mode,
    custom_response_headers: custom_response_headers,
    description: description,
    edge_security_policy: edge_security_policy,
    enable_cdn: enable_cdn,
    name: name,
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
  withBucketName(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          bucket_name: value,
        },
      },
    },
  },
  withCdnPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          cdn_policy: value,
        },
      },
    },
  },
  withCdnPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          cdn_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCompressionMode(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          compression_mode: value,
        },
      },
    },
  },
  withCustomResponseHeaders(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          custom_response_headers: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withEdgeSecurityPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          edge_security_policy: value,
        },
      },
    },
  },
  withEnableCdn(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          enable_cdn: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
