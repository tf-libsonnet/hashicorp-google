local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  adaptive_protection_config:: {
    layer_7_ddos_defense_config:: {
      new(
        enable=null,
        rule_visibility=null
      ):: std.prune(a={
        enable: enable,
        rule_visibility: rule_visibility,
      }),
    },
    new(
      layer_7_ddos_defense_config=null
    ):: std.prune(a={
      layer_7_ddos_defense_config: layer_7_ddos_defense_config,
    }),
  },
  advanced_options_config:: {
    json_custom_config:: {
      new(
        content_types
      ):: std.prune(a={
        content_types: content_types,
      }),
    },
    new(
      json_custom_config=null,
      json_parsing=null,
      log_level=null
    ):: std.prune(a={
      json_custom_config: json_custom_config,
      json_parsing: json_parsing,
      log_level: log_level,
    }),
  },
  new(
    resourceLabel,
    name,
    adaptive_protection_config=null,
    advanced_options_config=null,
    description=null,
    project=null,
    recaptcha_options_config=null,
    rule=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_security_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      adaptive_protection_config=adaptive_protection_config,
      advanced_options_config=advanced_options_config,
      description=description,
      name=name,
      project=project,
      recaptcha_options_config=recaptcha_options_config,
      rule=rule,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    adaptive_protection_config=null,
    advanced_options_config=null,
    description=null,
    project=null,
    recaptcha_options_config=null,
    rule=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    adaptive_protection_config: adaptive_protection_config,
    advanced_options_config: advanced_options_config,
    description: description,
    name: name,
    project: project,
    recaptcha_options_config: recaptcha_options_config,
    rule: rule,
    timeouts: timeouts,
    type: type,
  }),
  recaptcha_options_config:: {
    new(
      redirect_site_key
    ):: std.prune(a={
      redirect_site_key: redirect_site_key,
    }),
  },
  rule:: {
    header_action:: {
      new(
        request_headers_to_adds=null
      ):: std.prune(a={
        request_headers_to_adds: request_headers_to_adds,
      }),
      request_headers_to_adds:: {
        new(
          header_name,
          header_value=null
        ):: std.prune(a={
          header_name: header_name,
          header_value: header_value,
        }),
      },
    },
    match:: {
      config:: {
        new(
          src_ip_ranges
        ):: std.prune(a={
          src_ip_ranges: src_ip_ranges,
        }),
      },
      expr:: {
        new(
          expression
        ):: std.prune(a={
          expression: expression,
        }),
      },
      new(
        config=null,
        expr=null,
        versioned_expr=null
      ):: std.prune(a={
        config: config,
        expr: expr,
        versioned_expr: versioned_expr,
      }),
    },
    new(
      action,
      priority,
      description=null,
      header_action=null,
      match=null,
      preview=null,
      rate_limit_options=null,
      redirect_options=null
    ):: std.prune(a={
      action: action,
      description: description,
      header_action: header_action,
      match: match,
      preview: preview,
      priority: priority,
      rate_limit_options: rate_limit_options,
      redirect_options: redirect_options,
    }),
    rate_limit_options:: {
      ban_threshold:: {
        new(
          count,
          interval_sec
        ):: std.prune(a={
          count: count,
          interval_sec: interval_sec,
        }),
      },
      exceed_redirect_options:: {
        new(
          type,
          target=null
        ):: std.prune(a={
          target: target,
          type: type,
        }),
      },
      new(
        conform_action,
        exceed_action,
        ban_duration_sec=null,
        ban_threshold=null,
        enforce_on_key=null,
        enforce_on_key_name=null,
        exceed_redirect_options=null,
        rate_limit_threshold=null
      ):: std.prune(a={
        ban_duration_sec: ban_duration_sec,
        ban_threshold: ban_threshold,
        conform_action: conform_action,
        enforce_on_key: enforce_on_key,
        enforce_on_key_name: enforce_on_key_name,
        exceed_action: exceed_action,
        exceed_redirect_options: exceed_redirect_options,
        rate_limit_threshold: rate_limit_threshold,
      }),
      rate_limit_threshold:: {
        new(
          count,
          interval_sec
        ):: std.prune(a={
          count: count,
          interval_sec: interval_sec,
        }),
      },
    },
    redirect_options:: {
      new(
        type,
        target=null
      ):: std.prune(a={
        target: target,
        type: type,
      }),
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
  withAdaptiveProtectionConfig(resourceLabel, value):: {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          adaptive_protection_config: value,
        },
      },
    },
  },
  withAdaptiveProtectionConfigMixin(resourceLabel, value):: {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          adaptive_protection_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withAdvancedOptionsConfig(resourceLabel, value):: {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          advanced_options_config: value,
        },
      },
    },
  },
  withAdvancedOptionsConfigMixin(resourceLabel, value):: {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          advanced_options_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRecaptchaOptionsConfig(resourceLabel, value):: {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          recaptcha_options_config: value,
        },
      },
    },
  },
  withRecaptchaOptionsConfigMixin(resourceLabel, value):: {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          recaptcha_options_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRule(resourceLabel, value):: {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          rule: value,
        },
      },
    },
  },
  withRuleMixin(resourceLabel, value):: {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          rule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_compute_security_policy+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
