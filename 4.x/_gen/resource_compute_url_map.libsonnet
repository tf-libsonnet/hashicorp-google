local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  default_route_action:: {
    cors_policy:: {
      new(
        allow_credentials=null,
        allow_headers=null,
        allow_methods=null,
        allow_origin_regexes=null,
        allow_origins=null,
        disabled=null,
        expose_headers=null,
        max_age=null
      ):: std.prune(a={
        allow_credentials: allow_credentials,
        allow_headers: allow_headers,
        allow_methods: allow_methods,
        allow_origin_regexes: allow_origin_regexes,
        allow_origins: allow_origins,
        disabled: disabled,
        expose_headers: expose_headers,
        max_age: max_age,
      }),
    },
    fault_injection_policy:: {
      abort:: {
        new(
          http_status=null,
          percentage=null
        ):: std.prune(a={
          http_status: http_status,
          percentage: percentage,
        }),
      },
      delay:: {
        fixed_delay:: {
          new(
            nanos=null,
            seconds=null
          ):: std.prune(a={
            nanos: nanos,
            seconds: seconds,
          }),
        },
        new(
          fixed_delay=null,
          percentage=null
        ):: std.prune(a={
          fixed_delay: fixed_delay,
          percentage: percentage,
        }),
      },
      new(
        abort=null,
        delay=null
      ):: std.prune(a={
        abort: abort,
        delay: delay,
      }),
    },
    new(
      cors_policy=null,
      fault_injection_policy=null,
      request_mirror_policy=null,
      retry_policy=null,
      timeout=null,
      url_rewrite=null,
      weighted_backend_services=null
    ):: std.prune(a={
      cors_policy: cors_policy,
      fault_injection_policy: fault_injection_policy,
      request_mirror_policy: request_mirror_policy,
      retry_policy: retry_policy,
      timeout: timeout,
      url_rewrite: url_rewrite,
      weighted_backend_services: weighted_backend_services,
    }),
    request_mirror_policy:: {
      new(
        backend_service
      ):: std.prune(a={
        backend_service: backend_service,
      }),
    },
    retry_policy:: {
      new(
        num_retries=null,
        per_try_timeout=null,
        retry_conditions=null
      ):: std.prune(a={
        num_retries: num_retries,
        per_try_timeout: per_try_timeout,
        retry_conditions: retry_conditions,
      }),
      per_try_timeout:: {
        new(
          nanos=null,
          seconds=null
        ):: std.prune(a={
          nanos: nanos,
          seconds: seconds,
        }),
      },
    },
    timeout:: {
      new(
        nanos=null,
        seconds=null
      ):: std.prune(a={
        nanos: nanos,
        seconds: seconds,
      }),
    },
    url_rewrite:: {
      new(
        host_rewrite=null,
        path_prefix_rewrite=null
      ):: std.prune(a={
        host_rewrite: host_rewrite,
        path_prefix_rewrite: path_prefix_rewrite,
      }),
    },
    weighted_backend_services:: {
      header_action:: {
        new(
          request_headers_to_add=null,
          request_headers_to_remove=null,
          response_headers_to_add=null,
          response_headers_to_remove=null
        ):: std.prune(a={
          request_headers_to_add: request_headers_to_add,
          request_headers_to_remove: request_headers_to_remove,
          response_headers_to_add: response_headers_to_add,
          response_headers_to_remove: response_headers_to_remove,
        }),
        request_headers_to_add:: {
          new(
            header_name=null,
            header_value=null,
            replace=null
          ):: std.prune(a={
            header_name: header_name,
            header_value: header_value,
            replace: replace,
          }),
        },
        response_headers_to_add:: {
          new(
            header_name=null,
            header_value=null,
            replace=null
          ):: std.prune(a={
            header_name: header_name,
            header_value: header_value,
            replace: replace,
          }),
        },
      },
      new(
        backend_service=null,
        header_action=null,
        weight=null
      ):: std.prune(a={
        backend_service: backend_service,
        header_action: header_action,
        weight: weight,
      }),
    },
  },
  default_url_redirect:: {
    new(
      strip_query,
      host_redirect=null,
      https_redirect=null,
      path_redirect=null,
      prefix_redirect=null,
      redirect_response_code=null
    ):: std.prune(a={
      host_redirect: host_redirect,
      https_redirect: https_redirect,
      path_redirect: path_redirect,
      prefix_redirect: prefix_redirect,
      redirect_response_code: redirect_response_code,
      strip_query: strip_query,
    }),
  },
  header_action:: {
    new(
      request_headers_to_add=null,
      request_headers_to_remove=null,
      response_headers_to_add=null,
      response_headers_to_remove=null
    ):: std.prune(a={
      request_headers_to_add: request_headers_to_add,
      request_headers_to_remove: request_headers_to_remove,
      response_headers_to_add: response_headers_to_add,
      response_headers_to_remove: response_headers_to_remove,
    }),
    request_headers_to_add:: {
      new(
        header_name,
        header_value,
        replace
      ):: std.prune(a={
        header_name: header_name,
        header_value: header_value,
        replace: replace,
      }),
    },
    response_headers_to_add:: {
      new(
        header_name,
        header_value,
        replace
      ):: std.prune(a={
        header_name: header_name,
        header_value: header_value,
        replace: replace,
      }),
    },
  },
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
    resourceLabel,
    name,
    default_route_action=null,
    default_service=null,
    default_url_redirect=null,
    description=null,
    header_action=null,
    host_rule=null,
    path_matcher=null,
    project=null,
    test=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_url_map',
    label=resourceLabel,
    attrs=self.newAttrs(
      default_route_action=default_route_action,
      default_service=default_service,
      default_url_redirect=default_url_redirect,
      description=description,
      header_action=header_action,
      host_rule=host_rule,
      name=name,
      path_matcher=path_matcher,
      project=project,
      test=test,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    default_route_action=null,
    default_service=null,
    default_url_redirect=null,
    description=null,
    header_action=null,
    host_rule=null,
    path_matcher=null,
    project=null,
    test=null,
    timeouts=null
  ):: std.prune(a={
    default_route_action: default_route_action,
    default_service: default_service,
    default_url_redirect: default_url_redirect,
    description: description,
    header_action: header_action,
    host_rule: host_rule,
    name: name,
    path_matcher: path_matcher,
    project: project,
    test: test,
    timeouts: timeouts,
  }),
  path_matcher:: {
    default_route_action:: {
      cors_policy:: {
        new(
          allow_credentials=null,
          allow_headers=null,
          allow_methods=null,
          allow_origin_regexes=null,
          allow_origins=null,
          disabled=null,
          expose_headers=null,
          max_age=null
        ):: std.prune(a={
          allow_credentials: allow_credentials,
          allow_headers: allow_headers,
          allow_methods: allow_methods,
          allow_origin_regexes: allow_origin_regexes,
          allow_origins: allow_origins,
          disabled: disabled,
          expose_headers: expose_headers,
          max_age: max_age,
        }),
      },
      fault_injection_policy:: {
        abort:: {
          new(
            http_status=null,
            percentage=null
          ):: std.prune(a={
            http_status: http_status,
            percentage: percentage,
          }),
        },
        delay:: {
          fixed_delay:: {
            new(
              nanos=null,
              seconds=null
            ):: std.prune(a={
              nanos: nanos,
              seconds: seconds,
            }),
          },
          new(
            fixed_delay=null,
            percentage=null
          ):: std.prune(a={
            fixed_delay: fixed_delay,
            percentage: percentage,
          }),
        },
        new(
          abort=null,
          delay=null
        ):: std.prune(a={
          abort: abort,
          delay: delay,
        }),
      },
      new(
        cors_policy=null,
        fault_injection_policy=null,
        request_mirror_policy=null,
        retry_policy=null,
        timeout=null,
        url_rewrite=null,
        weighted_backend_services=null
      ):: std.prune(a={
        cors_policy: cors_policy,
        fault_injection_policy: fault_injection_policy,
        request_mirror_policy: request_mirror_policy,
        retry_policy: retry_policy,
        timeout: timeout,
        url_rewrite: url_rewrite,
        weighted_backend_services: weighted_backend_services,
      }),
      request_mirror_policy:: {
        new(
          backend_service
        ):: std.prune(a={
          backend_service: backend_service,
        }),
      },
      retry_policy:: {
        new(
          num_retries=null,
          per_try_timeout=null,
          retry_conditions=null
        ):: std.prune(a={
          num_retries: num_retries,
          per_try_timeout: per_try_timeout,
          retry_conditions: retry_conditions,
        }),
        per_try_timeout:: {
          new(
            nanos=null,
            seconds=null
          ):: std.prune(a={
            nanos: nanos,
            seconds: seconds,
          }),
        },
      },
      timeout:: {
        new(
          nanos=null,
          seconds=null
        ):: std.prune(a={
          nanos: nanos,
          seconds: seconds,
        }),
      },
      url_rewrite:: {
        new(
          host_rewrite=null,
          path_prefix_rewrite=null
        ):: std.prune(a={
          host_rewrite: host_rewrite,
          path_prefix_rewrite: path_prefix_rewrite,
        }),
      },
      weighted_backend_services:: {
        header_action:: {
          new(
            request_headers_to_add=null,
            request_headers_to_remove=null,
            response_headers_to_add=null,
            response_headers_to_remove=null
          ):: std.prune(a={
            request_headers_to_add: request_headers_to_add,
            request_headers_to_remove: request_headers_to_remove,
            response_headers_to_add: response_headers_to_add,
            response_headers_to_remove: response_headers_to_remove,
          }),
          request_headers_to_add:: {
            new(
              header_name=null,
              header_value=null,
              replace=null
            ):: std.prune(a={
              header_name: header_name,
              header_value: header_value,
              replace: replace,
            }),
          },
          response_headers_to_add:: {
            new(
              header_name=null,
              header_value=null,
              replace=null
            ):: std.prune(a={
              header_name: header_name,
              header_value: header_value,
              replace: replace,
            }),
          },
        },
        new(
          backend_service=null,
          header_action=null,
          weight=null
        ):: std.prune(a={
          backend_service: backend_service,
          header_action: header_action,
          weight: weight,
        }),
      },
    },
    default_url_redirect:: {
      new(
        strip_query,
        host_redirect=null,
        https_redirect=null,
        path_redirect=null,
        prefix_redirect=null,
        redirect_response_code=null
      ):: std.prune(a={
        host_redirect: host_redirect,
        https_redirect: https_redirect,
        path_redirect: path_redirect,
        prefix_redirect: prefix_redirect,
        redirect_response_code: redirect_response_code,
        strip_query: strip_query,
      }),
    },
    header_action:: {
      new(
        request_headers_to_add=null,
        request_headers_to_remove=null,
        response_headers_to_add=null,
        response_headers_to_remove=null
      ):: std.prune(a={
        request_headers_to_add: request_headers_to_add,
        request_headers_to_remove: request_headers_to_remove,
        response_headers_to_add: response_headers_to_add,
        response_headers_to_remove: response_headers_to_remove,
      }),
      request_headers_to_add:: {
        new(
          header_name,
          header_value,
          replace
        ):: std.prune(a={
          header_name: header_name,
          header_value: header_value,
          replace: replace,
        }),
      },
      response_headers_to_add:: {
        new(
          header_name,
          header_value,
          replace
        ):: std.prune(a={
          header_name: header_name,
          header_value: header_value,
          replace: replace,
        }),
      },
    },
    new(
      name,
      default_route_action=null,
      default_service=null,
      default_url_redirect=null,
      description=null,
      header_action=null,
      path_rule=null,
      route_rules=null
    ):: std.prune(a={
      default_route_action: default_route_action,
      default_service: default_service,
      default_url_redirect: default_url_redirect,
      description: description,
      header_action: header_action,
      name: name,
      path_rule: path_rule,
      route_rules: route_rules,
    }),
    path_rule:: {
      new(
        paths,
        route_action=null,
        service=null,
        url_redirect=null
      ):: std.prune(a={
        paths: paths,
        route_action: route_action,
        service: service,
        url_redirect: url_redirect,
      }),
      route_action:: {
        cors_policy:: {
          new(
            disabled,
            allow_credentials=null,
            allow_headers=null,
            allow_methods=null,
            allow_origin_regexes=null,
            allow_origins=null,
            expose_headers=null,
            max_age=null
          ):: std.prune(a={
            allow_credentials: allow_credentials,
            allow_headers: allow_headers,
            allow_methods: allow_methods,
            allow_origin_regexes: allow_origin_regexes,
            allow_origins: allow_origins,
            disabled: disabled,
            expose_headers: expose_headers,
            max_age: max_age,
          }),
        },
        fault_injection_policy:: {
          abort:: {
            new(
              http_status,
              percentage
            ):: std.prune(a={
              http_status: http_status,
              percentage: percentage,
            }),
          },
          delay:: {
            fixed_delay:: {
              new(
                seconds,
                nanos=null
              ):: std.prune(a={
                nanos: nanos,
                seconds: seconds,
              }),
            },
            new(
              percentage,
              fixed_delay=null
            ):: std.prune(a={
              fixed_delay: fixed_delay,
              percentage: percentage,
            }),
          },
          new(
            abort=null,
            delay=null
          ):: std.prune(a={
            abort: abort,
            delay: delay,
          }),
        },
        new(
          cors_policy=null,
          fault_injection_policy=null,
          request_mirror_policy=null,
          retry_policy=null,
          timeout=null,
          url_rewrite=null,
          weighted_backend_services=null
        ):: std.prune(a={
          cors_policy: cors_policy,
          fault_injection_policy: fault_injection_policy,
          request_mirror_policy: request_mirror_policy,
          retry_policy: retry_policy,
          timeout: timeout,
          url_rewrite: url_rewrite,
          weighted_backend_services: weighted_backend_services,
        }),
        request_mirror_policy:: {
          new(
            backend_service
          ):: std.prune(a={
            backend_service: backend_service,
          }),
        },
        retry_policy:: {
          new(
            num_retries=null,
            per_try_timeout=null,
            retry_conditions=null
          ):: std.prune(a={
            num_retries: num_retries,
            per_try_timeout: per_try_timeout,
            retry_conditions: retry_conditions,
          }),
          per_try_timeout:: {
            new(
              seconds,
              nanos=null
            ):: std.prune(a={
              nanos: nanos,
              seconds: seconds,
            }),
          },
        },
        timeout:: {
          new(
            seconds,
            nanos=null
          ):: std.prune(a={
            nanos: nanos,
            seconds: seconds,
          }),
        },
        url_rewrite:: {
          new(
            host_rewrite=null,
            path_prefix_rewrite=null
          ):: std.prune(a={
            host_rewrite: host_rewrite,
            path_prefix_rewrite: path_prefix_rewrite,
          }),
        },
        weighted_backend_services:: {
          header_action:: {
            new(
              request_headers_to_add=null,
              request_headers_to_remove=null,
              response_headers_to_add=null,
              response_headers_to_remove=null
            ):: std.prune(a={
              request_headers_to_add: request_headers_to_add,
              request_headers_to_remove: request_headers_to_remove,
              response_headers_to_add: response_headers_to_add,
              response_headers_to_remove: response_headers_to_remove,
            }),
            request_headers_to_add:: {
              new(
                header_name,
                header_value,
                replace
              ):: std.prune(a={
                header_name: header_name,
                header_value: header_value,
                replace: replace,
              }),
            },
            response_headers_to_add:: {
              new(
                header_name,
                header_value,
                replace
              ):: std.prune(a={
                header_name: header_name,
                header_value: header_value,
                replace: replace,
              }),
            },
          },
          new(
            backend_service,
            weight,
            header_action=null
          ):: std.prune(a={
            backend_service: backend_service,
            header_action: header_action,
            weight: weight,
          }),
        },
      },
      url_redirect:: {
        new(
          strip_query,
          host_redirect=null,
          https_redirect=null,
          path_redirect=null,
          prefix_redirect=null,
          redirect_response_code=null
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
    route_rules:: {
      header_action:: {
        new(
          request_headers_to_add=null,
          request_headers_to_remove=null,
          response_headers_to_add=null,
          response_headers_to_remove=null
        ):: std.prune(a={
          request_headers_to_add: request_headers_to_add,
          request_headers_to_remove: request_headers_to_remove,
          response_headers_to_add: response_headers_to_add,
          response_headers_to_remove: response_headers_to_remove,
        }),
        request_headers_to_add:: {
          new(
            header_name,
            header_value,
            replace
          ):: std.prune(a={
            header_name: header_name,
            header_value: header_value,
            replace: replace,
          }),
        },
        response_headers_to_add:: {
          new(
            header_name,
            header_value,
            replace
          ):: std.prune(a={
            header_name: header_name,
            header_value: header_value,
            replace: replace,
          }),
        },
      },
      match_rules:: {
        header_matches:: {
          new(
            header_name,
            exact_match=null,
            invert_match=null,
            prefix_match=null,
            present_match=null,
            range_match=null,
            regex_match=null,
            suffix_match=null
          ):: std.prune(a={
            exact_match: exact_match,
            header_name: header_name,
            invert_match: invert_match,
            prefix_match: prefix_match,
            present_match: present_match,
            range_match: range_match,
            regex_match: regex_match,
            suffix_match: suffix_match,
          }),
          range_match:: {
            new(
              range_end,
              range_start
            ):: std.prune(a={
              range_end: range_end,
              range_start: range_start,
            }),
          },
        },
        metadata_filters:: {
          filter_labels:: {
            new(
              name,
              value
            ):: std.prune(a={
              name: name,
              value: value,
            }),
          },
          new(
            filter_match_criteria,
            filter_labels=null
          ):: std.prune(a={
            filter_labels: filter_labels,
            filter_match_criteria: filter_match_criteria,
          }),
        },
        new(
          full_path_match=null,
          header_matches=null,
          ignore_case=null,
          metadata_filters=null,
          prefix_match=null,
          query_parameter_matches=null,
          regex_match=null
        ):: std.prune(a={
          full_path_match: full_path_match,
          header_matches: header_matches,
          ignore_case: ignore_case,
          metadata_filters: metadata_filters,
          prefix_match: prefix_match,
          query_parameter_matches: query_parameter_matches,
          regex_match: regex_match,
        }),
        query_parameter_matches:: {
          new(
            name,
            exact_match=null,
            present_match=null,
            regex_match=null
          ):: std.prune(a={
            exact_match: exact_match,
            name: name,
            present_match: present_match,
            regex_match: regex_match,
          }),
        },
      },
      new(
        priority,
        header_action=null,
        match_rules=null,
        route_action=null,
        service=null,
        url_redirect=null
      ):: std.prune(a={
        header_action: header_action,
        match_rules: match_rules,
        priority: priority,
        route_action: route_action,
        service: service,
        url_redirect: url_redirect,
      }),
      route_action:: {
        cors_policy:: {
          new(
            allow_credentials=null,
            allow_headers=null,
            allow_methods=null,
            allow_origin_regexes=null,
            allow_origins=null,
            disabled=null,
            expose_headers=null,
            max_age=null
          ):: std.prune(a={
            allow_credentials: allow_credentials,
            allow_headers: allow_headers,
            allow_methods: allow_methods,
            allow_origin_regexes: allow_origin_regexes,
            allow_origins: allow_origins,
            disabled: disabled,
            expose_headers: expose_headers,
            max_age: max_age,
          }),
        },
        fault_injection_policy:: {
          abort:: {
            new(
              http_status=null,
              percentage=null
            ):: std.prune(a={
              http_status: http_status,
              percentage: percentage,
            }),
          },
          delay:: {
            fixed_delay:: {
              new(
                seconds,
                nanos=null
              ):: std.prune(a={
                nanos: nanos,
                seconds: seconds,
              }),
            },
            new(
              fixed_delay=null,
              percentage=null
            ):: std.prune(a={
              fixed_delay: fixed_delay,
              percentage: percentage,
            }),
          },
          new(
            abort=null,
            delay=null
          ):: std.prune(a={
            abort: abort,
            delay: delay,
          }),
        },
        new(
          cors_policy=null,
          fault_injection_policy=null,
          request_mirror_policy=null,
          retry_policy=null,
          timeout=null,
          url_rewrite=null,
          weighted_backend_services=null
        ):: std.prune(a={
          cors_policy: cors_policy,
          fault_injection_policy: fault_injection_policy,
          request_mirror_policy: request_mirror_policy,
          retry_policy: retry_policy,
          timeout: timeout,
          url_rewrite: url_rewrite,
          weighted_backend_services: weighted_backend_services,
        }),
        request_mirror_policy:: {
          new(
            backend_service
          ):: std.prune(a={
            backend_service: backend_service,
          }),
        },
        retry_policy:: {
          new(
            num_retries,
            per_try_timeout=null,
            retry_conditions=null
          ):: std.prune(a={
            num_retries: num_retries,
            per_try_timeout: per_try_timeout,
            retry_conditions: retry_conditions,
          }),
          per_try_timeout:: {
            new(
              seconds,
              nanos=null
            ):: std.prune(a={
              nanos: nanos,
              seconds: seconds,
            }),
          },
        },
        timeout:: {
          new(
            seconds,
            nanos=null
          ):: std.prune(a={
            nanos: nanos,
            seconds: seconds,
          }),
        },
        url_rewrite:: {
          new(
            host_rewrite=null,
            path_prefix_rewrite=null
          ):: std.prune(a={
            host_rewrite: host_rewrite,
            path_prefix_rewrite: path_prefix_rewrite,
          }),
        },
        weighted_backend_services:: {
          header_action:: {
            new(
              request_headers_to_add=null,
              request_headers_to_remove=null,
              response_headers_to_add=null,
              response_headers_to_remove=null
            ):: std.prune(a={
              request_headers_to_add: request_headers_to_add,
              request_headers_to_remove: request_headers_to_remove,
              response_headers_to_add: response_headers_to_add,
              response_headers_to_remove: response_headers_to_remove,
            }),
            request_headers_to_add:: {
              new(
                header_name,
                header_value,
                replace
              ):: std.prune(a={
                header_name: header_name,
                header_value: header_value,
                replace: replace,
              }),
            },
            response_headers_to_add:: {
              new(
                header_name,
                header_value,
                replace
              ):: std.prune(a={
                header_name: header_name,
                header_value: header_value,
                replace: replace,
              }),
            },
          },
          new(
            backend_service,
            weight,
            header_action=null
          ):: std.prune(a={
            backend_service: backend_service,
            header_action: header_action,
            weight: weight,
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
  test:: {
    new(
      host,
      path,
      service,
      description=null
    ):: std.prune(a={
      description: description,
      host: host,
      path: path,
      service: service,
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
  withDefaultRouteAction(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          default_route_action: value,
        },
      },
    },
  },
  withDefaultRouteActionMixin(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          default_route_action+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDefaultService(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          default_service: value,
        },
      },
    },
  },
  withDefaultUrlRedirect(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          default_url_redirect: value,
        },
      },
    },
  },
  withDefaultUrlRedirectMixin(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          default_url_redirect+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withHeaderAction(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          header_action: value,
        },
      },
    },
  },
  withHeaderActionMixin(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          header_action+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withHostRule(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          host_rule: value,
        },
      },
    },
  },
  withHostRuleMixin(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          host_rule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPathMatcher(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          path_matcher: value,
        },
      },
    },
  },
  withPathMatcherMixin(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          path_matcher+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTest(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          test: value,
        },
      },
    },
  },
  withTestMixin(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          test+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_url_map+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
