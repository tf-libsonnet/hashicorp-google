---
permalink: /data_loss_prevention_inspect_template/
---

# data_loss_prevention_inspect_template

`data_loss_prevention_inspect_template` represents the `google_data_loss_prevention_inspect_template` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withInspectConfig()`](#fn-withinspectconfig)
* [`fn withInspectConfigMixin()`](#fn-withinspectconfigmixin)
* [`fn withParent()`](#fn-withparent)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj inspect_config`](#obj-inspect_config)
  * [`fn new()`](#fn-inspect_confignew)
  * [`obj inspect_config.custom_info_types`](#obj-inspect_configcustom_info_types)
    * [`fn new()`](#fn-inspect_configcustom_info_typesnew)
    * [`obj inspect_config.custom_info_types.dictionary`](#obj-inspect_configcustom_info_typesdictionary)
      * [`fn new()`](#fn-inspect_configcustom_info_typesdictionarynew)
      * [`obj inspect_config.custom_info_types.dictionary.cloud_storage_path`](#obj-inspect_configcustom_info_typesdictionarycloud_storage_path)
        * [`fn new()`](#fn-inspect_configcustom_info_typesdictionarycloud_storage_pathnew)
      * [`obj inspect_config.custom_info_types.dictionary.word_list`](#obj-inspect_configcustom_info_typesdictionaryword_list)
        * [`fn new()`](#fn-inspect_configcustom_info_typesdictionaryword_listnew)
    * [`obj inspect_config.custom_info_types.info_type`](#obj-inspect_configcustom_info_typesinfo_type)
      * [`fn new()`](#fn-inspect_configcustom_info_typesinfo_typenew)
    * [`obj inspect_config.custom_info_types.regex`](#obj-inspect_configcustom_info_typesregex)
      * [`fn new()`](#fn-inspect_configcustom_info_typesregexnew)
    * [`obj inspect_config.custom_info_types.stored_type`](#obj-inspect_configcustom_info_typesstored_type)
      * [`fn new()`](#fn-inspect_configcustom_info_typesstored_typenew)
  * [`obj inspect_config.info_types`](#obj-inspect_configinfo_types)
    * [`fn new()`](#fn-inspect_configinfo_typesnew)
  * [`obj inspect_config.limits`](#obj-inspect_configlimits)
    * [`fn new()`](#fn-inspect_configlimitsnew)
    * [`obj inspect_config.limits.max_findings_per_info_type`](#obj-inspect_configlimitsmax_findings_per_info_type)
      * [`fn new()`](#fn-inspect_configlimitsmax_findings_per_info_typenew)
      * [`obj inspect_config.limits.max_findings_per_info_type.info_type`](#obj-inspect_configlimitsmax_findings_per_info_typeinfo_type)
        * [`fn new()`](#fn-inspect_configlimitsmax_findings_per_info_typeinfo_typenew)
  * [`obj inspect_config.rule_set`](#obj-inspect_configrule_set)
    * [`fn new()`](#fn-inspect_configrule_setnew)
    * [`obj inspect_config.rule_set.info_types`](#obj-inspect_configrule_setinfo_types)
      * [`fn new()`](#fn-inspect_configrule_setinfo_typesnew)
    * [`obj inspect_config.rule_set.rules`](#obj-inspect_configrule_setrules)
      * [`fn new()`](#fn-inspect_configrule_setrulesnew)
      * [`obj inspect_config.rule_set.rules.exclusion_rule`](#obj-inspect_configrule_setrulesexclusion_rule)
        * [`fn new()`](#fn-inspect_configrule_setrulesexclusion_rulenew)
        * [`obj inspect_config.rule_set.rules.exclusion_rule.dictionary`](#obj-inspect_configrule_setrulesexclusion_ruledictionary)
          * [`fn new()`](#fn-inspect_configrule_setrulesexclusion_ruledictionarynew)
          * [`obj inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path`](#obj-inspect_configrule_setrulesexclusion_ruledictionarycloud_storage_path)
            * [`fn new()`](#fn-inspect_configrule_setrulesexclusion_ruledictionarycloud_storage_pathnew)
          * [`obj inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list`](#obj-inspect_configrule_setrulesexclusion_ruledictionaryword_list)
            * [`fn new()`](#fn-inspect_configrule_setrulesexclusion_ruledictionaryword_listnew)
        * [`obj inspect_config.rule_set.rules.exclusion_rule.exclude_info_types`](#obj-inspect_configrule_setrulesexclusion_ruleexclude_info_types)
          * [`fn new()`](#fn-inspect_configrule_setrulesexclusion_ruleexclude_info_typesnew)
          * [`obj inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types`](#obj-inspect_configrule_setrulesexclusion_ruleexclude_info_typesinfo_types)
            * [`fn new()`](#fn-inspect_configrule_setrulesexclusion_ruleexclude_info_typesinfo_typesnew)
        * [`obj inspect_config.rule_set.rules.exclusion_rule.regex`](#obj-inspect_configrule_setrulesexclusion_ruleregex)
          * [`fn new()`](#fn-inspect_configrule_setrulesexclusion_ruleregexnew)
      * [`obj inspect_config.rule_set.rules.hotword_rule`](#obj-inspect_configrule_setruleshotword_rule)
        * [`fn new()`](#fn-inspect_configrule_setruleshotword_rulenew)
        * [`obj inspect_config.rule_set.rules.hotword_rule.hotword_regex`](#obj-inspect_configrule_setruleshotword_rulehotword_regex)
          * [`fn new()`](#fn-inspect_configrule_setruleshotword_rulehotword_regexnew)
        * [`obj inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment`](#obj-inspect_configrule_setruleshotword_rulelikelihood_adjustment)
          * [`fn new()`](#fn-inspect_configrule_setruleshotword_rulelikelihood_adjustmentnew)
        * [`obj inspect_config.rule_set.rules.hotword_rule.proximity`](#obj-inspect_configrule_setruleshotword_ruleproximity)
          * [`fn new()`](#fn-inspect_configrule_setruleshotword_ruleproximitynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.data_loss_prevention_inspect_template.new` injects a new `google_data_loss_prevention_inspect_template` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data_loss_prevention_inspect_template.new('some_id')

You can get the reference to the `id` field of the created `google.data_loss_prevention_inspect_template` using the reference:

    $._ref.google_data_loss_prevention_inspect_template.some_id.get('id')

This is the same as directly entering `"${ google_data_loss_prevention_inspect_template.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A description of the inspect template. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User set display name of the inspect template. When `null`, the `display_name` field will be omitted from the resulting object.
  - `parent` (`string`): The parent of the inspect template in any of the following formats:

* &#39;projects/{{project}}&#39;
* &#39;projects/{{project}}/locations/{{location}}&#39;
* &#39;organizations/{{organization_id}}&#39;
* &#39;organizations/{{organization_id}}/locations/{{location}}&#39;
  - `inspect_config` (`list[obj]`): The core content of the template. When `null`, the `inspect_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.new](#fn-inspect_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data_loss_prevention_inspect_template.newAttrs` constructs a new object with attributes and blocks configured for the `data_loss_prevention_inspect_template`
Terraform resource.

Unlike [google.data_loss_prevention_inspect_template.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A description of the inspect template. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User set display name of the inspect template. When `null`, the `display_name` field will be omitted from the resulting object.
  - `parent` (`string`): The parent of the inspect template in any of the following formats:

* &#39;projects/{{project}}&#39;
* &#39;projects/{{project}}/locations/{{location}}&#39;
* &#39;organizations/{{organization_id}}&#39;
* &#39;organizations/{{organization_id}}/locations/{{location}}&#39;
  - `inspect_config` (`list[obj]`): The core content of the template. When `null`, the `inspect_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.new](#fn-inspect_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_loss_prevention_inspect_template` resource into the root Terraform configuration.


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


### fn withInspectConfig

```ts
withInspectConfig()
```

`google.list[obj].withInspectConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the inspect_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withInspectConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `inspect_config` field.


### fn withInspectConfigMixin

```ts
withInspectConfigMixin()
```

`google.list[obj].withInspectConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the inspect_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withInspectConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `inspect_config` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


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


## obj inspect_config



### fn inspect_config.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.new` constructs a new object with attributes and blocks configured for the `inspect_config`
Terraform sub block.



**Args**:
  - `content_options` (`list`): List of options defining data content to scan. If empty, text, images, and other content will be included. Possible values: [&#34;CONTENT_TEXT&#34;, &#34;CONTENT_IMAGE&#34;] When `null`, the `content_options` field will be omitted from the resulting object.
  - `exclude_info_types` (`bool`): When true, excludes type information of the findings. When `null`, the `exclude_info_types` field will be omitted from the resulting object.
  - `include_quote` (`bool`): When true, a contextual quote from the data that triggered a finding is included in the response. When `null`, the `include_quote` field will be omitted from the resulting object.
  - `min_likelihood` (`string`): Only returns findings equal or above this threshold. See https://cloud.google.com/dlp/docs/likelihood for more info Default value: &#34;POSSIBLE&#34; Possible values: [&#34;VERY_UNLIKELY&#34;, &#34;UNLIKELY&#34;, &#34;POSSIBLE&#34;, &#34;LIKELY&#34;, &#34;VERY_LIKELY&#34;] When `null`, the `min_likelihood` field will be omitted from the resulting object.
  - `custom_info_types` (`list[obj]`): Custom info types to be used. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more. When `null`, the `custom_info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.new](#fn-data_loss_prevention_inspect_templatecustom_info_typesnew) constructor.
  - `info_types` (`list[obj]`): Restricts what infoTypes to look for. The values must correspond to InfoType values returned by infoTypes.list
or listed at https://cloud.google.com/dlp/docs/infotypes-reference.

When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose what detectors to run.
By default this may be all types, but may change over time as detectors are updated. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.info_types.new](#fn-data_loss_prevention_inspect_templateinfo_typesnew) constructor.
  - `limits` (`list[obj]`): Configuration to control the number of findings returned. When `null`, the `limits` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.limits.new](#fn-data_loss_prevention_inspect_templatelimitsnew) constructor.
  - `rule_set` (`list[obj]`): Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end,
other rules are executed in the order they are specified for each info type. When `null`, the `rule_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.new](#fn-data_loss_prevention_inspect_templaterule_setnew) constructor.

**Returns**:
  - An attribute object that represents the `inspect_config` sub block.


## obj inspect_config.custom_info_types



### fn inspect_config.custom_info_types.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.new` constructs a new object with attributes and blocks configured for the `custom_info_types`
Terraform sub block.



**Args**:
  - `exclusion_type` (`string`): If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching. Possible values: [&#34;EXCLUSION_TYPE_EXCLUDE&#34;] When `null`, the `exclusion_type` field will be omitted from the resulting object.
  - `likelihood` (`string`): Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria
specified by the rule. Default value: &#34;VERY_LIKELY&#34; Possible values: [&#34;VERY_UNLIKELY&#34;, &#34;UNLIKELY&#34;, &#34;POSSIBLE&#34;, &#34;LIKELY&#34;, &#34;VERY_LIKELY&#34;] When `null`, the `likelihood` field will be omitted from the resulting object.
  - `dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.dictionary.new](#fn-data_loss_prevention_inspect_templateinspect_configdictionarynew) constructor.
  - `info_type` (`list[obj]`): CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing
infoTypes and that infoType is specified in &#39;info_types&#39; field. Specifying the latter adds findings to the
one detected by the system. If built-in info type is not specified in &#39;info_types&#39; list then the name is
treated as a custom info type. When `null`, the `info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.info_type.new](#fn-data_loss_prevention_inspect_templateinspect_configinfo_typenew) constructor.
  - `regex` (`list[obj]`): Regular expression which defines the rule. When `null`, the `regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.regex.new](#fn-data_loss_prevention_inspect_templateinspect_configregexnew) constructor.
  - `stored_type` (`list[obj]`): A reference to a StoredInfoType to use with scanning. When `null`, the `stored_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.stored_type.new](#fn-data_loss_prevention_inspect_templateinspect_configstored_typenew) constructor.

**Returns**:
  - An attribute object that represents the `custom_info_types` sub block.


## obj inspect_config.custom_info_types.dictionary



### fn inspect_config.custom_info_types.dictionary.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.dictionary.new` constructs a new object with attributes and blocks configured for the `dictionary`
Terraform sub block.



**Args**:
  - `cloud_storage_path` (`list[obj]`): Newline-delimited file of words in Cloud Storage. Only a single file is accepted. When `null`, the `cloud_storage_path` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.dictionary.cloud_storage_path.new](#fn-data_loss_prevention_inspect_templateinspect_configcustom_info_typescloud_storage_pathnew) constructor.
  - `word_list` (`list[obj]`): List of words or phrases to search for. When `null`, the `word_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.dictionary.word_list.new](#fn-data_loss_prevention_inspect_templateinspect_configcustom_info_typesword_listnew) constructor.

**Returns**:
  - An attribute object that represents the `dictionary` sub block.


## obj inspect_config.custom_info_types.dictionary.cloud_storage_path



### fn inspect_config.custom_info_types.dictionary.cloud_storage_path.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.dictionary.cloud_storage_path.new` constructs a new object with attributes and blocks configured for the `cloud_storage_path`
Terraform sub block.



**Args**:
  - `path` (`string`): A url representing a file or path (no wildcards) in Cloud Storage. Example: &#39;gs://[BUCKET_NAME]/dictionary.txt&#39;

**Returns**:
  - An attribute object that represents the `cloud_storage_path` sub block.


## obj inspect_config.custom_info_types.dictionary.word_list



### fn inspect_config.custom_info_types.dictionary.word_list.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.dictionary.word_list.new` constructs a new object with attributes and blocks configured for the `word_list`
Terraform sub block.



**Args**:
  - `words` (`list`): Words or phrases defining the dictionary. The dictionary must contain at least one
phrase and every phrase must contain at least 2 characters that are letters or digits.

**Returns**:
  - An attribute object that represents the `word_list` sub block.


## obj inspect_config.custom_info_types.info_type



### fn inspect_config.custom_info_types.info_type.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.info_type.new` constructs a new object with attributes and blocks configured for the `info_type`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names
listed at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.

**Returns**:
  - An attribute object that represents the `info_type` sub block.


## obj inspect_config.custom_info_types.regex



### fn inspect_config.custom_info_types.regex.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.regex.new` constructs a new object with attributes and blocks configured for the `regex`
Terraform sub block.



**Args**:
  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.
  - `pattern` (`string`): Pattern defining the regular expression.
Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.

**Returns**:
  - An attribute object that represents the `regex` sub block.


## obj inspect_config.custom_info_types.stored_type



### fn inspect_config.custom_info_types.stored_type.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.stored_type.new` constructs a new object with attributes and blocks configured for the `stored_type`
Terraform sub block.



**Args**:
  - `name` (`string`): Resource name of the requested StoredInfoType, for example &#39;organizations/433245324/storedInfoTypes/432452342&#39;
or &#39;projects/project-id/storedInfoTypes/432452342&#39;.

**Returns**:
  - An attribute object that represents the `stored_type` sub block.


## obj inspect_config.info_types



### fn inspect_config.info_types.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.

**Returns**:
  - An attribute object that represents the `info_types` sub block.


## obj inspect_config.limits



### fn inspect_config.limits.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.limits.new` constructs a new object with attributes and blocks configured for the `limits`
Terraform sub block.



**Args**:
  - `max_findings_per_item` (`number`): Max number of findings that will be returned for each item scanned. The maximum returned is 2000.
  - `max_findings_per_request` (`number`): Max number of findings that will be returned per request/job. The maximum returned is 2000.
  - `max_findings_per_info_type` (`list[obj]`): Configuration of findings limit given for specified infoTypes. When `null`, the `max_findings_per_info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.limits.max_findings_per_info_type.new](#fn-data_loss_prevention_inspect_templateinspect_configmax_findings_per_info_typenew) constructor.

**Returns**:
  - An attribute object that represents the `limits` sub block.


## obj inspect_config.limits.max_findings_per_info_type



### fn inspect_config.limits.max_findings_per_info_type.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.limits.max_findings_per_info_type.new` constructs a new object with attributes and blocks configured for the `max_findings_per_info_type`
Terraform sub block.



**Args**:
  - `max_findings` (`number`): Max findings limit for the given infoType.
  - `info_type` (`list[obj]`): Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does
not have an infoType, the DLP API applies the limit against all infoTypes that are found but not
specified in another InfoTypeLimit. When `null`, the `info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.limits.max_findings_per_info_type.info_type.new](#fn-data_loss_prevention_inspect_templateinspect_configlimitsinfo_typenew) constructor.

**Returns**:
  - An attribute object that represents the `max_findings_per_info_type` sub block.


## obj inspect_config.limits.max_findings_per_info_type.info_type



### fn inspect_config.limits.max_findings_per_info_type.info_type.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.limits.max_findings_per_info_type.info_type.new` constructs a new object with attributes and blocks configured for the `info_type`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.

**Returns**:
  - An attribute object that represents the `info_type` sub block.


## obj inspect_config.rule_set



### fn inspect_config.rule_set.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.rule_set.new` constructs a new object with attributes and blocks configured for the `rule_set`
Terraform sub block.



**Args**:
  - `info_types` (`list[obj]`): List of infoTypes this rule set is applied to. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.info_types.new](#fn-data_loss_prevention_inspect_templateinspect_configinfo_typesnew) constructor.
  - `rules` (`list[obj]`): Set of rules to be applied to infoTypes. The rules are applied in order. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.new](#fn-data_loss_prevention_inspect_templateinspect_configrulesnew) constructor.

**Returns**:
  - An attribute object that represents the `rule_set` sub block.


## obj inspect_config.rule_set.info_types



### fn inspect_config.rule_set.info_types.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.rule_set.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.

**Returns**:
  - An attribute object that represents the `info_types` sub block.


## obj inspect_config.rule_set.rules



### fn inspect_config.rule_set.rules.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.new` constructs a new object with attributes and blocks configured for the `rules`
Terraform sub block.



**Args**:
  - `exclusion_rule` (`list[obj]`): The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results. When `null`, the `exclusion_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.new](#fn-data_loss_prevention_inspect_templateinspect_configrule_setexclusion_rulenew) constructor.
  - `hotword_rule` (`list[obj]`): Hotword-based detection rule. When `null`, the `hotword_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.new](#fn-data_loss_prevention_inspect_templateinspect_configrule_sethotword_rulenew) constructor.

**Returns**:
  - An attribute object that represents the `rules` sub block.


## obj inspect_config.rule_set.rules.exclusion_rule



### fn inspect_config.rule_set.rules.exclusion_rule.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.new` constructs a new object with attributes and blocks configured for the `exclusion_rule`
Terraform sub block.



**Args**:
  - `matching_type` (`string`): How the rule is applied. See the documentation for more information: https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#MatchingType Possible values: [&#34;MATCHING_TYPE_FULL_MATCH&#34;, &#34;MATCHING_TYPE_PARTIAL_MATCH&#34;, &#34;MATCHING_TYPE_INVERSE_MATCH&#34;]
  - `dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.dictionary.new](#fn-data_loss_prevention_inspect_templateinspect_configrule_setrulesdictionarynew) constructor.
  - `exclude_info_types` (`list[obj]`): Set of infoTypes for which findings would affect this rule. When `null`, the `exclude_info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.new](#fn-data_loss_prevention_inspect_templateinspect_configrule_setrulesexclude_info_typesnew) constructor.
  - `regex` (`list[obj]`): Regular expression which defines the rule. When `null`, the `regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.regex.new](#fn-data_loss_prevention_inspect_templateinspect_configrule_setrulesregexnew) constructor.

**Returns**:
  - An attribute object that represents the `exclusion_rule` sub block.


## obj inspect_config.rule_set.rules.exclusion_rule.dictionary



### fn inspect_config.rule_set.rules.exclusion_rule.dictionary.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.dictionary.new` constructs a new object with attributes and blocks configured for the `dictionary`
Terraform sub block.



**Args**:
  - `cloud_storage_path` (`list[obj]`): Newline-delimited file of words in Cloud Storage. Only a single file is accepted. When `null`, the `cloud_storage_path` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path.new](#fn-data_loss_prevention_inspect_templateinspect_configrule_setrulesexclusion_rulecloud_storage_pathnew) constructor.
  - `word_list` (`list[obj]`): List of words or phrases to search for. When `null`, the `word_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list.new](#fn-data_loss_prevention_inspect_templateinspect_configrule_setrulesexclusion_ruleword_listnew) constructor.

**Returns**:
  - An attribute object that represents the `dictionary` sub block.


## obj inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path



### fn inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path.new` constructs a new object with attributes and blocks configured for the `cloud_storage_path`
Terraform sub block.



**Args**:
  - `path` (`string`): A url representing a file or path (no wildcards) in Cloud Storage. Example: &#39;gs://[BUCKET_NAME]/dictionary.txt&#39;

**Returns**:
  - An attribute object that represents the `cloud_storage_path` sub block.


## obj inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list



### fn inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list.new` constructs a new object with attributes and blocks configured for the `word_list`
Terraform sub block.



**Args**:
  - `words` (`list`): Words or phrases defining the dictionary. The dictionary must contain at least one
phrase and every phrase must contain at least 2 characters that are letters or digits.

**Returns**:
  - An attribute object that represents the `word_list` sub block.


## obj inspect_config.rule_set.rules.exclusion_rule.exclude_info_types



### fn inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.new` constructs a new object with attributes and blocks configured for the `exclude_info_types`
Terraform sub block.



**Args**:
  - `info_types` (`list[obj]`): If a finding is matched by any of the infoType detectors listed here, the finding will be excluded from the scan results. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.new](#fn-data_loss_prevention_inspect_templateinspect_configrule_setrulesexclusion_ruleinfo_typesnew) constructor.

**Returns**:
  - An attribute object that represents the `exclude_info_types` sub block.


## obj inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types



### fn inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.

**Returns**:
  - An attribute object that represents the `info_types` sub block.


## obj inspect_config.rule_set.rules.exclusion_rule.regex



### fn inspect_config.rule_set.rules.exclusion_rule.regex.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.regex.new` constructs a new object with attributes and blocks configured for the `regex`
Terraform sub block.



**Args**:
  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.
  - `pattern` (`string`): Pattern defining the regular expression.
Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.

**Returns**:
  - An attribute object that represents the `regex` sub block.


## obj inspect_config.rule_set.rules.hotword_rule



### fn inspect_config.rule_set.rules.hotword_rule.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.new` constructs a new object with attributes and blocks configured for the `hotword_rule`
Terraform sub block.



**Args**:
  - `hotword_regex` (`list[obj]`): Regular expression pattern defining what qualifies as a hotword. When `null`, the `hotword_regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.hotword_regex.new](#fn-data_loss_prevention_inspect_templateinspect_configrule_setruleshotword_regexnew) constructor.
  - `likelihood_adjustment` (`list[obj]`): Likelihood adjustment to apply to all matching findings. When `null`, the `likelihood_adjustment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment.new](#fn-data_loss_prevention_inspect_templateinspect_configrule_setruleslikelihood_adjustmentnew) constructor.
  - `proximity` (`list[obj]`): Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be
used to match substrings of the finding itself. For example, the certainty of a phone number regex
&#39;(\d{3}) \d{3}-\d{4}&#39; could be adjusted upwards if the area code is known to be the local area code of a company
office using the hotword regex &#39;(xxx)&#39;, where &#39;xxx&#39; is the area code in question. When `null`, the `proximity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.proximity.new](#fn-data_loss_prevention_inspect_templateinspect_configrule_setrulesproximitynew) constructor.

**Returns**:
  - An attribute object that represents the `hotword_rule` sub block.


## obj inspect_config.rule_set.rules.hotword_rule.hotword_regex



### fn inspect_config.rule_set.rules.hotword_rule.hotword_regex.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.hotword_regex.new` constructs a new object with attributes and blocks configured for the `hotword_regex`
Terraform sub block.



**Args**:
  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified,
the entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.
  - `pattern` (`string`): Pattern defining the regular expression. Its syntax
(https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.

**Returns**:
  - An attribute object that represents the `hotword_regex` sub block.


## obj inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment



### fn inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment.new` constructs a new object with attributes and blocks configured for the `likelihood_adjustment`
Terraform sub block.



**Args**:
  - `fixed_likelihood` (`string`): Set the likelihood of a finding to a fixed value. Either this or relative_likelihood can be set. Possible values: [&#34;VERY_UNLIKELY&#34;, &#34;UNLIKELY&#34;, &#34;POSSIBLE&#34;, &#34;LIKELY&#34;, &#34;VERY_LIKELY&#34;] When `null`, the `fixed_likelihood` field will be omitted from the resulting object.
  - `relative_likelihood` (`number`): Increase or decrease the likelihood by the specified number of levels. For example,
if a finding would be POSSIBLE without the detection rule and relativeLikelihood is 1,
then it is upgraded to LIKELY, while a value of -1 would downgrade it to UNLIKELY.
Likelihood may never drop below VERY_UNLIKELY or exceed VERY_LIKELY, so applying an
adjustment of 1 followed by an adjustment of -1 when base likelihood is VERY_LIKELY
will result in a final likelihood of LIKELY. Either this or fixed_likelihood can be set. When `null`, the `relative_likelihood` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `likelihood_adjustment` sub block.


## obj inspect_config.rule_set.rules.hotword_rule.proximity



### fn inspect_config.rule_set.rules.hotword_rule.proximity.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.proximity.new` constructs a new object with attributes and blocks configured for the `proximity`
Terraform sub block.



**Args**:
  - `window_after` (`number`): Number of characters after the finding to consider. Either this or window_before must be specified When `null`, the `window_after` field will be omitted from the resulting object.
  - `window_before` (`number`): Number of characters before the finding to consider. Either this or window_after must be specified When `null`, the `window_before` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `proximity` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.data_loss_prevention_inspect_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
