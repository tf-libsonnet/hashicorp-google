local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dialogflow_intent', url='', help='`dialogflow_intent` represents the `google_dialogflow_intent` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.dialogflow_intent.new` injects a new `google_dialogflow_intent` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dialogflow_intent.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dialogflow_intent` using the reference:\n\n    $._ref.google_dialogflow_intent.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dialogflow_intent.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `action` (`string`): The name of the action associated with the intent.\nNote: The action name must not contain whitespaces. When `null`, the `action` field will be omitted from the resulting object.\n  - `default_response_platforms` (`list`): The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED\n(i.e. default platform). Possible values: [\u0026#34;FACEBOOK\u0026#34;, \u0026#34;SLACK\u0026#34;, \u0026#34;TELEGRAM\u0026#34;, \u0026#34;KIK\u0026#34;, \u0026#34;SKYPE\u0026#34;, \u0026#34;LINE\u0026#34;, \u0026#34;VIBER\u0026#34;, \u0026#34;ACTIONS_ON_GOOGLE\u0026#34;, \u0026#34;GOOGLE_HANGOUTS\u0026#34;] When `null`, the `default_response_platforms` field will be omitted from the resulting object.\n  - `display_name` (`string`): The name of this intent to be displayed on the console.\n  - `events` (`list`): The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of\nthe contexts must be present in the active user session for an event to trigger this intent. See the \n[events reference](https://cloud.google.com/dialogflow/docs/events-overview) for more details. When `null`, the `events` field will be omitted from the resulting object.\n  - `input_context_names` (`list`): The list of context names required for this intent to be triggered.\nFormat: projects/\u0026lt;Project ID\u0026gt;/agent/sessions/-/contexts/\u0026lt;Context ID\u0026gt;. When `null`, the `input_context_names` field will be omitted from the resulting object.\n  - `is_fallback` (`bool`): Indicates whether this is a fallback intent. When `null`, the `is_fallback` field will be omitted from the resulting object.\n  - `ml_disabled` (`bool`): Indicates whether Machine Learning is disabled for the intent.\nNote: If mlDisabled setting is set to true, then this intent is not taken into account during inference in ML\nONLY match mode. Also, auto-markup in the UI is turned off. When `null`, the `ml_disabled` field will be omitted from the resulting object.\n  - `parent_followup_intent_name` (`string`): The unique identifier of the parent intent in the chain of followup intents.\nFormat: projects/\u0026lt;Project ID\u0026gt;/agent/intents/\u0026lt;Intent ID\u0026gt;. When `null`, the `parent_followup_intent_name` field will be omitted from the resulting object.\n  - `priority` (`number`): The priority of this intent. Higher numbers represent higher priorities.\n  - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds\n  to the Normal priority in the console.\n  - If the supplied value is negative, the intent is ignored in runtime detect intent requests. When `null`, the `priority` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `reset_contexts` (`bool`): Indicates whether to delete all contexts in the current session when this intent is matched. When `null`, the `reset_contexts` field will be omitted from the resulting object.\n  - `webhook_state` (`string`): Indicates whether webhooks are enabled for the intent.\n* WEBHOOK_STATE_ENABLED: Webhook is enabled in the agent and in the intent.\n* WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING: Webhook is enabled in the agent and in the intent. Also, each slot\nfilling prompt is forwarded to the webhook. Possible values: [\u0026#34;WEBHOOK_STATE_ENABLED\u0026#34;, \u0026#34;WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING\u0026#34;] When `null`, the `webhook_state` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_intent.timeouts.new](#fn-dialogflowintenttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    action=null,
    default_response_platforms=null,
    events=null,
    input_context_names=null,
    is_fallback=null,
    ml_disabled=null,
    parent_followup_intent_name=null,
    priority=null,
    project=null,
    reset_contexts=null,
    timeouts=null,
    webhook_state=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_intent',
    label=resourceLabel,
    attrs=self.newAttrs(
      action=action,
      default_response_platforms=default_response_platforms,
      display_name=display_name,
      events=events,
      input_context_names=input_context_names,
      is_fallback=is_fallback,
      ml_disabled=ml_disabled,
      parent_followup_intent_name=parent_followup_intent_name,
      priority=priority,
      project=project,
      reset_contexts=reset_contexts,
      timeouts=timeouts,
      webhook_state=webhook_state
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dialogflow_intent.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_intent`\nTerraform resource.\n\nUnlike [google.dialogflow_intent.new](#fn-dialogflowintentnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `action` (`string`): The name of the action associated with the intent.\nNote: The action name must not contain whitespaces. When `null`, the `action` field will be omitted from the resulting object.\n  - `default_response_platforms` (`list`): The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED\n(i.e. default platform). Possible values: [&#34;FACEBOOK&#34;, &#34;SLACK&#34;, &#34;TELEGRAM&#34;, &#34;KIK&#34;, &#34;SKYPE&#34;, &#34;LINE&#34;, &#34;VIBER&#34;, &#34;ACTIONS_ON_GOOGLE&#34;, &#34;GOOGLE_HANGOUTS&#34;] When `null`, the `default_response_platforms` field will be omitted from the resulting object.\n  - `display_name` (`string`): The name of this intent to be displayed on the console.\n  - `events` (`list`): The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of\nthe contexts must be present in the active user session for an event to trigger this intent. See the \n[events reference](https://cloud.google.com/dialogflow/docs/events-overview) for more details. When `null`, the `events` field will be omitted from the resulting object.\n  - `input_context_names` (`list`): The list of context names required for this intent to be triggered.\nFormat: projects/&lt;Project ID&gt;/agent/sessions/-/contexts/&lt;Context ID&gt;. When `null`, the `input_context_names` field will be omitted from the resulting object.\n  - `is_fallback` (`bool`): Indicates whether this is a fallback intent. When `null`, the `is_fallback` field will be omitted from the resulting object.\n  - `ml_disabled` (`bool`): Indicates whether Machine Learning is disabled for the intent.\nNote: If mlDisabled setting is set to true, then this intent is not taken into account during inference in ML\nONLY match mode. Also, auto-markup in the UI is turned off. When `null`, the `ml_disabled` field will be omitted from the resulting object.\n  - `parent_followup_intent_name` (`string`): The unique identifier of the parent intent in the chain of followup intents.\nFormat: projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;. When `null`, the `parent_followup_intent_name` field will be omitted from the resulting object.\n  - `priority` (`number`): The priority of this intent. Higher numbers represent higher priorities.\n  - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds\n  to the Normal priority in the console.\n  - If the supplied value is negative, the intent is ignored in runtime detect intent requests. When `null`, the `priority` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `reset_contexts` (`bool`): Indicates whether to delete all contexts in the current session when this intent is matched. When `null`, the `reset_contexts` field will be omitted from the resulting object.\n  - `webhook_state` (`string`): Indicates whether webhooks are enabled for the intent.\n* WEBHOOK_STATE_ENABLED: Webhook is enabled in the agent and in the intent.\n* WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING: Webhook is enabled in the agent and in the intent. Also, each slot\nfilling prompt is forwarded to the webhook. Possible values: [&#34;WEBHOOK_STATE_ENABLED&#34;, &#34;WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING&#34;] When `null`, the `webhook_state` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_intent.timeouts.new](#fn-dialogflowintenttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_intent` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    action=null,
    default_response_platforms=null,
    events=null,
    input_context_names=null,
    is_fallback=null,
    ml_disabled=null,
    parent_followup_intent_name=null,
    priority=null,
    project=null,
    reset_contexts=null,
    timeouts=null,
    webhook_state=null
  ):: std.prune(a={
    action: action,
    default_response_platforms: default_response_platforms,
    display_name: display_name,
    events: events,
    input_context_names: input_context_names,
    is_fallback: is_fallback,
    ml_disabled: ml_disabled,
    parent_followup_intent_name: parent_followup_intent_name,
    priority: priority,
    project: project,
    reset_contexts: reset_contexts,
    timeouts: timeouts,
    webhook_state: webhook_state,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.dialogflow_intent.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAction':: d.fn(help='`google.string.withAction` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the action field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `action` field.\n', args=[]),
  withAction(resourceLabel, value): {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          action: value,
        },
      },
    },
  },
  '#withDefaultResponsePlatforms':: d.fn(help='`google.list.withDefaultResponsePlatforms` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the default_response_platforms field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `default_response_platforms` field.\n', args=[]),
  withDefaultResponsePlatforms(resourceLabel, value): {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          default_response_platforms: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEvents':: d.fn(help='`google.list.withEvents` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the events field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `events` field.\n', args=[]),
  withEvents(resourceLabel, value): {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          events: value,
        },
      },
    },
  },
  '#withInputContextNames':: d.fn(help='`google.list.withInputContextNames` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the input_context_names field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `input_context_names` field.\n', args=[]),
  withInputContextNames(resourceLabel, value): {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          input_context_names: value,
        },
      },
    },
  },
  '#withIsFallback':: d.fn(help='`google.bool.withIsFallback` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the is_fallback field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `is_fallback` field.\n', args=[]),
  withIsFallback(resourceLabel, value): {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          is_fallback: value,
        },
      },
    },
  },
  '#withMlDisabled':: d.fn(help='`google.bool.withMlDisabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the ml_disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `ml_disabled` field.\n', args=[]),
  withMlDisabled(resourceLabel, value): {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          ml_disabled: value,
        },
      },
    },
  },
  '#withParentFollowupIntentName':: d.fn(help='`google.string.withParentFollowupIntentName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent_followup_intent_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent_followup_intent_name` field.\n', args=[]),
  withParentFollowupIntentName(resourceLabel, value): {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          parent_followup_intent_name: value,
        },
      },
    },
  },
  '#withPriority':: d.fn(help='`google.number.withPriority` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the priority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `priority` field.\n', args=[]),
  withPriority(resourceLabel, value): {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withResetContexts':: d.fn(help='`google.bool.withResetContexts` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the reset_contexts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `reset_contexts` field.\n', args=[]),
  withResetContexts(resourceLabel, value): {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          reset_contexts: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withWebhookState':: d.fn(help='`google.string.withWebhookState` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the webhook_state field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `webhook_state` field.\n', args=[]),
  withWebhookState(resourceLabel, value): {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          webhook_state: value,
        },
      },
    },
  },
}
