local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    email,
    language_tag,
    notification_category_subscriptions,
    parent,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_essential_contacts_contact',
    label=resourceLabel,
    attrs=self.newAttrs(
      email=email,
      language_tag=language_tag,
      notification_category_subscriptions=notification_category_subscriptions,
      parent=parent,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    email,
    language_tag,
    notification_category_subscriptions,
    parent,
    timeouts=null
  ):: std.prune(a={
    email: email,
    language_tag: language_tag,
    notification_category_subscriptions: notification_category_subscriptions,
    parent: parent,
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
  withEmail(resourceLabel, value):: {
    resource+: {
      google_essential_contacts_contact+: {
        [resourceLabel]+: {
          email: value,
        },
      },
    },
  },
  withLanguageTag(resourceLabel, value):: {
    resource+: {
      google_essential_contacts_contact+: {
        [resourceLabel]+: {
          language_tag: value,
        },
      },
    },
  },
  withNotificationCategorySubscriptions(resourceLabel, value):: {
    resource+: {
      google_essential_contacts_contact+: {
        [resourceLabel]+: {
          notification_category_subscriptions: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_essential_contacts_contact+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_essential_contacts_contact+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_essential_contacts_contact+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
