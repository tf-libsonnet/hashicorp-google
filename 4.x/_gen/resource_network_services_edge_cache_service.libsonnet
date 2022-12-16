local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
    description=null,
    disable_http2=null,
    disable_quic=null,
    edge_security_policy=null,
    edge_ssl_certificates=null,
    labels=null,
    log_config=null,
    project=null,
    require_tls=null,
    routing=null,
    ssl_policy=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_services_edge_cache_service',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      disable_http2=disable_http2,
      disable_quic=disable_quic,
      edge_security_policy=edge_security_policy,
      edge_ssl_certificates=edge_ssl_certificates,
      labels=labels,
      log_config=log_config,
      name=name,
      project=project,
      require_tls=require_tls,
      routing=routing,
      ssl_policy=ssl_policy,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    description=null,
    disable_http2=null,
    disable_quic=null,
    edge_security_policy=null,
    edge_ssl_certificates=null,
    labels=null,
    log_config=null,
    project=null,
    require_tls=null,
    routing=null,
    ssl_policy=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    disable_http2: disable_http2,
    disable_quic: disable_quic,
    edge_security_policy: edge_security_policy,
    edge_ssl_certificates: edge_ssl_certificates,
    labels: labels,
    log_config: log_config,
    name: name,
    project: project,
    require_tls: require_tls,
    routing: routing,
    ssl_policy: ssl_policy,
    timeouts: timeouts,
  }),
  routing:: {
    host_rule:: {
      new(
        hosts,
        path_matcher,
        description=null
      ):: std.prune(a={
        description: description,
        hosts: hosts,
        path_matcher: path_matcher,
      }),
    },
    new(
      host_rule=null,
      path_matcher=null
    ):: std.prune(a={
      host_rule: host_rule,
      path_matcher: path_matcher,
    }),
    path_matcher:: {
      new(
        name,
        description=null,
        route_rule=null
      ):: std.prune(a={
        description: description,
        name: name,
        route_rule: route_rule,
      }),
      route_rule:: {
        header_action:: {
          new(
            request_header_to_add=null,
            request_header_to_remove=null,
            response_header_to_add=null,
            response_header_to_remove=null
          ):: std.prune(a={
            request_header_to_add: request_header_to_add,
            request_header_to_remove: request_header_to_remove,
            response_header_to_add: response_header_to_add,
            response_header_to_remove: response_header_to_remove,
          }),
          request_header_to_add:: {
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
          request_header_to_remove:: {
            new(
              header_name
            ):: std.prune(a={
              header_name: header_name,
            }),
          },
          response_header_to_add:: {
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
          response_header_to_remove:: {
            new(
              header_name
            ):: std.prune(a={
              header_name: header_name,
            }),
          },
        },
        match_rule:: {
          header_match:: {
            new(
              header_name,
              exact_match=null,
              invert_match=null,
              prefix_match=null,
              present_match=null,
              suffix_match=null
            ):: std.prune(a={
              exact_match: exact_match,
              header_name: header_name,
              invert_match: invert_match,
              prefix_match: prefix_match,
              present_match: present_match,
              suffix_match: suffix_match,
            }),
          },
          new(
            full_path_match=null,
            header_match=null,
            ignore_case=null,
            path_template_match=null,
            prefix_match=null,
            query_parameter_match=null
          ):: std.prune(a={
            full_path_match: full_path_match,
            header_match: header_match,
            ignore_case: ignore_case,
            path_template_match: path_template_match,
            prefix_match: prefix_match,
            query_parameter_match: query_parameter_match,
          }),
          query_parameter_match:: {
            new(
              name,
              exact_match=null,
              present_match=null
            ):: std.prune(a={
              exact_match: exact_match,
              name: name,
              present_match: present_match,
            }),
          },
        },
        new(
          priority,
          description=null,
          header_action=null,
          match_rule=null,
          origin=null,
          route_action=null,
          url_redirect=null
        ):: std.prune(a={
          description: description,
          header_action: header_action,
          match_rule: match_rule,
          origin: origin,
          priority: priority,
          route_action: route_action,
          url_redirect: url_redirect,
        }),
        route_action:: {
          cdn_policy:: {
            add_signatures:: {
              new(
                actions,
                copied_parameters=null,
                keyset=null,
                token_query_parameter=null,
                token_ttl=null
              ):: std.prune(a={
                actions: actions,
                copied_parameters: copied_parameters,
                keyset: keyset,
                token_query_parameter: token_query_parameter,
                token_ttl: token_ttl,
              }),
            },
            cache_key_policy:: {
              new(
                exclude_host=null,
                exclude_query_string=null,
                excluded_query_parameters=null,
                include_protocol=null,
                included_cookie_names=null,
                included_header_names=null,
                included_query_parameters=null
              ):: std.prune(a={
                exclude_host: exclude_host,
                exclude_query_string: exclude_query_string,
                excluded_query_parameters: excluded_query_parameters,
                include_protocol: include_protocol,
                included_cookie_names: included_cookie_names,
                included_header_names: included_header_names,
                included_query_parameters: included_query_parameters,
              }),
            },
            new(
              add_signatures=null,
              cache_key_policy=null,
              cache_mode=null,
              client_ttl=null,
              default_ttl=null,
              max_ttl=null,
              negative_caching=null,
              negative_caching_policy=null,
              signed_request_keyset=null,
              signed_request_maximum_expiration_ttl=null,
              signed_request_mode=null,
              signed_token_options=null
            ):: std.prune(a={
              add_signatures: add_signatures,
              cache_key_policy: cache_key_policy,
              cache_mode: cache_mode,
              client_ttl: client_ttl,
              default_ttl: default_ttl,
              max_ttl: max_ttl,
              negative_caching: negative_caching,
              negative_caching_policy: negative_caching_policy,
              signed_request_keyset: signed_request_keyset,
              signed_request_maximum_expiration_ttl: signed_request_maximum_expiration_ttl,
              signed_request_mode: signed_request_mode,
              signed_token_options: signed_token_options,
            }),
            signed_token_options:: {
              new(
                allowed_signature_algorithms=null,
                token_query_parameter=null
              ):: std.prune(a={
                allowed_signature_algorithms: allowed_signature_algorithms,
                token_query_parameter: token_query_parameter,
              }),
            },
          },
          cors_policy:: {
            new(
              max_age,
              allow_credentials=null,
              allow_headers=null,
              allow_methods=null,
              allow_origins=null,
              disabled=null,
              expose_headers=null
            ):: std.prune(a={
              allow_credentials: allow_credentials,
              allow_headers: allow_headers,
              allow_methods: allow_methods,
              allow_origins: allow_origins,
              disabled: disabled,
              expose_headers: expose_headers,
              max_age: max_age,
            }),
          },
          new(
            cdn_policy=null,
            cors_policy=null,
            url_rewrite=null
          ):: std.prune(a={
            cdn_policy: cdn_policy,
            cors_policy: cors_policy,
            url_rewrite: url_rewrite,
          }),
          url_rewrite:: {
            new(
              host_rewrite=null,
              path_prefix_rewrite=null,
              path_template_rewrite=null
            ):: std.prune(a={
              host_rewrite: host_rewrite,
              path_prefix_rewrite: path_prefix_rewrite,
              path_template_rewrite: path_template_rewrite,
            }),
          },
        },
        url_redirect:: {
          new(
            host_redirect=null,
            https_redirect=null,
            path_redirect=null,
            prefix_redirect=null,
            redirect_response_code=null,
            strip_query=null
          ):: std.prune(a={
            host_redirect: host_redirect,
            https_redirect: https_redirect,
            path_redirect: path_redirect,
            prefix_redirect: prefix_redirect,
            redirect_response_code: redirect_response_code,
            strip_query: strip_query,
          }),
        },
      },
    },
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisableHttp2(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          disable_http2: value,
        },
      },
    },
  },
  withDisableQuic(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          disable_quic: value,
        },
      },
    },
  },
  withEdgeSecurityPolicy(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          edge_security_policy: value,
        },
      },
    },
  },
  withEdgeSslCertificates(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          edge_ssl_certificates: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLogConfig(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          log_config: value,
        },
      },
    },
  },
  withLogConfigMixin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRequireTls(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          require_tls: value,
        },
      },
    },
  },
  withRouting(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          routing: value,
        },
      },
    },
  },
  withRoutingMixin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          routing+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSslPolicy(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          ssl_policy: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
