local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dialogflow_cx_intent', url='', help='`dialogflow_cx_intent` represents the `google_dialogflow_cx_intent` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.dialogflow_cx_intent.new` injects a new `google_dialogflow_cx_intent` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dialogflow_cx_intent.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dialogflow_cx_intent` using the reference:\n\n    $._ref.google_dialogflow_cx_intent.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dialogflow_cx_intent.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the intent, unique within the agent.\n  - `is_fallback` (`bool`): Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation.\nAdding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event. When `null`, the `is_fallback` field will be omitted from the resulting object.\n  - `labels` (`obj`): The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols \u0026#39;-\u0026#39; and \u0026#39;_\u0026#39;. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes.\nPrefix \u0026#34;sys-\u0026#34; is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. \u0026#34;sys-head\u0026#34; means the intent is a head intent. \u0026#34;sys.contextual\u0026#34; means the intent is a contextual intent.\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs. Example: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `language_code` (`string`): The language of the following fields in intent:\nIntent.training_phrases.parts.text\nIf not specified, the agent\u0026#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.\n  - `parent` (`string`): The agent to create an intent for.\nFormat: projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/agents/\u0026lt;Agent ID\u0026gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `priority` (`number`): The priority of this intent. Higher numbers represent higher priorities.\nIf the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the Normal priority in the console.\nIf the supplied value is negative, the intent is ignored in runtime detect intent requests. When `null`, the `priority` field will be omitted from the resulting object.\n  - `parameters` (`list[obj]`): The collection of parameters associated with the intent. When `null`, the `parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_intent.parameters.new](#fn-parametersnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_intent.timeouts.new](#fn-timeoutsnew) constructor.\n  - `training_phrases` (`list[obj]`): The collection of training phrases the agent is trained on to identify the intent. When `null`, the `training_phrases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_intent.training_phrases.new](#fn-training_phrasesnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    description=null,
    is_fallback=null,
    labels=null,
    language_code=null,
    parameters=null,
    parent=null,
    priority=null,
    timeouts=null,
    training_phrases=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_intent',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      is_fallback=is_fallback,
      labels=labels,
      language_code=language_code,
      parameters=parameters,
      parent=parent,
      priority=priority,
      timeouts=timeouts,
      training_phrases=training_phrases
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dialogflow_cx_intent.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_intent`\nTerraform resource.\n\nUnlike [google.dialogflow_cx_intent.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the intent, unique within the agent.\n  - `is_fallback` (`bool`): Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation.\nAdding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event. When `null`, the `is_fallback` field will be omitted from the resulting object.\n  - `labels` (`obj`): The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols &#39;-&#39; and &#39;_&#39;. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes.\nPrefix &#34;sys-&#34; is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. &#34;sys-head&#34; means the intent is a head intent. &#34;sys.contextual&#34; means the intent is a contextual intent.\nAn object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `language_code` (`string`): The language of the following fields in intent:\nIntent.training_phrases.parts.text\nIf not specified, the agent&#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.\n  - `parent` (`string`): The agent to create an intent for.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `priority` (`number`): The priority of this intent. Higher numbers represent higher priorities.\nIf the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the Normal priority in the console.\nIf the supplied value is negative, the intent is ignored in runtime detect intent requests. When `null`, the `priority` field will be omitted from the resulting object.\n  - `parameters` (`list[obj]`): The collection of parameters associated with the intent. When `null`, the `parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_intent.parameters.new](#fn-parametersnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_intent.timeouts.new](#fn-timeoutsnew) constructor.\n  - `training_phrases` (`list[obj]`): The collection of training phrases the agent is trained on to identify the intent. When `null`, the `training_phrases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_intent.training_phrases.new](#fn-training_phrasesnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_intent` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    description=null,
    is_fallback=null,
    labels=null,
    language_code=null,
    parameters=null,
    parent=null,
    priority=null,
    timeouts=null,
    training_phrases=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    is_fallback: is_fallback,
    labels: labels,
    language_code: language_code,
    parameters: parameters,
    parent: parent,
    priority: priority,
    timeouts: timeouts,
    training_phrases: training_phrases,
  }),
  parameters:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_intent.parameters.new` constructs a new object with attributes and blocks configured for the `parameters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `entity_type` (`string`): The entity type of the parameter.\nFormat: projects/-/locations/-/agents/-/entityTypes/&lt;System Entity Type ID&gt; for system entity types (for example, projects/-/locations/-/agents/-/entityTypes/sys.date), or projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/entityTypes/&lt;Entity Type ID&gt; for developer entity types.\n  - `is_list` (`bool`): Indicates whether the parameter represents a list of values. When `null`, the `is_list` field will be omitted from the resulting object.\n  - `redact` (`bool`): Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging.\nNote: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled. When `null`, the `redact` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `parameters` sub block.\n', args=[]),
    new(
      entity_type,
      is_list=null,
      redact=null
    ):: std.prune(a={
      entity_type: entity_type,
      is_list: is_list,
      redact: redact,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_intent.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  training_phrases:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_intent.training_phrases.new` constructs a new object with attributes and blocks configured for the `training_phrases`\nTerraform sub block.\n\n\n\n**Args**:\n  - `repeat_count` (`number`): Indicates how many times this example was added to the intent. When `null`, the `repeat_count` field will be omitted from the resulting object.\n  - `parts` (`list[obj]`): The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase.\nNote: The API does not automatically annotate training phrases like the Dialogflow Console does.\nNote: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated.\nIf the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set.\nIf you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways:\nPart.text is set to a part of the phrase that has no parameters.\nPart.text is set to a part of the phrase that you want to annotate, and the parameterId field is set. When `null`, the `parts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_intent.training_phrases.parts.new](#fn-training_phrasespartsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `training_phrases` sub block.\n', args=[]),
    new(
      parts=null,
      repeat_count=null
    ):: std.prune(a={
      parts: parts,
      repeat_count: repeat_count,
    }),
    parts:: {
      '#new':: d.fn(help='\n`google.dialogflow_cx_intent.training_phrases.parts.new` constructs a new object with attributes and blocks configured for the `parts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `parameter_id` (`string`): The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase. When `null`, the `parameter_id` field will be omitted from the resulting object.\n  - `text` (`string`): The text for this part.\n\n**Returns**:\n  - An attribute object that represents the `parts` sub block.\n', args=[]),
      new(
        text,
        parameter_id=null
      ):: std.prune(a={
        parameter_id: parameter_id,
        text: text,
      }),
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withIsFallback':: d.fn(help='`google.bool.withIsFallback` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the is_fallback field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `is_fallback` field.\n', args=[]),
  withIsFallback(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          is_fallback: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLanguageCode':: d.fn(help='`google.string.withLanguageCode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the language_code field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `language_code` field.\n', args=[]),
  withLanguageCode(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          language_code: value,
        },
      },
    },
  },
  '#withParameters':: d.fn(help='`google.list[obj].withParameters` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the parameters field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withParametersMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `parameters` field.\n', args=[]),
  withParameters(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          parameters: value,
        },
      },
    },
  },
  '#withParametersMixin':: d.fn(help='`google.list[obj].withParametersMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the parameters field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withParameters](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `parameters` field.\n', args=[]),
  withParametersMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          parameters+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withPriority':: d.fn(help='`google.number.withPriority` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the priority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `priority` field.\n', args=[]),
  withPriority(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTrainingPhrases':: d.fn(help='`google.list[obj].withTrainingPhrases` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the training_phrases field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTrainingPhrasesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `training_phrases` field.\n', args=[]),
  withTrainingPhrases(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          training_phrases: value,
        },
      },
    },
  },
  '#withTrainingPhrasesMixin':: d.fn(help='`google.list[obj].withTrainingPhrasesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the training_phrases field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTrainingPhrases](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `training_phrases` field.\n', args=[]),
  withTrainingPhrasesMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          training_phrases+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
