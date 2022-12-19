local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='essential_contacts_contact', url='', help='`essential_contacts_contact` represents the `google_essential_contacts_contact` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.essential_contacts_contact.new` injects a new `google_essential_contacts_contact` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.essential_contacts_contact.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.essential_contacts_contact` using the reference:\n\n    $._ref.google_essential_contacts_contact.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_essential_contacts_contact.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `email` (`string`): The email address to send notifications to. This does not need to be a Google account.\n  - `language_tag` (`string`): The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.\n  - `notification_category_subscriptions` (`list`): The categories of notifications that the contact will receive communications for.\n  - `parent` (`string`): The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.essential_contacts_contact.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
  '#newAttrs':: d.fn(help='\n`google.essential_contacts_contact.newAttrs` constructs a new object with attributes and blocks configured for the `essential_contacts_contact`\nTerraform resource.\n\nUnlike [google.essential_contacts_contact.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `email` (`string`): The email address to send notifications to. This does not need to be a Google account.\n  - `language_tag` (`string`): The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.\n  - `notification_category_subscriptions` (`list`): The categories of notifications that the contact will receive communications for.\n  - `parent` (`string`): The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.essential_contacts_contact.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `essential_contacts_contact` resource into the root Terraform configuration.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.essential_contacts_contact.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withEmail':: d.fn(help='`google.string.withEmail` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the email field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `email` field.\n', args=[]),
  withEmail(resourceLabel, value): {
    resource+: {
      google_essential_contacts_contact+: {
        [resourceLabel]+: {
          email: value,
        },
      },
    },
  },
  '#withLanguageTag':: d.fn(help='`google.string.withLanguageTag` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the language_tag field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `language_tag` field.\n', args=[]),
  withLanguageTag(resourceLabel, value): {
    resource+: {
      google_essential_contacts_contact+: {
        [resourceLabel]+: {
          language_tag: value,
        },
      },
    },
  },
  '#withNotificationCategorySubscriptions':: d.fn(help='`google.list.withNotificationCategorySubscriptions` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the notification_category_subscriptions field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `notification_category_subscriptions` field.\n', args=[]),
  withNotificationCategorySubscriptions(resourceLabel, value): {
    resource+: {
      google_essential_contacts_contact+: {
        [resourceLabel]+: {
          notification_category_subscriptions: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_essential_contacts_contact+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_essential_contacts_contact+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_essential_contacts_contact+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
