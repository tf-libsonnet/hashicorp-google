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
    folder,
    service,
    audit_log_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_folder_iam_audit_config',
    label=resourceLabel,
    attrs=self.newAttrs(audit_log_config=audit_log_config, folder=folder, service=service),
    _meta=_meta
  ),
  newAttrs(
    folder,
    service,
    audit_log_config=null
  ):: std.prune(a={
    audit_log_config: audit_log_config,
    folder: folder,
    service: service,
  }),
  withAuditLogConfig(resourceLabel, value):: {
    resource+: {
      google_folder_iam_audit_config+: {
        [resourceLabel]+: {
          audit_log_config: value,
        },
      },
    },
  },
  withAuditLogConfigMixin(resourceLabel, value):: {
    resource+: {
      google_folder_iam_audit_config+: {
        [resourceLabel]+: {
          audit_log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withFolder(resourceLabel, value):: {
    resource+: {
      google_folder_iam_audit_config+: {
        [resourceLabel]+: {
          folder: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_folder_iam_audit_config+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
}
