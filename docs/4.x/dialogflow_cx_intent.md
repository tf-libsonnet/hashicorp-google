---
permalink: /dialogflow_cx_intent/
---

# dialogflow_cx_intent

`dialogflow_cx_intent` represents the `google_dialogflow_cx_intent` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withIsDefaultNegativeIntent()`](#fn-withisdefaultnegativeintent)
* [`fn withIsDefaultWelcomeIntent()`](#fn-withisdefaultwelcomeintent)
* [`fn withIsFallback()`](#fn-withisfallback)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLanguageCode()`](#fn-withlanguagecode)
* [`fn withParameters()`](#fn-withparameters)
* [`fn withParametersMixin()`](#fn-withparametersmixin)
* [`fn withParent()`](#fn-withparent)
* [`fn withPriority()`](#fn-withpriority)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTrainingPhrases()`](#fn-withtrainingphrases)
* [`fn withTrainingPhrasesMixin()`](#fn-withtrainingphrasesmixin)
* [`obj parameters`](#obj-parameters)
  * [`fn new()`](#fn-parametersnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj training_phrases`](#obj-training_phrases)
  * [`fn new()`](#fn-training_phrasesnew)
  * [`obj training_phrases.parts`](#obj-training_phrasesparts)
    * [`fn new()`](#fn-training_phrasespartsnew)

## Fields

### fn new

```ts
new()
```


`google.dialogflow_cx_intent.new` injects a new `google_dialogflow_cx_intent` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dialogflow_cx_intent.new('some_id')

You can get the reference to the `id` field of the created `google.dialogflow_cx_intent` using the reference:

    $._ref.google_dialogflow_cx_intent.some_id.get('id')

This is the same as directly entering `"${ google_dialogflow_cx_intent.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The human-readable name of the intent, unique within the agent.
  - `is_default_negative_intent` (`bool`): Marks this as the [Default Negative Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#negative) for an agent. When you create an agent, a Default Negative Intent is created automatically.
The Default Negative Intent cannot be deleted; deleting the &#39;google_dialogflow_cx_intent&#39; resource does nothing to the underlying GCP resources.

~&gt; Avoid having multiple &#39;google_dialogflow_cx_intent&#39; resources linked to the same agent with &#39;is_default_negative_intent = true&#39; because they will compete to control a single Default Negative Intent resource in GCP. When `null`, the `is_default_negative_intent` field will be omitted from the resulting object.
  - `is_default_welcome_intent` (`bool`): Marks this as the [Default Welcome Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#welcome) for an agent. When you create an agent, a Default Welcome Intent is created automatically.
The Default Welcome Intent cannot be deleted; deleting the &#39;google_dialogflow_cx_intent&#39; resource does nothing to the underlying GCP resources.

~&gt; Avoid having multiple &#39;google_dialogflow_cx_intent&#39; resources linked to the same agent with &#39;is_default_welcome_intent = true&#39; because they will compete to control a single Default Welcome Intent resource in GCP. When `null`, the `is_default_welcome_intent` field will be omitted from the resulting object.
  - `is_fallback` (`bool`): Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation.
Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
To manage the fallback intent, set &#39;is_default_negative_intent = true&#39; When `null`, the `is_fallback` field will be omitted from the resulting object.
  - `labels` (`obj`): The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols &#39;-&#39; and &#39;_&#39;. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes.
Prefix &#34;sys-&#34; is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. &#34;sys-head&#34; means the intent is a head intent. &#34;sys.contextual&#34; means the intent is a contextual intent.
An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `language_code` (`string`): The language of the following fields in intent:
Intent.training_phrases.parts.text
If not specified, the agent&#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.
  - `parent` (`string`): The agent to create an intent for.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.
  - `priority` (`number`): The priority of this intent. Higher numbers represent higher priorities.
If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the Normal priority in the console.
If the supplied value is negative, the intent is ignored in runtime detect intent requests. When `null`, the `priority` field will be omitted from the resulting object.
  - `parameters` (`list[obj]`): The collection of parameters associated with the intent. When `null`, the `parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_intent.parameters.new](#fn-parametersnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_intent.timeouts.new](#fn-timeoutsnew) constructor.
  - `training_phrases` (`list[obj]`): The collection of training phrases the agent is trained on to identify the intent. When `null`, the `training_phrases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_intent.training_phrases.new](#fn-training_phrasesnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dialogflow_cx_intent.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_intent`
Terraform resource.

Unlike [google.dialogflow_cx_intent.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The human-readable name of the intent, unique within the agent.
  - `is_default_negative_intent` (`bool`): Marks this as the [Default Negative Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#negative) for an agent. When you create an agent, a Default Negative Intent is created automatically.
The Default Negative Intent cannot be deleted; deleting the &#39;google_dialogflow_cx_intent&#39; resource does nothing to the underlying GCP resources.

~&gt; Avoid having multiple &#39;google_dialogflow_cx_intent&#39; resources linked to the same agent with &#39;is_default_negative_intent = true&#39; because they will compete to control a single Default Negative Intent resource in GCP. When `null`, the `is_default_negative_intent` field will be omitted from the resulting object.
  - `is_default_welcome_intent` (`bool`): Marks this as the [Default Welcome Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#welcome) for an agent. When you create an agent, a Default Welcome Intent is created automatically.
The Default Welcome Intent cannot be deleted; deleting the &#39;google_dialogflow_cx_intent&#39; resource does nothing to the underlying GCP resources.

~&gt; Avoid having multiple &#39;google_dialogflow_cx_intent&#39; resources linked to the same agent with &#39;is_default_welcome_intent = true&#39; because they will compete to control a single Default Welcome Intent resource in GCP. When `null`, the `is_default_welcome_intent` field will be omitted from the resulting object.
  - `is_fallback` (`bool`): Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation.
Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
To manage the fallback intent, set &#39;is_default_negative_intent = true&#39; When `null`, the `is_fallback` field will be omitted from the resulting object.
  - `labels` (`obj`): The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols &#39;-&#39; and &#39;_&#39;. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes.
Prefix &#34;sys-&#34; is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. &#34;sys-head&#34; means the intent is a head intent. &#34;sys.contextual&#34; means the intent is a contextual intent.
An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `language_code` (`string`): The language of the following fields in intent:
Intent.training_phrases.parts.text
If not specified, the agent&#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.
  - `parent` (`string`): The agent to create an intent for.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.
  - `priority` (`number`): The priority of this intent. Higher numbers represent higher priorities.
If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the Normal priority in the console.
If the supplied value is negative, the intent is ignored in runtime detect intent requests. When `null`, the `priority` field will be omitted from the resulting object.
  - `parameters` (`list[obj]`): The collection of parameters associated with the intent. When `null`, the `parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_intent.parameters.new](#fn-parametersnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_intent.timeouts.new](#fn-timeoutsnew) constructor.
  - `training_phrases` (`list[obj]`): The collection of training phrases the agent is trained on to identify the intent. When `null`, the `training_phrases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_intent.training_phrases.new](#fn-training_phrasesnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_intent` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withIsDefaultNegativeIntent

```ts
withIsDefaultNegativeIntent()
```

`google.bool.withIsDefaultNegativeIntent` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the is_default_negative_intent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `is_default_negative_intent` field.


### fn withIsDefaultWelcomeIntent

```ts
withIsDefaultWelcomeIntent()
```

`google.bool.withIsDefaultWelcomeIntent` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the is_default_welcome_intent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `is_default_welcome_intent` field.


### fn withIsFallback

```ts
withIsFallback()
```

`google.bool.withIsFallback` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the is_fallback field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `is_fallback` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLanguageCode

```ts
withLanguageCode()
```

`google.string.withLanguageCode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the language_code field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `language_code` field.


### fn withParameters

```ts
withParameters()
```

`google.list[obj].withParameters` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the parameters field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withParametersMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `parameters` field.


### fn withParametersMixin

```ts
withParametersMixin()
```

`google.list[obj].withParametersMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the parameters field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withParameters](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `parameters` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withPriority

```ts
withPriority()
```

`google.number.withPriority` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the priority field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `priority` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTrainingPhrases

```ts
withTrainingPhrases()
```

`google.list[obj].withTrainingPhrases` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the training_phrases field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTrainingPhrasesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `training_phrases` field.


### fn withTrainingPhrasesMixin

```ts
withTrainingPhrasesMixin()
```

`google.list[obj].withTrainingPhrasesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the training_phrases field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTrainingPhrases](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `training_phrases` field.


## obj parameters



### fn parameters.new

```ts
new()
```


`google.dialogflow_cx_intent.parameters.new` constructs a new object with attributes and blocks configured for the `parameters`
Terraform sub block.



**Args**:
  - `entity_type` (`string`): The entity type of the parameter.
Format: projects/-/locations/-/agents/-/entityTypes/&lt;System Entity Type ID&gt; for system entity types (for example, projects/-/locations/-/agents/-/entityTypes/sys.date), or projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/entityTypes/&lt;Entity Type ID&gt; for developer entity types.
  - `is_list` (`bool`): Indicates whether the parameter represents a list of values. When `null`, the `is_list` field will be omitted from the resulting object.
  - `redact` (`bool`): Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging.
Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled. When `null`, the `redact` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `parameters` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dialogflow_cx_intent.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj training_phrases



### fn training_phrases.new

```ts
new()
```


`google.dialogflow_cx_intent.training_phrases.new` constructs a new object with attributes and blocks configured for the `training_phrases`
Terraform sub block.



**Args**:
  - `repeat_count` (`number`): Indicates how many times this example was added to the intent. When `null`, the `repeat_count` field will be omitted from the resulting object.
  - `parts` (`list[obj]`): The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase.
Note: The API does not automatically annotate training phrases like the Dialogflow Console does.
Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated.
If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set.
If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways:
Part.text is set to a part of the phrase that has no parameters.
Part.text is set to a part of the phrase that you want to annotate, and the parameterId field is set. When `null`, the `parts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_intent.training_phrases.parts.new](#fn-training_phrasespartsnew) constructor.

**Returns**:
  - An attribute object that represents the `training_phrases` sub block.


## obj training_phrases.parts



### fn training_phrases.parts.new

```ts
new()
```


`google.dialogflow_cx_intent.training_phrases.parts.new` constructs a new object with attributes and blocks configured for the `parts`
Terraform sub block.



**Args**:
  - `parameter_id` (`string`): The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase. When `null`, the `parameter_id` field will be omitted from the resulting object.
  - `text` (`string`): The text for this part.

**Returns**:
  - An attribute object that represents the `parts` sub block.
