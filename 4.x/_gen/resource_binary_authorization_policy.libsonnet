local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  admission_whitelist_patterns:: {
    new(
      name_pattern
    ):: std.prune(a={
      name_pattern: name_pattern,
    }),
  },
  cluster_admission_rules:: {
    new(
      cluster,
      enforcement_mode,
      evaluation_mode,
      require_attestations_by=null
    ):: std.prune(a={
      cluster: cluster,
      enforcement_mode: enforcement_mode,
      evaluation_mode: evaluation_mode,
      require_attestations_by: require_attestations_by,
    }),
  },
  default_admission_rule:: {
    new(
      enforcement_mode,
      evaluation_mode,
      require_attestations_by=null
    ):: std.prune(a={
      enforcement_mode: enforcement_mode,
      evaluation_mode: evaluation_mode,
      require_attestations_by: require_attestations_by,
    }),
  },
  new(
    resourceLabel,
    admission_whitelist_patterns=null,
    cluster_admission_rules=null,
    default_admission_rule=null,
    description=null,
    global_policy_evaluation_mode=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_binary_authorization_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      admission_whitelist_patterns=admission_whitelist_patterns,
      cluster_admission_rules=cluster_admission_rules,
      default_admission_rule=default_admission_rule,
      description=description,
      global_policy_evaluation_mode=global_policy_evaluation_mode,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    admission_whitelist_patterns=null,
    cluster_admission_rules=null,
    default_admission_rule=null,
    description=null,
    global_policy_evaluation_mode=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    admission_whitelist_patterns: admission_whitelist_patterns,
    cluster_admission_rules: cluster_admission_rules,
    default_admission_rule: default_admission_rule,
    description: description,
    global_policy_evaluation_mode: global_policy_evaluation_mode,
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
  withAdmissionWhitelistPatterns(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          admission_whitelist_patterns: value,
        },
      },
    },
  },
  withAdmissionWhitelistPatternsMixin(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          admission_whitelist_patterns+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withClusterAdmissionRules(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          cluster_admission_rules: value,
        },
      },
    },
  },
  withClusterAdmissionRulesMixin(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          cluster_admission_rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDefaultAdmissionRule(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          default_admission_rule: value,
        },
      },
    },
  },
  withDefaultAdmissionRuleMixin(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          default_admission_rule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withGlobalPolicyEvaluationMode(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          global_policy_evaluation_mode: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
