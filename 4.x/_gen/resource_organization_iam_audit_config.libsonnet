local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  audit_log_config:: {
    new(
      log_type,
      exempted_members=null
    ):: std.prune(a={
      exempted_members: exempted_members,
      log_type: log_type,
    }),
  },
  new(
    resourceLabel,
    org_id,
    service,
    audit_log_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_organization_iam_audit_config',
    label=resourceLabel,
    attrs=self.newAttrs(audit_log_config=audit_log_config, org_id=org_id, service=service),
    _meta=_meta
  ),
  newAttrs(
    org_id,
    service,
    audit_log_config=null
  ):: std.prune(a={
    audit_log_config: audit_log_config,
    org_id: org_id,
    service: service,
  }),
  withAuditLogConfig(resourceLabel, value):: {
    resource+: {
      google_organization_iam_audit_config+: {
        [resourceLabel]+: {
          audit_log_config: value,
        },
      },
    },
  },
  withAuditLogConfigMixin(resourceLabel, value):: {
    resource+: {
      google_organization_iam_audit_config+: {
        [resourceLabel]+: {
          audit_log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_organization_iam_audit_config+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_organization_iam_audit_config+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
}
