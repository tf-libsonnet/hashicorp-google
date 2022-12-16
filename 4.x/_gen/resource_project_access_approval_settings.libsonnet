local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  enrolled_services:: {
    new(
      cloud_product,
      enrollment_level=null
    ):: std.prune(a={
      cloud_product: cloud_product,
      enrollment_level: enrollment_level,
    }),
  },
  new(
    resourceLabel,
    project_id,
    active_key_version=null,
    enrolled_services=null,
    notification_emails=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_project_access_approval_settings',
    label=resourceLabel,
    attrs=self.newAttrs(
      active_key_version=active_key_version,
      enrolled_services=enrolled_services,
      notification_emails=notification_emails,
      project=project,
      project_id=project_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    project_id,
    active_key_version=null,
    enrolled_services=null,
    notification_emails=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    active_key_version: active_key_version,
    enrolled_services: enrolled_services,
    notification_emails: notification_emails,
    project: project,
    project_id: project_id,
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
  withActiveKeyVersion(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          active_key_version: value,
        },
      },
    },
  },
  withEnrolledServices(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          enrolled_services: value,
        },
      },
    },
  },
  withEnrolledServicesMixin(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          enrolled_services+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNotificationEmails(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          notification_emails: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withProjectId(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
