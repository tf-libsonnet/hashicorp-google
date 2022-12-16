local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  content_matchers:: {
    json_path_matcher:: {
      new(
        json_path,
        json_matcher=null
      ):: std.prune(a={
        json_matcher: json_matcher,
        json_path: json_path,
      }),
    },
    new(
      content,
      json_path_matcher=null,
      matcher=null
    ):: std.prune(a={
      content: content,
      json_path_matcher: json_path_matcher,
      matcher: matcher,
    }),
  },
  http_check:: {
    accepted_response_status_codes:: {
      new(
        status_class=null,
        status_value=null
      ):: std.prune(a={
        status_class: status_class,
        status_value: status_value,
      }),
    },
    auth_info:: {
      new(
        password,
        username
      ):: std.prune(a={
        password: password,
        username: username,
      }),
    },
    new(
      accepted_response_status_codes=null,
      auth_info=null,
      body=null,
      content_type=null,
      headers=null,
      mask_headers=null,
      path=null,
      port=null,
      request_method=null,
      use_ssl=null,
      validate_ssl=null
    ):: std.prune(a={
      accepted_response_status_codes: accepted_response_status_codes,
      auth_info: auth_info,
      body: body,
      content_type: content_type,
      headers: headers,
      mask_headers: mask_headers,
      path: path,
      port: port,
      request_method: request_method,
      use_ssl: use_ssl,
      validate_ssl: validate_ssl,
    }),
  },
  monitored_resource:: {
    new(
      labels,
      type
    ):: std.prune(a={
      labels: labels,
      type: type,
    }),
  },
  new(
    resourceLabel,
    display_name,
    timeout,
    checker_type=null,
    content_matchers=null,
    http_check=null,
    monitored_resource=null,
    period=null,
    project=null,
    resource_group=null,
    selected_regions=null,
    tcp_check=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_uptime_check_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      checker_type=checker_type,
      content_matchers=content_matchers,
      display_name=display_name,
      http_check=http_check,
      monitored_resource=monitored_resource,
      period=period,
      project=project,
      resource_group=resource_group,
      selected_regions=selected_regions,
      tcp_check=tcp_check,
      timeout=timeout,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    timeout,
    checker_type=null,
    content_matchers=null,
    http_check=null,
    monitored_resource=null,
    period=null,
    project=null,
    resource_group=null,
    selected_regions=null,
    tcp_check=null,
    timeouts=null
  ):: std.prune(a={
    checker_type: checker_type,
    content_matchers: content_matchers,
    display_name: display_name,
    http_check: http_check,
    monitored_resource: monitored_resource,
    period: period,
    project: project,
    resource_group: resource_group,
    selected_regions: selected_regions,
    tcp_check: tcp_check,
    timeout: timeout,
    timeouts: timeouts,
  }),
  resource_group:: {
    new(
      group_id=null,
      resource_type=null
    ):: std.prune(a={
      group_id: group_id,
      resource_type: resource_type,
    }),
  },
  tcp_check:: {
    new(
      port
    ):: std.prune(a={
      port: port,
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
  withCheckerType(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          checker_type: value,
        },
      },
    },
  },
  withContentMatchers(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          content_matchers: value,
        },
      },
    },
  },
  withContentMatchersMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          content_matchers+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withHttpCheck(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          http_check: value,
        },
      },
    },
  },
  withHttpCheckMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          http_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMonitoredResource(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          monitored_resource: value,
        },
      },
    },
  },
  withMonitoredResourceMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          monitored_resource+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPeriod(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          period: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withResourceGroup(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          resource_group: value,
        },
      },
    },
  },
  withResourceGroupMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          resource_group+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSelectedRegions(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          selected_regions: value,
        },
      },
    },
  },
  withTcpCheck(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          tcp_check: value,
        },
      },
    },
  },
  withTcpCheckMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          tcp_check+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeout(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          timeout: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_uptime_check_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
