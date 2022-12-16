local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    filter,
    name,
    org_id,
    description=null,
    disabled=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_organization_exclusion',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      disabled=disabled,
      filter=filter,
      name=name,
      org_id=org_id
    ),
    _meta=_meta
  ),
  newAttrs(
    filter,
    name,
    org_id,
    description=null,
    disabled=null
  ):: std.prune(a={
    description: description,
    disabled: disabled,
    filter: filter,
    name: name,
    org_id: org_id,
  }),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_logging_organization_exclusion+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_logging_organization_exclusion+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withFilter(resourceLabel, value):: {
    resource+: {
      google_logging_organization_exclusion+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_logging_organization_exclusion+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_logging_organization_exclusion+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
}
