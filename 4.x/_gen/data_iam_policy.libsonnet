local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  audit_config:: {
    audit_log_configs:: {
      new(
        log_type,
        exempted_members=null
      ):: std.prune(a={
        exempted_members: exempted_members,
        log_type: log_type,
      }),
    },
    new(
      service,
      audit_log_configs=null
    ):: std.prune(a={
      audit_log_configs: audit_log_configs,
      service: service,
    }),
  },
  binding:: {
    condition:: {
      new(
        expression,
        title,
        description=null
      ):: std.prune(a={
        description: description,
        expression: expression,
        title: title,
      }),
    },
    new(
      members,
      role,
      condition=null
    ):: std.prune(a={
      condition: condition,
      members: members,
      role: role,
    }),
  },
  new(
    dataSrcLabel,
    audit_config=null,
    binding=null,
    _meta={}
  ):: tf.withData(
    type='google_iam_policy',
    label=dataSrcLabel,
    attrs=self.newAttrs(audit_config=audit_config, binding=binding),
    _meta=_meta
  ),
  newAttrs(
    audit_config=null,
    binding=null
  ):: std.prune(a={
    audit_config: audit_config,
    binding: binding,
  }),
  withAuditConfig(dataSrcLabel, value):: {
    data+: {
      google_iam_policy+: {
        [dataSrcLabel]+: {
          audit_config: value,
        },
      },
    },
  },
  withAuditConfigMixin(dataSrcLabel, value):: {
    data+: {
      google_iam_policy+: {
        [dataSrcLabel]+: {
          audit_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withBinding(dataSrcLabel, value):: {
    data+: {
      google_iam_policy+: {
        [dataSrcLabel]+: {
          binding: value,
        },
      },
    },
  },
  withBindingMixin(dataSrcLabel, value):: {
    data+: {
      google_iam_policy+: {
        [dataSrcLabel]+: {
          binding+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
