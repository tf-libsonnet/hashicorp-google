local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    application_title,
    support_email,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_iap_brand',
    label=resourceLabel,
    attrs=self.newAttrs(
      application_title=application_title,
      project=project,
      support_email=support_email,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    application_title,
    support_email,
    project=null,
    timeouts=null
  ):: std.prune(a={
    application_title: application_title,
    project: project,
    support_email: support_email,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withApplicationTitle(resourceLabel, value):: {
    resource+: {
      google_iap_brand+: {
        [resourceLabel]+: {
          application_title: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_iap_brand+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSupportEmail(resourceLabel, value):: {
    resource+: {
      google_iap_brand+: {
        [resourceLabel]+: {
          support_email: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_iap_brand+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_iap_brand+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
