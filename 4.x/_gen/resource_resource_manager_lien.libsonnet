local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    origin,
    parent,
    reason,
    restrictions,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_resource_manager_lien',
    label=resourceLabel,
    attrs=self.newAttrs(
      origin=origin,
      parent=parent,
      reason=reason,
      restrictions=restrictions,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    origin,
    parent,
    reason,
    restrictions,
    timeouts=null
  ):: std.prune(a={
    origin: origin,
    parent: parent,
    reason: reason,
    restrictions: restrictions,
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
  withOrigin(resourceLabel, value):: {
    resource+: {
      google_resource_manager_lien+: {
        [resourceLabel]+: {
          origin: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_resource_manager_lien+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withReason(resourceLabel, value):: {
    resource+: {
      google_resource_manager_lien+: {
        [resourceLabel]+: {
          reason: value,
        },
      },
    },
  },
  withRestrictions(resourceLabel, value):: {
    resource+: {
      google_resource_manager_lien+: {
        [resourceLabel]+: {
          restrictions: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_resource_manager_lien+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_resource_manager_lien+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
