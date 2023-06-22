---
permalink: /data_loss_prevention_job_trigger/
---

# data_loss_prevention_job_trigger

`data_loss_prevention_job_trigger` represents the `google_data_loss_prevention_job_trigger` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withInspectJob()`](#fn-withinspectjob)
* [`fn withInspectJobMixin()`](#fn-withinspectjobmixin)
* [`fn withParent()`](#fn-withparent)
* [`fn withStatus()`](#fn-withstatus)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTriggerId()`](#fn-withtriggerid)
* [`fn withTriggers()`](#fn-withtriggers)
* [`fn withTriggersMixin()`](#fn-withtriggersmixin)
* [`obj inspect_job`](#obj-inspect_job)
  * [`fn new()`](#fn-inspect_jobnew)
  * [`obj inspect_job.actions`](#obj-inspect_jobactions)
    * [`fn new()`](#fn-inspect_jobactionsnew)
    * [`obj inspect_job.actions.deidentify`](#obj-inspect_jobactionsdeidentify)
      * [`fn new()`](#fn-inspect_jobactionsdeidentifynew)
      * [`obj inspect_job.actions.deidentify.transformation_config`](#obj-inspect_jobactionsdeidentifytransformation_config)
        * [`fn new()`](#fn-inspect_jobactionsdeidentifytransformation_confignew)
      * [`obj inspect_job.actions.deidentify.transformation_details_storage_config`](#obj-inspect_jobactionsdeidentifytransformation_details_storage_config)
        * [`fn new()`](#fn-inspect_jobactionsdeidentifytransformation_details_storage_confignew)
        * [`obj inspect_job.actions.deidentify.transformation_details_storage_config.table`](#obj-inspect_jobactionsdeidentifytransformation_details_storage_configtable)
          * [`fn new()`](#fn-inspect_jobactionsdeidentifytransformation_details_storage_configtablenew)
    * [`obj inspect_job.actions.job_notification_emails`](#obj-inspect_jobactionsjob_notification_emails)
      * [`fn new()`](#fn-inspect_jobactionsjob_notification_emailsnew)
    * [`obj inspect_job.actions.pub_sub`](#obj-inspect_jobactionspub_sub)
      * [`fn new()`](#fn-inspect_jobactionspub_subnew)
    * [`obj inspect_job.actions.publish_findings_to_cloud_data_catalog`](#obj-inspect_jobactionspublish_findings_to_cloud_data_catalog)
      * [`fn new()`](#fn-inspect_jobactionspublish_findings_to_cloud_data_catalognew)
    * [`obj inspect_job.actions.publish_summary_to_cscc`](#obj-inspect_jobactionspublish_summary_to_cscc)
      * [`fn new()`](#fn-inspect_jobactionspublish_summary_to_csccnew)
    * [`obj inspect_job.actions.publish_to_stackdriver`](#obj-inspect_jobactionspublish_to_stackdriver)
      * [`fn new()`](#fn-inspect_jobactionspublish_to_stackdrivernew)
    * [`obj inspect_job.actions.save_findings`](#obj-inspect_jobactionssave_findings)
      * [`fn new()`](#fn-inspect_jobactionssave_findingsnew)
      * [`obj inspect_job.actions.save_findings.output_config`](#obj-inspect_jobactionssave_findingsoutput_config)
        * [`fn new()`](#fn-inspect_jobactionssave_findingsoutput_confignew)
        * [`obj inspect_job.actions.save_findings.output_config.table`](#obj-inspect_jobactionssave_findingsoutput_configtable)
          * [`fn new()`](#fn-inspect_jobactionssave_findingsoutput_configtablenew)
  * [`obj inspect_job.inspect_config`](#obj-inspect_jobinspect_config)
    * [`fn new()`](#fn-inspect_jobinspect_confignew)
    * [`obj inspect_job.inspect_config.custom_info_types`](#obj-inspect_jobinspect_configcustom_info_types)
      * [`fn new()`](#fn-inspect_jobinspect_configcustom_info_typesnew)
      * [`obj inspect_job.inspect_config.custom_info_types.dictionary`](#obj-inspect_jobinspect_configcustom_info_typesdictionary)
        * [`fn new()`](#fn-inspect_jobinspect_configcustom_info_typesdictionarynew)
        * [`obj inspect_job.inspect_config.custom_info_types.dictionary.cloud_storage_path`](#obj-inspect_jobinspect_configcustom_info_typesdictionarycloud_storage_path)
          * [`fn new()`](#fn-inspect_jobinspect_configcustom_info_typesdictionarycloud_storage_pathnew)
        * [`obj inspect_job.inspect_config.custom_info_types.dictionary.word_list`](#obj-inspect_jobinspect_configcustom_info_typesdictionaryword_list)
          * [`fn new()`](#fn-inspect_jobinspect_configcustom_info_typesdictionaryword_listnew)
      * [`obj inspect_job.inspect_config.custom_info_types.info_type`](#obj-inspect_jobinspect_configcustom_info_typesinfo_type)
        * [`fn new()`](#fn-inspect_jobinspect_configcustom_info_typesinfo_typenew)
        * [`obj inspect_job.inspect_config.custom_info_types.info_type.sensitivity_score`](#obj-inspect_jobinspect_configcustom_info_typesinfo_typesensitivity_score)
          * [`fn new()`](#fn-inspect_jobinspect_configcustom_info_typesinfo_typesensitivity_scorenew)
      * [`obj inspect_job.inspect_config.custom_info_types.regex`](#obj-inspect_jobinspect_configcustom_info_typesregex)
        * [`fn new()`](#fn-inspect_jobinspect_configcustom_info_typesregexnew)
      * [`obj inspect_job.inspect_config.custom_info_types.sensitivity_score`](#obj-inspect_jobinspect_configcustom_info_typessensitivity_score)
        * [`fn new()`](#fn-inspect_jobinspect_configcustom_info_typessensitivity_scorenew)
      * [`obj inspect_job.inspect_config.custom_info_types.stored_type`](#obj-inspect_jobinspect_configcustom_info_typesstored_type)
        * [`fn new()`](#fn-inspect_jobinspect_configcustom_info_typesstored_typenew)
      * [`obj inspect_job.inspect_config.custom_info_types.surrogate_type`](#obj-inspect_jobinspect_configcustom_info_typessurrogate_type)
        * [`fn new()`](#fn-inspect_jobinspect_configcustom_info_typessurrogate_typenew)
    * [`obj inspect_job.inspect_config.info_types`](#obj-inspect_jobinspect_configinfo_types)
      * [`fn new()`](#fn-inspect_jobinspect_configinfo_typesnew)
      * [`obj inspect_job.inspect_config.info_types.sensitivity_score`](#obj-inspect_jobinspect_configinfo_typessensitivity_score)
        * [`fn new()`](#fn-inspect_jobinspect_configinfo_typessensitivity_scorenew)
    * [`obj inspect_job.inspect_config.limits`](#obj-inspect_jobinspect_configlimits)
      * [`fn new()`](#fn-inspect_jobinspect_configlimitsnew)
      * [`obj inspect_job.inspect_config.limits.max_findings_per_info_type`](#obj-inspect_jobinspect_configlimitsmax_findings_per_info_type)
        * [`fn new()`](#fn-inspect_jobinspect_configlimitsmax_findings_per_info_typenew)
        * [`obj inspect_job.inspect_config.limits.max_findings_per_info_type.info_type`](#obj-inspect_jobinspect_configlimitsmax_findings_per_info_typeinfo_type)
          * [`fn new()`](#fn-inspect_jobinspect_configlimitsmax_findings_per_info_typeinfo_typenew)
          * [`obj inspect_job.inspect_config.limits.max_findings_per_info_type.info_type.sensitivity_score`](#obj-inspect_jobinspect_configlimitsmax_findings_per_info_typeinfo_typesensitivity_score)
            * [`fn new()`](#fn-inspect_jobinspect_configlimitsmax_findings_per_info_typeinfo_typesensitivity_scorenew)
    * [`obj inspect_job.inspect_config.rule_set`](#obj-inspect_jobinspect_configrule_set)
      * [`fn new()`](#fn-inspect_jobinspect_configrule_setnew)
      * [`obj inspect_job.inspect_config.rule_set.info_types`](#obj-inspect_jobinspect_configrule_setinfo_types)
        * [`fn new()`](#fn-inspect_jobinspect_configrule_setinfo_typesnew)
        * [`obj inspect_job.inspect_config.rule_set.info_types.sensitivity_score`](#obj-inspect_jobinspect_configrule_setinfo_typessensitivity_score)
          * [`fn new()`](#fn-inspect_jobinspect_configrule_setinfo_typessensitivity_scorenew)
      * [`obj inspect_job.inspect_config.rule_set.rules`](#obj-inspect_jobinspect_configrule_setrules)
        * [`fn new()`](#fn-inspect_jobinspect_configrule_setrulesnew)
        * [`obj inspect_job.inspect_config.rule_set.rules.exclusion_rule`](#obj-inspect_jobinspect_configrule_setrulesexclusion_rule)
          * [`fn new()`](#fn-inspect_jobinspect_configrule_setrulesexclusion_rulenew)
          * [`obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary`](#obj-inspect_jobinspect_configrule_setrulesexclusion_ruledictionary)
            * [`fn new()`](#fn-inspect_jobinspect_configrule_setrulesexclusion_ruledictionarynew)
            * [`obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path`](#obj-inspect_jobinspect_configrule_setrulesexclusion_ruledictionarycloud_storage_path)
              * [`fn new()`](#fn-inspect_jobinspect_configrule_setrulesexclusion_ruledictionarycloud_storage_pathnew)
            * [`obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list`](#obj-inspect_jobinspect_configrule_setrulesexclusion_ruledictionaryword_list)
              * [`fn new()`](#fn-inspect_jobinspect_configrule_setrulesexclusion_ruledictionaryword_listnew)
          * [`obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword`](#obj-inspect_jobinspect_configrule_setrulesexclusion_ruleexclude_by_hotword)
            * [`fn new()`](#fn-inspect_jobinspect_configrule_setrulesexclusion_ruleexclude_by_hotwordnew)
            * [`obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.hotword_regex`](#obj-inspect_jobinspect_configrule_setrulesexclusion_ruleexclude_by_hotwordhotword_regex)
              * [`fn new()`](#fn-inspect_jobinspect_configrule_setrulesexclusion_ruleexclude_by_hotwordhotword_regexnew)
            * [`obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.proximity`](#obj-inspect_jobinspect_configrule_setrulesexclusion_ruleexclude_by_hotwordproximity)
              * [`fn new()`](#fn-inspect_jobinspect_configrule_setrulesexclusion_ruleexclude_by_hotwordproximitynew)
          * [`obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types`](#obj-inspect_jobinspect_configrule_setrulesexclusion_ruleexclude_info_types)
            * [`fn new()`](#fn-inspect_jobinspect_configrule_setrulesexclusion_ruleexclude_info_typesnew)
            * [`obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types`](#obj-inspect_jobinspect_configrule_setrulesexclusion_ruleexclude_info_typesinfo_types)
              * [`fn new()`](#fn-inspect_jobinspect_configrule_setrulesexclusion_ruleexclude_info_typesinfo_typesnew)
              * [`obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.sensitivity_score`](#obj-inspect_jobinspect_configrule_setrulesexclusion_ruleexclude_info_typesinfo_typessensitivity_score)
                * [`fn new()`](#fn-inspect_jobinspect_configrule_setrulesexclusion_ruleexclude_info_typesinfo_typessensitivity_scorenew)
          * [`obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.regex`](#obj-inspect_jobinspect_configrule_setrulesexclusion_ruleregex)
            * [`fn new()`](#fn-inspect_jobinspect_configrule_setrulesexclusion_ruleregexnew)
        * [`obj inspect_job.inspect_config.rule_set.rules.hotword_rule`](#obj-inspect_jobinspect_configrule_setruleshotword_rule)
          * [`fn new()`](#fn-inspect_jobinspect_configrule_setruleshotword_rulenew)
          * [`obj inspect_job.inspect_config.rule_set.rules.hotword_rule.hotword_regex`](#obj-inspect_jobinspect_configrule_setruleshotword_rulehotword_regex)
            * [`fn new()`](#fn-inspect_jobinspect_configrule_setruleshotword_rulehotword_regexnew)
          * [`obj inspect_job.inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment`](#obj-inspect_jobinspect_configrule_setruleshotword_rulelikelihood_adjustment)
            * [`fn new()`](#fn-inspect_jobinspect_configrule_setruleshotword_rulelikelihood_adjustmentnew)
          * [`obj inspect_job.inspect_config.rule_set.rules.hotword_rule.proximity`](#obj-inspect_jobinspect_configrule_setruleshotword_ruleproximity)
            * [`fn new()`](#fn-inspect_jobinspect_configrule_setruleshotword_ruleproximitynew)
  * [`obj inspect_job.storage_config`](#obj-inspect_jobstorage_config)
    * [`fn new()`](#fn-inspect_jobstorage_confignew)
    * [`obj inspect_job.storage_config.big_query_options`](#obj-inspect_jobstorage_configbig_query_options)
      * [`fn new()`](#fn-inspect_jobstorage_configbig_query_optionsnew)
      * [`obj inspect_job.storage_config.big_query_options.excluded_fields`](#obj-inspect_jobstorage_configbig_query_optionsexcluded_fields)
        * [`fn new()`](#fn-inspect_jobstorage_configbig_query_optionsexcluded_fieldsnew)
      * [`obj inspect_job.storage_config.big_query_options.identifying_fields`](#obj-inspect_jobstorage_configbig_query_optionsidentifying_fields)
        * [`fn new()`](#fn-inspect_jobstorage_configbig_query_optionsidentifying_fieldsnew)
      * [`obj inspect_job.storage_config.big_query_options.included_fields`](#obj-inspect_jobstorage_configbig_query_optionsincluded_fields)
        * [`fn new()`](#fn-inspect_jobstorage_configbig_query_optionsincluded_fieldsnew)
      * [`obj inspect_job.storage_config.big_query_options.table_reference`](#obj-inspect_jobstorage_configbig_query_optionstable_reference)
        * [`fn new()`](#fn-inspect_jobstorage_configbig_query_optionstable_referencenew)
    * [`obj inspect_job.storage_config.cloud_storage_options`](#obj-inspect_jobstorage_configcloud_storage_options)
      * [`fn new()`](#fn-inspect_jobstorage_configcloud_storage_optionsnew)
      * [`obj inspect_job.storage_config.cloud_storage_options.file_set`](#obj-inspect_jobstorage_configcloud_storage_optionsfile_set)
        * [`fn new()`](#fn-inspect_jobstorage_configcloud_storage_optionsfile_setnew)
        * [`obj inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set`](#obj-inspect_jobstorage_configcloud_storage_optionsfile_setregex_file_set)
          * [`fn new()`](#fn-inspect_jobstorage_configcloud_storage_optionsfile_setregex_file_setnew)
    * [`obj inspect_job.storage_config.datastore_options`](#obj-inspect_jobstorage_configdatastore_options)
      * [`fn new()`](#fn-inspect_jobstorage_configdatastore_optionsnew)
      * [`obj inspect_job.storage_config.datastore_options.kind`](#obj-inspect_jobstorage_configdatastore_optionskind)
        * [`fn new()`](#fn-inspect_jobstorage_configdatastore_optionskindnew)
      * [`obj inspect_job.storage_config.datastore_options.partition_id`](#obj-inspect_jobstorage_configdatastore_optionspartition_id)
        * [`fn new()`](#fn-inspect_jobstorage_configdatastore_optionspartition_idnew)
    * [`obj inspect_job.storage_config.hybrid_options`](#obj-inspect_jobstorage_confighybrid_options)
      * [`fn new()`](#fn-inspect_jobstorage_confighybrid_optionsnew)
      * [`obj inspect_job.storage_config.hybrid_options.table_options`](#obj-inspect_jobstorage_confighybrid_optionstable_options)
        * [`fn new()`](#fn-inspect_jobstorage_confighybrid_optionstable_optionsnew)
        * [`obj inspect_job.storage_config.hybrid_options.table_options.identifying_fields`](#obj-inspect_jobstorage_confighybrid_optionstable_optionsidentifying_fields)
          * [`fn new()`](#fn-inspect_jobstorage_confighybrid_optionstable_optionsidentifying_fieldsnew)
    * [`obj inspect_job.storage_config.timespan_config`](#obj-inspect_jobstorage_configtimespan_config)
      * [`fn new()`](#fn-inspect_jobstorage_configtimespan_confignew)
      * [`obj inspect_job.storage_config.timespan_config.timestamp_field`](#obj-inspect_jobstorage_configtimespan_configtimestamp_field)
        * [`fn new()`](#fn-inspect_jobstorage_configtimespan_configtimestamp_fieldnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj triggers`](#obj-triggers)
  * [`fn new()`](#fn-triggersnew)
  * [`obj triggers.manual`](#obj-triggersmanual)
    * [`fn new()`](#fn-triggersmanualnew)
  * [`obj triggers.schedule`](#obj-triggersschedule)
    * [`fn new()`](#fn-triggersschedulenew)

## Fields

### fn new

```ts
new()
```


`google.data_loss_prevention_job_trigger.new` injects a new `google_data_loss_prevention_job_trigger` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data_loss_prevention_job_trigger.new('some_id')

You can get the reference to the `id` field of the created `google.data_loss_prevention_job_trigger` using the reference:

    $._ref.google_data_loss_prevention_job_trigger.some_id.get('id')

This is the same as directly entering `"${ google_data_loss_prevention_job_trigger.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A description of the job trigger. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User set display name of the job trigger. When `null`, the `display_name` field will be omitted from the resulting object.
  - `parent` (`string`): The parent of the trigger, either in the format &#39;projects/{{project}}&#39;
or &#39;projects/{{project}}/locations/{{location}}&#39;
  - `status` (`string`): Whether the trigger is currently active. Default value: &#34;HEALTHY&#34; Possible values: [&#34;PAUSED&#34;, &#34;HEALTHY&#34;, &#34;CANCELLED&#34;] When `null`, the `status` field will be omitted from the resulting object.
  - `trigger_id` (`string`): The trigger id can contain uppercase and lowercase letters, numbers, and hyphens;
that is, it must match the regular expression: [a-zA-Z\d-_]&#43;.
The maximum length is 100 characters. Can be empty to allow the system to generate one. When `null`, the `trigger_id` field will be omitted from the resulting object.
  - `inspect_job` (`list[obj]`): Controls what and how to inspect for findings. When `null`, the `inspect_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.new](#fn-inspect_jobnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.timeouts.new](#fn-timeoutsnew) constructor.
  - `triggers` (`list[obj]`): What event needs to occur for a new job to be started. When `null`, the `triggers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.triggers.new](#fn-triggersnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data_loss_prevention_job_trigger.newAttrs` constructs a new object with attributes and blocks configured for the `data_loss_prevention_job_trigger`
Terraform resource.

Unlike [google.data_loss_prevention_job_trigger.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A description of the job trigger. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User set display name of the job trigger. When `null`, the `display_name` field will be omitted from the resulting object.
  - `parent` (`string`): The parent of the trigger, either in the format &#39;projects/{{project}}&#39;
or &#39;projects/{{project}}/locations/{{location}}&#39;
  - `status` (`string`): Whether the trigger is currently active. Default value: &#34;HEALTHY&#34; Possible values: [&#34;PAUSED&#34;, &#34;HEALTHY&#34;, &#34;CANCELLED&#34;] When `null`, the `status` field will be omitted from the resulting object.
  - `trigger_id` (`string`): The trigger id can contain uppercase and lowercase letters, numbers, and hyphens;
that is, it must match the regular expression: [a-zA-Z\d-_]&#43;.
The maximum length is 100 characters. Can be empty to allow the system to generate one. When `null`, the `trigger_id` field will be omitted from the resulting object.
  - `inspect_job` (`list[obj]`): Controls what and how to inspect for findings. When `null`, the `inspect_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.new](#fn-inspect_jobnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.timeouts.new](#fn-timeoutsnew) constructor.
  - `triggers` (`list[obj]`): What event needs to occur for a new job to be started. When `null`, the `triggers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.triggers.new](#fn-triggersnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_loss_prevention_job_trigger` resource into the root Terraform configuration.


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


### fn withInspectJob

```ts
withInspectJob()
```

`google.list[obj].withInspectJob` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the inspect_job field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withInspectJobMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `inspect_job` field.


### fn withInspectJobMixin

```ts
withInspectJobMixin()
```

`google.list[obj].withInspectJobMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the inspect_job field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withInspectJob](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `inspect_job` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withStatus

```ts
withStatus()
```

`google.string.withStatus` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the status field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `status` field.


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


### fn withTriggerId

```ts
withTriggerId()
```

`google.string.withTriggerId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the trigger_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `trigger_id` field.


### fn withTriggers

```ts
withTriggers()
```

`google.list[obj].withTriggers` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the triggers field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTriggersMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `triggers` field.


### fn withTriggersMixin

```ts
withTriggersMixin()
```

`google.list[obj].withTriggersMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the triggers field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTriggers](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `triggers` field.


## obj inspect_job



### fn inspect_job.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.new` constructs a new object with attributes and blocks configured for the `inspect_job`
Terraform sub block.



**Args**:
  - `inspect_template_name` (`string`): The name of the template to run when this job is triggered. When `null`, the `inspect_template_name` field will be omitted from the resulting object.
  - `actions` (`list[obj]`): A task to execute on the completion of a job. When `null`, the `actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.new](#fn-inspect_jobactionsnew) constructor.
  - `inspect_config` (`list[obj]`): The core content of the template. When `null`, the `inspect_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.new](#fn-inspect_jobinspect_confignew) constructor.
  - `storage_config` (`list[obj]`): Information on where to inspect When `null`, the `storage_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.new](#fn-inspect_jobstorage_confignew) constructor.

**Returns**:
  - An attribute object that represents the `inspect_job` sub block.


## obj inspect_job.actions



### fn inspect_job.actions.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.new` constructs a new object with attributes and blocks configured for the `actions`
Terraform sub block.



**Args**:
  - `deidentify` (`list[obj]`): Create a de-identified copy of the requested table or files. When `null`, the `deidentify` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.new](#fn-inspect_jobinspect_jobdeidentifynew) constructor.
  - `job_notification_emails` (`list[obj]`): Sends an email when the job completes. The email goes to IAM project owners and technical Essential Contacts. When `null`, the `job_notification_emails` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.job_notification_emails.new](#fn-inspect_jobinspect_jobjob_notification_emailsnew) constructor.
  - `pub_sub` (`list[obj]`): Publish a message into a given Pub/Sub topic when the job completes. When `null`, the `pub_sub` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.pub_sub.new](#fn-inspect_jobinspect_jobpub_subnew) constructor.
  - `publish_findings_to_cloud_data_catalog` (`list[obj]`): Publish findings of a DlpJob to Data Catalog. When `null`, the `publish_findings_to_cloud_data_catalog` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.publish_findings_to_cloud_data_catalog.new](#fn-inspect_jobinspect_jobpublish_findings_to_cloud_data_catalognew) constructor.
  - `publish_summary_to_cscc` (`list[obj]`): Publish the result summary of a DlpJob to the Cloud Security Command Center. When `null`, the `publish_summary_to_cscc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.publish_summary_to_cscc.new](#fn-inspect_jobinspect_jobpublish_summary_to_csccnew) constructor.
  - `publish_to_stackdriver` (`list[obj]`): Enable Stackdriver metric dlp.googleapis.com/findingCount. When `null`, the `publish_to_stackdriver` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.publish_to_stackdriver.new](#fn-inspect_jobinspect_jobpublish_to_stackdrivernew) constructor.
  - `save_findings` (`list[obj]`): If set, the detailed findings will be persisted to the specified OutputStorageConfig. Only a single instance of this action can be specified. Compatible with: Inspect, Risk When `null`, the `save_findings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.new](#fn-inspect_jobinspect_jobsave_findingsnew) constructor.

**Returns**:
  - An attribute object that represents the `actions` sub block.


## obj inspect_job.actions.deidentify



### fn inspect_job.actions.deidentify.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.new` constructs a new object with attributes and blocks configured for the `deidentify`
Terraform sub block.



**Args**:
  - `cloud_storage_output` (`string`): User settable Cloud Storage bucket and folders to store de-identified files.

This field must be set for cloud storage deidentification.

The output Cloud Storage bucket must be different from the input bucket.

De-identified files will overwrite files in the output path.

Form of: gs://bucket/folder/ or gs://bucket
  - `file_types_to_transform` (`list`): List of user-specified file type groups to transform. If specified, only the files with these filetypes will be transformed.

If empty, all supported files will be transformed. Supported types may be automatically added over time.

If a file type is set in this field that isn&#39;t supported by the Deidentify action then the job will fail and will not be successfully created/started. Possible values: [&#34;IMAGE&#34;, &#34;TEXT_FILE&#34;, &#34;CSV&#34;, &#34;TSV&#34;] When `null`, the `file_types_to_transform` field will be omitted from the resulting object.
  - `transformation_config` (`list[obj]`): User specified deidentify templates and configs for structured, unstructured, and image files. When `null`, the `transformation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.transformation_config.new](#fn-inspect_jobinspect_jobactionstransformation_confignew) constructor.
  - `transformation_details_storage_config` (`list[obj]`): Config for storing transformation details. When `null`, the `transformation_details_storage_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.transformation_details_storage_config.new](#fn-inspect_jobinspect_jobactionstransformation_details_storage_confignew) constructor.

**Returns**:
  - An attribute object that represents the `deidentify` sub block.


## obj inspect_job.actions.deidentify.transformation_config



### fn inspect_job.actions.deidentify.transformation_config.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.transformation_config.new` constructs a new object with attributes and blocks configured for the `transformation_config`
Terraform sub block.



**Args**:
  - `deidentify_template` (`string`): If this template is specified, it will serve as the default de-identify template. When `null`, the `deidentify_template` field will be omitted from the resulting object.
  - `image_redact_template` (`string`): If this template is specified, it will serve as the de-identify template for images. When `null`, the `image_redact_template` field will be omitted from the resulting object.
  - `structured_deidentify_template` (`string`): If this template is specified, it will serve as the de-identify template for structured content such as delimited files and tables. When `null`, the `structured_deidentify_template` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `transformation_config` sub block.


## obj inspect_job.actions.deidentify.transformation_details_storage_config



### fn inspect_job.actions.deidentify.transformation_details_storage_config.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.transformation_details_storage_config.new` constructs a new object with attributes and blocks configured for the `transformation_details_storage_config`
Terraform sub block.



**Args**:
  - `table` (`list[obj]`): The BigQuery table in which to store the output. When `null`, the `table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.transformation_details_storage_config.table.new](#fn-inspect_jobinspect_jobactionsdeidentifytablenew) constructor.

**Returns**:
  - An attribute object that represents the `transformation_details_storage_config` sub block.


## obj inspect_job.actions.deidentify.transformation_details_storage_config.table



### fn inspect_job.actions.deidentify.transformation_details_storage_config.table.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.deidentify.transformation_details_storage_config.table.new` constructs a new object with attributes and blocks configured for the `table`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of the dataset containing this table.
  - `project_id` (`string`): The ID of the project containing this table.
  - `table_id` (`string`): The ID of the table. The ID must contain only letters (a-z,
A-Z), numbers (0-9), or underscores (_). The maximum length
is 1,024 characters. When `null`, the `table_id` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `table` sub block.


## obj inspect_job.actions.job_notification_emails



### fn inspect_job.actions.job_notification_emails.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.job_notification_emails.new` constructs a new object with attributes and blocks configured for the `job_notification_emails`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `job_notification_emails` sub block.


## obj inspect_job.actions.pub_sub



### fn inspect_job.actions.pub_sub.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.pub_sub.new` constructs a new object with attributes and blocks configured for the `pub_sub`
Terraform sub block.



**Args**:
  - `topic` (`string`): Cloud Pub/Sub topic to send notifications to.

**Returns**:
  - An attribute object that represents the `pub_sub` sub block.


## obj inspect_job.actions.publish_findings_to_cloud_data_catalog



### fn inspect_job.actions.publish_findings_to_cloud_data_catalog.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.publish_findings_to_cloud_data_catalog.new` constructs a new object with attributes and blocks configured for the `publish_findings_to_cloud_data_catalog`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `publish_findings_to_cloud_data_catalog` sub block.


## obj inspect_job.actions.publish_summary_to_cscc



### fn inspect_job.actions.publish_summary_to_cscc.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.publish_summary_to_cscc.new` constructs a new object with attributes and blocks configured for the `publish_summary_to_cscc`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `publish_summary_to_cscc` sub block.


## obj inspect_job.actions.publish_to_stackdriver



### fn inspect_job.actions.publish_to_stackdriver.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.publish_to_stackdriver.new` constructs a new object with attributes and blocks configured for the `publish_to_stackdriver`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `publish_to_stackdriver` sub block.


## obj inspect_job.actions.save_findings



### fn inspect_job.actions.save_findings.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.new` constructs a new object with attributes and blocks configured for the `save_findings`
Terraform sub block.



**Args**:
  - `output_config` (`list[obj]`): Information on where to store output When `null`, the `output_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.new](#fn-inspect_jobinspect_jobactionsoutput_confignew) constructor.

**Returns**:
  - An attribute object that represents the `save_findings` sub block.


## obj inspect_job.actions.save_findings.output_config



### fn inspect_job.actions.save_findings.output_config.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.new` constructs a new object with attributes and blocks configured for the `output_config`
Terraform sub block.



**Args**:
  - `output_schema` (`string`): Schema used for writing the findings for Inspect jobs. This field is only used for
Inspect and must be unspecified for Risk jobs. Columns are derived from the Finding
object. If appending to an existing table, any columns from the predefined schema
that are missing will be added. No columns in the existing table will be deleted.

If unspecified, then all available columns will be used for a new table or an (existing)
table with no schema, and no changes will be made to an existing table that has a schema.
Only for use with external storage. Possible values: [&#34;BASIC_COLUMNS&#34;, &#34;GCS_COLUMNS&#34;, &#34;DATASTORE_COLUMNS&#34;, &#34;BIG_QUERY_COLUMNS&#34;, &#34;ALL_COLUMNS&#34;] When `null`, the `output_schema` field will be omitted from the resulting object.
  - `table` (`list[obj]`): Information on the location of the target BigQuery Table. When `null`, the `table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.table.new](#fn-inspect_jobinspect_jobactionssave_findingstablenew) constructor.

**Returns**:
  - An attribute object that represents the `output_config` sub block.


## obj inspect_job.actions.save_findings.output_config.table



### fn inspect_job.actions.save_findings.output_config.table.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.actions.save_findings.output_config.table.new` constructs a new object with attributes and blocks configured for the `table`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): Dataset ID of the table.
  - `project_id` (`string`): The Google Cloud Platform project ID of the project containing the table.
  - `table_id` (`string`): Name of the table. If is not set a new one will be generated for you with the following format:
&#39;dlp_googleapis_yyyy_mm_dd_[dlp_job_id]&#39;. Pacific timezone will be used for generating the date details. When `null`, the `table_id` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `table` sub block.


## obj inspect_job.inspect_config



### fn inspect_job.inspect_config.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.new` constructs a new object with attributes and blocks configured for the `inspect_config`
Terraform sub block.



**Args**:
  - `exclude_info_types` (`bool`): When true, excludes type information of the findings. When `null`, the `exclude_info_types` field will be omitted from the resulting object.
  - `include_quote` (`bool`): When true, a contextual quote from the data that triggered a finding is included in the response. When `null`, the `include_quote` field will be omitted from the resulting object.
  - `min_likelihood` (`string`): Only returns findings equal or above this threshold. See https://cloud.google.com/dlp/docs/likelihood for more info Default value: &#34;POSSIBLE&#34; Possible values: [&#34;VERY_UNLIKELY&#34;, &#34;UNLIKELY&#34;, &#34;POSSIBLE&#34;, &#34;LIKELY&#34;, &#34;VERY_LIKELY&#34;] When `null`, the `min_likelihood` field will be omitted from the resulting object.
  - `custom_info_types` (`list[obj]`): Custom info types to be used. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more. When `null`, the `custom_info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.new](#fn-inspect_jobinspect_jobcustom_info_typesnew) constructor.
  - `info_types` (`list[obj]`): Restricts what infoTypes to look for. The values must correspond to InfoType values returned by infoTypes.list
or listed at https://cloud.google.com/dlp/docs/infotypes-reference.

When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose what detectors to run.
By default this may be all types, but may change over time as detectors are updated. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.info_types.new](#fn-inspect_jobinspect_jobinfo_typesnew) constructor.
  - `limits` (`list[obj]`): Configuration to control the number of findings returned. When `null`, the `limits` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.limits.new](#fn-inspect_jobinspect_joblimitsnew) constructor.
  - `rule_set` (`list[obj]`): Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end,
other rules are executed in the order they are specified for each info type. When `null`, the `rule_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.new](#fn-inspect_jobinspect_jobrule_setnew) constructor.

**Returns**:
  - An attribute object that represents the `inspect_config` sub block.


## obj inspect_job.inspect_config.custom_info_types



### fn inspect_job.inspect_config.custom_info_types.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.new` constructs a new object with attributes and blocks configured for the `custom_info_types`
Terraform sub block.



**Args**:
  - `exclusion_type` (`string`): If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching. Possible values: [&#34;EXCLUSION_TYPE_EXCLUDE&#34;] When `null`, the `exclusion_type` field will be omitted from the resulting object.
  - `likelihood` (`string`): Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria
specified by the rule. Default value: &#34;VERY_LIKELY&#34; Possible values: [&#34;VERY_UNLIKELY&#34;, &#34;UNLIKELY&#34;, &#34;POSSIBLE&#34;, &#34;LIKELY&#34;, &#34;VERY_LIKELY&#34;] When `null`, the `likelihood` field will be omitted from the resulting object.
  - `dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.dictionary.new](#fn-inspect_jobinspect_jobinspect_configdictionarynew) constructor.
  - `info_type` (`list[obj]`): CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing
infoTypes and that infoType is specified in &#39;info_types&#39; field. Specifying the latter adds findings to the
one detected by the system. If built-in info type is not specified in &#39;info_types&#39; list then the name is
treated as a custom info type. When `null`, the `info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.info_type.new](#fn-inspect_jobinspect_jobinspect_configinfo_typenew) constructor.
  - `regex` (`list[obj]`): Regular expression which defines the rule. When `null`, the `regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.regex.new](#fn-inspect_jobinspect_jobinspect_configregexnew) constructor.
  - `sensitivity_score` (`list[obj]`): Optional custom sensitivity for this InfoType. This only applies to data profiling. When `null`, the `sensitivity_score` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.sensitivity_score.new](#fn-inspect_jobinspect_jobinspect_configsensitivity_scorenew) constructor.
  - `stored_type` (`list[obj]`): A reference to a StoredInfoType to use with scanning. When `null`, the `stored_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.stored_type.new](#fn-inspect_jobinspect_jobinspect_configstored_typenew) constructor.
  - `surrogate_type` (`list[obj]`): Message for detecting output from deidentification transformations that support reversing. When `null`, the `surrogate_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.surrogate_type.new](#fn-inspect_jobinspect_jobinspect_configsurrogate_typenew) constructor.

**Returns**:
  - An attribute object that represents the `custom_info_types` sub block.


## obj inspect_job.inspect_config.custom_info_types.dictionary



### fn inspect_job.inspect_config.custom_info_types.dictionary.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.dictionary.new` constructs a new object with attributes and blocks configured for the `dictionary`
Terraform sub block.



**Args**:
  - `cloud_storage_path` (`list[obj]`): Newline-delimited file of words in Cloud Storage. Only a single file is accepted. When `null`, the `cloud_storage_path` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.dictionary.cloud_storage_path.new](#fn-inspect_jobinspect_jobinspect_configcustom_info_typescloud_storage_pathnew) constructor.
  - `word_list` (`list[obj]`): List of words or phrases to search for. When `null`, the `word_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.dictionary.word_list.new](#fn-inspect_jobinspect_jobinspect_configcustom_info_typesword_listnew) constructor.

**Returns**:
  - An attribute object that represents the `dictionary` sub block.


## obj inspect_job.inspect_config.custom_info_types.dictionary.cloud_storage_path



### fn inspect_job.inspect_config.custom_info_types.dictionary.cloud_storage_path.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.dictionary.cloud_storage_path.new` constructs a new object with attributes and blocks configured for the `cloud_storage_path`
Terraform sub block.



**Args**:
  - `path` (`string`): A url representing a file or path (no wildcards) in Cloud Storage. Example: &#39;gs://[BUCKET_NAME]/dictionary.txt&#39;

**Returns**:
  - An attribute object that represents the `cloud_storage_path` sub block.


## obj inspect_job.inspect_config.custom_info_types.dictionary.word_list



### fn inspect_job.inspect_config.custom_info_types.dictionary.word_list.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.dictionary.word_list.new` constructs a new object with attributes and blocks configured for the `word_list`
Terraform sub block.



**Args**:
  - `words` (`list`): Words or phrases defining the dictionary. The dictionary must contain at least one
phrase and every phrase must contain at least 2 characters that are letters or digits.

**Returns**:
  - An attribute object that represents the `word_list` sub block.


## obj inspect_job.inspect_config.custom_info_types.info_type



### fn inspect_job.inspect_config.custom_info_types.info_type.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.info_type.new` constructs a new object with attributes and blocks configured for the `info_type`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names
listed at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.
  - `version` (`string`): Version of the information type to use. By default, the version is set to stable. When `null`, the `version` field will be omitted from the resulting object.
  - `sensitivity_score` (`list[obj]`): Optional custom sensitivity for this InfoType. This only applies to data profiling. When `null`, the `sensitivity_score` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.info_type.sensitivity_score.new](#fn-inspect_jobinspect_jobinspect_configcustom_info_typessensitivity_scorenew) constructor.

**Returns**:
  - An attribute object that represents the `info_type` sub block.


## obj inspect_job.inspect_config.custom_info_types.info_type.sensitivity_score



### fn inspect_job.inspect_config.custom_info_types.info_type.sensitivity_score.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.info_type.sensitivity_score.new` constructs a new object with attributes and blocks configured for the `sensitivity_score`
Terraform sub block.



**Args**:
  - `score` (`string`): The sensitivity score applied to the resource. Possible values: [&#34;SENSITIVITY_LOW&#34;, &#34;SENSITIVITY_MODERATE&#34;, &#34;SENSITIVITY_HIGH&#34;]

**Returns**:
  - An attribute object that represents the `sensitivity_score` sub block.


## obj inspect_job.inspect_config.custom_info_types.regex



### fn inspect_job.inspect_config.custom_info_types.regex.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.regex.new` constructs a new object with attributes and blocks configured for the `regex`
Terraform sub block.



**Args**:
  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.
  - `pattern` (`string`): Pattern defining the regular expression.
Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.

**Returns**:
  - An attribute object that represents the `regex` sub block.


## obj inspect_job.inspect_config.custom_info_types.sensitivity_score



### fn inspect_job.inspect_config.custom_info_types.sensitivity_score.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.sensitivity_score.new` constructs a new object with attributes and blocks configured for the `sensitivity_score`
Terraform sub block.



**Args**:
  - `score` (`string`): The sensitivity score applied to the resource. Possible values: [&#34;SENSITIVITY_LOW&#34;, &#34;SENSITIVITY_MODERATE&#34;, &#34;SENSITIVITY_HIGH&#34;]

**Returns**:
  - An attribute object that represents the `sensitivity_score` sub block.


## obj inspect_job.inspect_config.custom_info_types.stored_type



### fn inspect_job.inspect_config.custom_info_types.stored_type.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.stored_type.new` constructs a new object with attributes and blocks configured for the `stored_type`
Terraform sub block.



**Args**:
  - `name` (`string`): Resource name of the requested StoredInfoType, for example &#39;organizations/433245324/storedInfoTypes/432452342&#39;
or &#39;projects/project-id/storedInfoTypes/432452342&#39;.

**Returns**:
  - An attribute object that represents the `stored_type` sub block.


## obj inspect_job.inspect_config.custom_info_types.surrogate_type



### fn inspect_job.inspect_config.custom_info_types.surrogate_type.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.custom_info_types.surrogate_type.new` constructs a new object with attributes and blocks configured for the `surrogate_type`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `surrogate_type` sub block.


## obj inspect_job.inspect_config.info_types



### fn inspect_job.inspect_config.info_types.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.
  - `version` (`string`): Version of the information type to use. By default, the version is set to stable When `null`, the `version` field will be omitted from the resulting object.
  - `sensitivity_score` (`list[obj]`): Optional custom sensitivity for this InfoType. This only applies to data profiling. When `null`, the `sensitivity_score` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.info_types.sensitivity_score.new](#fn-inspect_jobinspect_jobinspect_configsensitivity_scorenew) constructor.

**Returns**:
  - An attribute object that represents the `info_types` sub block.


## obj inspect_job.inspect_config.info_types.sensitivity_score



### fn inspect_job.inspect_config.info_types.sensitivity_score.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.info_types.sensitivity_score.new` constructs a new object with attributes and blocks configured for the `sensitivity_score`
Terraform sub block.



**Args**:
  - `score` (`string`): The sensitivity score applied to the resource. Possible values: [&#34;SENSITIVITY_LOW&#34;, &#34;SENSITIVITY_MODERATE&#34;, &#34;SENSITIVITY_HIGH&#34;]

**Returns**:
  - An attribute object that represents the `sensitivity_score` sub block.


## obj inspect_job.inspect_config.limits



### fn inspect_job.inspect_config.limits.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.limits.new` constructs a new object with attributes and blocks configured for the `limits`
Terraform sub block.



**Args**:
  - `max_findings_per_item` (`number`): Max number of findings that will be returned for each item scanned. The maximum returned is 2000. When `null`, the `max_findings_per_item` field will be omitted from the resulting object.
  - `max_findings_per_request` (`number`): Max number of findings that will be returned per request/job. The maximum returned is 2000. When `null`, the `max_findings_per_request` field will be omitted from the resulting object.
  - `max_findings_per_info_type` (`list[obj]`): Configuration of findings limit given for specified infoTypes. When `null`, the `max_findings_per_info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.limits.max_findings_per_info_type.new](#fn-inspect_jobinspect_jobinspect_configmax_findings_per_info_typenew) constructor.

**Returns**:
  - An attribute object that represents the `limits` sub block.


## obj inspect_job.inspect_config.limits.max_findings_per_info_type



### fn inspect_job.inspect_config.limits.max_findings_per_info_type.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.limits.max_findings_per_info_type.new` constructs a new object with attributes and blocks configured for the `max_findings_per_info_type`
Terraform sub block.



**Args**:
  - `max_findings` (`number`): Max findings limit for the given infoType. When `null`, the `max_findings` field will be omitted from the resulting object.
  - `info_type` (`list[obj]`): Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does
not have an infoType, the DLP API applies the limit against all infoTypes that are found but not
specified in another InfoTypeLimit. When `null`, the `info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.limits.max_findings_per_info_type.info_type.new](#fn-inspect_jobinspect_jobinspect_configlimitsinfo_typenew) constructor.

**Returns**:
  - An attribute object that represents the `max_findings_per_info_type` sub block.


## obj inspect_job.inspect_config.limits.max_findings_per_info_type.info_type



### fn inspect_job.inspect_config.limits.max_findings_per_info_type.info_type.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.limits.max_findings_per_info_type.info_type.new` constructs a new object with attributes and blocks configured for the `info_type`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.
  - `version` (`string`): Version of the information type to use. By default, the version is set to stable When `null`, the `version` field will be omitted from the resulting object.
  - `sensitivity_score` (`list[obj]`): Optional custom sensitivity for this InfoType. This only applies to data profiling. When `null`, the `sensitivity_score` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.limits.max_findings_per_info_type.info_type.sensitivity_score.new](#fn-inspect_jobinspect_jobinspect_configlimitsmax_findings_per_info_typesensitivity_scorenew) constructor.

**Returns**:
  - An attribute object that represents the `info_type` sub block.


## obj inspect_job.inspect_config.limits.max_findings_per_info_type.info_type.sensitivity_score



### fn inspect_job.inspect_config.limits.max_findings_per_info_type.info_type.sensitivity_score.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.limits.max_findings_per_info_type.info_type.sensitivity_score.new` constructs a new object with attributes and blocks configured for the `sensitivity_score`
Terraform sub block.



**Args**:
  - `score` (`string`): The sensitivity score applied to the resource. Possible values: [&#34;SENSITIVITY_LOW&#34;, &#34;SENSITIVITY_MODERATE&#34;, &#34;SENSITIVITY_HIGH&#34;]

**Returns**:
  - An attribute object that represents the `sensitivity_score` sub block.


## obj inspect_job.inspect_config.rule_set



### fn inspect_job.inspect_config.rule_set.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.new` constructs a new object with attributes and blocks configured for the `rule_set`
Terraform sub block.



**Args**:
  - `info_types` (`list[obj]`): List of infoTypes this rule set is applied to. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.info_types.new](#fn-inspect_jobinspect_jobinspect_configinfo_typesnew) constructor.
  - `rules` (`list[obj]`): Set of rules to be applied to infoTypes. The rules are applied in order. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.new](#fn-inspect_jobinspect_jobinspect_configrulesnew) constructor.

**Returns**:
  - An attribute object that represents the `rule_set` sub block.


## obj inspect_job.inspect_config.rule_set.info_types



### fn inspect_job.inspect_config.rule_set.info_types.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.
  - `version` (`string`): Version of the information type to use. By default, the version is set to stable. When `null`, the `version` field will be omitted from the resulting object.
  - `sensitivity_score` (`list[obj]`): Optional custom sensitivity for this InfoType. This only applies to data profiling. When `null`, the `sensitivity_score` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.info_types.sensitivity_score.new](#fn-inspect_jobinspect_jobinspect_configrule_setsensitivity_scorenew) constructor.

**Returns**:
  - An attribute object that represents the `info_types` sub block.


## obj inspect_job.inspect_config.rule_set.info_types.sensitivity_score



### fn inspect_job.inspect_config.rule_set.info_types.sensitivity_score.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.info_types.sensitivity_score.new` constructs a new object with attributes and blocks configured for the `sensitivity_score`
Terraform sub block.



**Args**:
  - `score` (`string`): The sensitivity score applied to the resource. Possible values: [&#34;SENSITIVITY_LOW&#34;, &#34;SENSITIVITY_MODERATE&#34;, &#34;SENSITIVITY_HIGH&#34;]

**Returns**:
  - An attribute object that represents the `sensitivity_score` sub block.


## obj inspect_job.inspect_config.rule_set.rules



### fn inspect_job.inspect_config.rule_set.rules.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.new` constructs a new object with attributes and blocks configured for the `rules`
Terraform sub block.



**Args**:
  - `exclusion_rule` (`list[obj]`): The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results. When `null`, the `exclusion_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.new](#fn-inspect_jobinspect_jobinspect_configrule_setexclusion_rulenew) constructor.
  - `hotword_rule` (`list[obj]`): Hotword-based detection rule. When `null`, the `hotword_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.new](#fn-inspect_jobinspect_jobinspect_configrule_sethotword_rulenew) constructor.

**Returns**:
  - An attribute object that represents the `rules` sub block.


## obj inspect_job.inspect_config.rule_set.rules.exclusion_rule



### fn inspect_job.inspect_config.rule_set.rules.exclusion_rule.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.new` constructs a new object with attributes and blocks configured for the `exclusion_rule`
Terraform sub block.



**Args**:
  - `matching_type` (`string`): How the rule is applied. See the documentation for more information: https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#MatchingType Possible values: [&#34;MATCHING_TYPE_FULL_MATCH&#34;, &#34;MATCHING_TYPE_PARTIAL_MATCH&#34;, &#34;MATCHING_TYPE_INVERSE_MATCH&#34;]
  - `dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesdictionarynew) constructor.
  - `exclude_by_hotword` (`list[obj]`): Drop if the hotword rule is contained in the proximate context. When `null`, the `exclude_by_hotword` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclude_by_hotwordnew) constructor.
  - `exclude_info_types` (`list[obj]`): Set of infoTypes for which findings would affect this rule. When `null`, the `exclude_info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclude_info_typesnew) constructor.
  - `regex` (`list[obj]`): Regular expression which defines the rule. When `null`, the `regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.regex.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesregexnew) constructor.

**Returns**:
  - An attribute object that represents the `exclusion_rule` sub block.


## obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary



### fn inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.new` constructs a new object with attributes and blocks configured for the `dictionary`
Terraform sub block.



**Args**:
  - `cloud_storage_path` (`list[obj]`): Newline-delimited file of words in Cloud Storage. Only a single file is accepted. When `null`, the `cloud_storage_path` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclusion_rulecloud_storage_pathnew) constructor.
  - `word_list` (`list[obj]`): List of words or phrases to search for. When `null`, the `word_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclusion_ruleword_listnew) constructor.

**Returns**:
  - An attribute object that represents the `dictionary` sub block.


## obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path



### fn inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path.new` constructs a new object with attributes and blocks configured for the `cloud_storage_path`
Terraform sub block.



**Args**:
  - `path` (`string`): A url representing a file or path (no wildcards) in Cloud Storage. Example: &#39;gs://[BUCKET_NAME]/dictionary.txt&#39;

**Returns**:
  - An attribute object that represents the `cloud_storage_path` sub block.


## obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list



### fn inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list.new` constructs a new object with attributes and blocks configured for the `word_list`
Terraform sub block.



**Args**:
  - `words` (`list`): Words or phrases defining the dictionary. The dictionary must contain at least one
phrase and every phrase must contain at least 2 characters that are letters or digits.

**Returns**:
  - An attribute object that represents the `word_list` sub block.


## obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword



### fn inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.new` constructs a new object with attributes and blocks configured for the `exclude_by_hotword`
Terraform sub block.



**Args**:
  - `hotword_regex` (`list[obj]`): Regular expression pattern defining what qualifies as a hotword. When `null`, the `hotword_regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.hotword_regex.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclusion_rulehotword_regexnew) constructor.
  - `proximity` (`list[obj]`): Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be
used to match substrings of the finding itself. For example, the certainty of a phone number regex
&#39;(\d{3}) \d{3}-\d{4}&#39; could be adjusted upwards if the area code is known to be the local area code of a company
office using the hotword regex &#39;(xxx)&#39;, where &#39;xxx&#39; is the area code in question. When `null`, the `proximity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.proximity.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclusion_ruleproximitynew) constructor.

**Returns**:
  - An attribute object that represents the `exclude_by_hotword` sub block.


## obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.hotword_regex



### fn inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.hotword_regex.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.hotword_regex.new` constructs a new object with attributes and blocks configured for the `hotword_regex`
Terraform sub block.



**Args**:
  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified,
the entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.
  - `pattern` (`string`): Pattern defining the regular expression. Its syntax
(https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub. When `null`, the `pattern` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `hotword_regex` sub block.


## obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.proximity



### fn inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.proximity.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_by_hotword.proximity.new` constructs a new object with attributes and blocks configured for the `proximity`
Terraform sub block.



**Args**:
  - `window_after` (`number`): Number of characters after the finding to consider. Either this or window_before must be specified When `null`, the `window_after` field will be omitted from the resulting object.
  - `window_before` (`number`): Number of characters before the finding to consider. Either this or window_after must be specified When `null`, the `window_before` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `proximity` sub block.


## obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types



### fn inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.new` constructs a new object with attributes and blocks configured for the `exclude_info_types`
Terraform sub block.



**Args**:
  - `info_types` (`list[obj]`): If a finding is matched by any of the infoType detectors listed here, the finding will be excluded from the scan results. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclusion_ruleinfo_typesnew) constructor.

**Returns**:
  - An attribute object that represents the `exclude_info_types` sub block.


## obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types



### fn inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.
  - `version` (`string`): Version of the information type to use. By default, the version is set to stable. When `null`, the `version` field will be omitted from the resulting object.
  - `sensitivity_score` (`list[obj]`): Optional custom sensitivity for this InfoType. This only applies to data profiling. When `null`, the `sensitivity_score` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.sensitivity_score.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesexclusion_ruleexclude_info_typessensitivity_scorenew) constructor.

**Returns**:
  - An attribute object that represents the `info_types` sub block.


## obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.sensitivity_score



### fn inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.sensitivity_score.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.sensitivity_score.new` constructs a new object with attributes and blocks configured for the `sensitivity_score`
Terraform sub block.



**Args**:
  - `score` (`string`): The sensitivity score applied to the resource. Possible values: [&#34;SENSITIVITY_LOW&#34;, &#34;SENSITIVITY_MODERATE&#34;, &#34;SENSITIVITY_HIGH&#34;]

**Returns**:
  - An attribute object that represents the `sensitivity_score` sub block.


## obj inspect_job.inspect_config.rule_set.rules.exclusion_rule.regex



### fn inspect_job.inspect_config.rule_set.rules.exclusion_rule.regex.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.exclusion_rule.regex.new` constructs a new object with attributes and blocks configured for the `regex`
Terraform sub block.



**Args**:
  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.
  - `pattern` (`string`): Pattern defining the regular expression.
Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.

**Returns**:
  - An attribute object that represents the `regex` sub block.


## obj inspect_job.inspect_config.rule_set.rules.hotword_rule



### fn inspect_job.inspect_config.rule_set.rules.hotword_rule.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.new` constructs a new object with attributes and blocks configured for the `hotword_rule`
Terraform sub block.



**Args**:
  - `hotword_regex` (`list[obj]`): Regular expression pattern defining what qualifies as a hotword. When `null`, the `hotword_regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.hotword_regex.new](#fn-inspect_jobinspect_jobinspect_configrule_setruleshotword_regexnew) constructor.
  - `likelihood_adjustment` (`list[obj]`): Likelihood adjustment to apply to all matching findings. When `null`, the `likelihood_adjustment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment.new](#fn-inspect_jobinspect_jobinspect_configrule_setruleslikelihood_adjustmentnew) constructor.
  - `proximity` (`list[obj]`): Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be
used to match substrings of the finding itself. For example, the certainty of a phone number regex
&#39;(\d{3}) \d{3}-\d{4}&#39; could be adjusted upwards if the area code is known to be the local area code of a company
office using the hotword regex &#39;(xxx)&#39;, where &#39;xxx&#39; is the area code in question. When `null`, the `proximity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.proximity.new](#fn-inspect_jobinspect_jobinspect_configrule_setrulesproximitynew) constructor.

**Returns**:
  - An attribute object that represents the `hotword_rule` sub block.


## obj inspect_job.inspect_config.rule_set.rules.hotword_rule.hotword_regex



### fn inspect_job.inspect_config.rule_set.rules.hotword_rule.hotword_regex.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.hotword_regex.new` constructs a new object with attributes and blocks configured for the `hotword_regex`
Terraform sub block.



**Args**:
  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified,
the entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.
  - `pattern` (`string`): Pattern defining the regular expression. Its syntax
(https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub. When `null`, the `pattern` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `hotword_regex` sub block.


## obj inspect_job.inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment



### fn inspect_job.inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment.new` constructs a new object with attributes and blocks configured for the `likelihood_adjustment`
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


## obj inspect_job.inspect_config.rule_set.rules.hotword_rule.proximity



### fn inspect_job.inspect_config.rule_set.rules.hotword_rule.proximity.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.inspect_config.rule_set.rules.hotword_rule.proximity.new` constructs a new object with attributes and blocks configured for the `proximity`
Terraform sub block.



**Args**:
  - `window_after` (`number`): Number of characters after the finding to consider. Either this or window_before must be specified When `null`, the `window_after` field will be omitted from the resulting object.
  - `window_before` (`number`): Number of characters before the finding to consider. Either this or window_after must be specified When `null`, the `window_before` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `proximity` sub block.


## obj inspect_job.storage_config



### fn inspect_job.storage_config.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.new` constructs a new object with attributes and blocks configured for the `storage_config`
Terraform sub block.



**Args**:
  - `big_query_options` (`list[obj]`): Options defining BigQuery table and row identifiers. When `null`, the `big_query_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.new](#fn-inspect_jobinspect_jobbig_query_optionsnew) constructor.
  - `cloud_storage_options` (`list[obj]`): Options defining a file or a set of files within a Google Cloud Storage bucket. When `null`, the `cloud_storage_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.new](#fn-inspect_jobinspect_jobcloud_storage_optionsnew) constructor.
  - `datastore_options` (`list[obj]`): Options defining a data set within Google Cloud Datastore. When `null`, the `datastore_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.new](#fn-inspect_jobinspect_jobdatastore_optionsnew) constructor.
  - `hybrid_options` (`list[obj]`): Configuration to control jobs where the content being inspected is outside of Google Cloud Platform. When `null`, the `hybrid_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.hybrid_options.new](#fn-inspect_jobinspect_jobhybrid_optionsnew) constructor.
  - `timespan_config` (`list[obj]`): Information on where to inspect When `null`, the `timespan_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.new](#fn-inspect_jobinspect_jobtimespan_confignew) constructor.

**Returns**:
  - An attribute object that represents the `storage_config` sub block.


## obj inspect_job.storage_config.big_query_options



### fn inspect_job.storage_config.big_query_options.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.new` constructs a new object with attributes and blocks configured for the `big_query_options`
Terraform sub block.



**Args**:
  - `rows_limit` (`number`): Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted.
If not set, or if set to 0, all rows will be scanned. Only one of rowsLimit and rowsLimitPercent can be
specified. Cannot be used in conjunction with TimespanConfig. When `null`, the `rows_limit` field will be omitted from the resulting object.
  - `rows_limit_percent` (`number`): Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down.
Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of
rowsLimit and rowsLimitPercent can be specified. Cannot be used in conjunction with TimespanConfig. When `null`, the `rows_limit_percent` field will be omitted from the resulting object.
  - `sample_method` (`string`): How to sample rows if not all rows are scanned. Meaningful only when used in conjunction with either
rowsLimit or rowsLimitPercent. If not specified, rows are scanned in the order BigQuery reads them. Default value: &#34;TOP&#34; Possible values: [&#34;TOP&#34;, &#34;RANDOM_START&#34;] When `null`, the `sample_method` field will be omitted from the resulting object.
  - `excluded_fields` (`list[obj]`): References to fields excluded from scanning.
This allows you to skip inspection of entire columns which you know have no findings. When `null`, the `excluded_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.excluded_fields.new](#fn-inspect_jobinspect_jobstorage_configexcluded_fieldsnew) constructor.
  - `identifying_fields` (`list[obj]`): Specifies the BigQuery fields that will be returned with findings.
If not specified, no identifying fields will be returned for findings. When `null`, the `identifying_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.identifying_fields.new](#fn-inspect_jobinspect_jobstorage_configidentifying_fieldsnew) constructor.
  - `included_fields` (`list[obj]`): Limit scanning only to these fields. When `null`, the `included_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.included_fields.new](#fn-inspect_jobinspect_jobstorage_configincluded_fieldsnew) constructor.
  - `table_reference` (`list[obj]`): Set of files to scan. When `null`, the `table_reference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.table_reference.new](#fn-inspect_jobinspect_jobstorage_configtable_referencenew) constructor.

**Returns**:
  - An attribute object that represents the `big_query_options` sub block.


## obj inspect_job.storage_config.big_query_options.excluded_fields



### fn inspect_job.storage_config.big_query_options.excluded_fields.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.excluded_fields.new` constructs a new object with attributes and blocks configured for the `excluded_fields`
Terraform sub block.



**Args**:
  - `name` (`string`): Name describing the field excluded from scanning.

**Returns**:
  - An attribute object that represents the `excluded_fields` sub block.


## obj inspect_job.storage_config.big_query_options.identifying_fields



### fn inspect_job.storage_config.big_query_options.identifying_fields.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.identifying_fields.new` constructs a new object with attributes and blocks configured for the `identifying_fields`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of a BigQuery field to be returned with the findings.

**Returns**:
  - An attribute object that represents the `identifying_fields` sub block.


## obj inspect_job.storage_config.big_query_options.included_fields



### fn inspect_job.storage_config.big_query_options.included_fields.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.included_fields.new` constructs a new object with attributes and blocks configured for the `included_fields`
Terraform sub block.



**Args**:
  - `name` (`string`): Name describing the field to which scanning is limited.

**Returns**:
  - An attribute object that represents the `included_fields` sub block.


## obj inspect_job.storage_config.big_query_options.table_reference



### fn inspect_job.storage_config.big_query_options.table_reference.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.big_query_options.table_reference.new` constructs a new object with attributes and blocks configured for the `table_reference`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The dataset ID of the table.
  - `project_id` (`string`): The Google Cloud Platform project ID of the project containing the table.
  - `table_id` (`string`): The name of the table.

**Returns**:
  - An attribute object that represents the `table_reference` sub block.


## obj inspect_job.storage_config.cloud_storage_options



### fn inspect_job.storage_config.cloud_storage_options.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.new` constructs a new object with attributes and blocks configured for the `cloud_storage_options`
Terraform sub block.



**Args**:
  - `bytes_limit_per_file` (`number`): Max number of bytes to scan from a file. If a scanned file&#39;s size is bigger than this value
then the rest of the bytes are omitted. When `null`, the `bytes_limit_per_file` field will be omitted from the resulting object.
  - `bytes_limit_per_file_percent` (`number`): Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down.
Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. When `null`, the `bytes_limit_per_file_percent` field will be omitted from the resulting object.
  - `file_types` (`list`): List of file type groups to include in the scan. If empty, all files are scanned and available data
format processors are applied. In addition, the binary content of the selected files is always scanned as well.
Images are scanned only as binary if the specified region does not support image inspection and no fileTypes were specified. Possible values: [&#34;BINARY_FILE&#34;, &#34;TEXT_FILE&#34;, &#34;IMAGE&#34;, &#34;WORD&#34;, &#34;PDF&#34;, &#34;AVRO&#34;, &#34;CSV&#34;, &#34;TSV&#34;, &#34;POWERPOINT&#34;, &#34;EXCEL&#34;] When `null`, the `file_types` field will be omitted from the resulting object.
  - `files_limit_percent` (`number`): Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down.
Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. When `null`, the `files_limit_percent` field will be omitted from the resulting object.
  - `sample_method` (`string`): How to sample bytes if not all bytes are scanned. Meaningful only when used in conjunction with bytesLimitPerFile.
If not specified, scanning would start from the top. Possible values: [&#34;TOP&#34;, &#34;RANDOM_START&#34;] When `null`, the `sample_method` field will be omitted from the resulting object.
  - `file_set` (`list[obj]`): Set of files to scan. When `null`, the `file_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.new](#fn-inspect_jobinspect_jobstorage_configfile_setnew) constructor.

**Returns**:
  - An attribute object that represents the `cloud_storage_options` sub block.


## obj inspect_job.storage_config.cloud_storage_options.file_set



### fn inspect_job.storage_config.cloud_storage_options.file_set.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.new` constructs a new object with attributes and blocks configured for the `file_set`
Terraform sub block.



**Args**:
  - `url` (`string`): The Cloud Storage url of the file(s) to scan, in the format &#39;gs://&lt;bucket&gt;/&lt;path&gt;&#39;. Trailing wildcard
in the path is allowed.

If the url ends in a trailing slash, the bucket or directory represented by the url will be scanned
non-recursively (content in sub-directories will not be scanned). This means that &#39;gs://mybucket/&#39; is
equivalent to &#39;gs://mybucket/*&#39;, and &#39;gs://mybucket/directory/&#39; is equivalent to &#39;gs://mybucket/directory/*&#39;. When `null`, the `url` field will be omitted from the resulting object.
  - `regex_file_set` (`list[obj]`): The regex-filtered set of files to scan. When `null`, the `regex_file_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set.new](#fn-inspect_jobinspect_jobstorage_configcloud_storage_optionsregex_file_setnew) constructor.

**Returns**:
  - An attribute object that represents the `file_set` sub block.


## obj inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set



### fn inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.cloud_storage_options.file_set.regex_file_set.new` constructs a new object with attributes and blocks configured for the `regex_file_set`
Terraform sub block.



**Args**:
  - `bucket_name` (`string`): The name of a Cloud Storage bucket.
  - `exclude_regex` (`list`): A list of regular expressions matching file paths to exclude. All files in the bucket that match at
least one of these regular expressions will be excluded from the scan. When `null`, the `exclude_regex` field will be omitted from the resulting object.
  - `include_regex` (`list`): A list of regular expressions matching file paths to include. All files in the bucket
that match at least one of these regular expressions will be included in the set of files,
except for those that also match an item in excludeRegex. Leaving this field empty will
match all files by default (this is equivalent to including .* in the list) When `null`, the `include_regex` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `regex_file_set` sub block.


## obj inspect_job.storage_config.datastore_options



### fn inspect_job.storage_config.datastore_options.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.new` constructs a new object with attributes and blocks configured for the `datastore_options`
Terraform sub block.



**Args**:
  - `kind` (`list[obj]`): A representation of a Datastore kind. When `null`, the `kind` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.kind.new](#fn-inspect_jobinspect_jobstorage_configkindnew) constructor.
  - `partition_id` (`list[obj]`): Datastore partition ID. A partition ID identifies a grouping of entities. The grouping
is always by project and namespace, however the namespace ID may be empty. When `null`, the `partition_id` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.partition_id.new](#fn-inspect_jobinspect_jobstorage_configpartition_idnew) constructor.

**Returns**:
  - An attribute object that represents the `datastore_options` sub block.


## obj inspect_job.storage_config.datastore_options.kind



### fn inspect_job.storage_config.datastore_options.kind.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.kind.new` constructs a new object with attributes and blocks configured for the `kind`
Terraform sub block.



**Args**:
  - `name` (`string`): The name of the Datastore kind.

**Returns**:
  - An attribute object that represents the `kind` sub block.


## obj inspect_job.storage_config.datastore_options.partition_id



### fn inspect_job.storage_config.datastore_options.partition_id.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.datastore_options.partition_id.new` constructs a new object with attributes and blocks configured for the `partition_id`
Terraform sub block.



**Args**:
  - `namespace_id` (`string`): If not empty, the ID of the namespace to which the entities belong. When `null`, the `namespace_id` field will be omitted from the resulting object.
  - `project_id` (`string`): The ID of the project to which the entities belong.

**Returns**:
  - An attribute object that represents the `partition_id` sub block.


## obj inspect_job.storage_config.hybrid_options



### fn inspect_job.storage_config.hybrid_options.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.hybrid_options.new` constructs a new object with attributes and blocks configured for the `hybrid_options`
Terraform sub block.



**Args**:
  - `description` (`string`): A short description of where the data is coming from. Will be stored once in the job. 256 max length. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): To organize findings, these labels will be added to each finding.

Label keys must be between 1 and 63 characters long and must conform to the following regular expression: &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39;.

Label values must be between 0 and 63 characters long and must conform to the regular expression &#39;([a-z]([-a-z0-9]*[a-z0-9])?)?&#39;.

No more than 10 labels can be associated with a given finding.

Examples:
* &#39;&#34;environment&#34; : &#34;production&#34;&#39;
* &#39;&#34;pipeline&#34; : &#34;etl&#34;&#39; When `null`, the `labels` field will be omitted from the resulting object.
  - `required_finding_label_keys` (`list`): These are labels that each inspection request must include within their &#39;finding_labels&#39; map. Request
may contain others, but any missing one of these will be rejected.

Label keys must be between 1 and 63 characters long and must conform to the following regular expression: &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39;.

No more than 10 keys can be required. When `null`, the `required_finding_label_keys` field will be omitted from the resulting object.
  - `table_options` (`list[obj]`): If the container is a table, additional information to make findings meaningful such as the columns that are primary keys. When `null`, the `table_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.hybrid_options.table_options.new](#fn-inspect_jobinspect_jobstorage_configtable_optionsnew) constructor.

**Returns**:
  - An attribute object that represents the `hybrid_options` sub block.


## obj inspect_job.storage_config.hybrid_options.table_options



### fn inspect_job.storage_config.hybrid_options.table_options.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.hybrid_options.table_options.new` constructs a new object with attributes and blocks configured for the `table_options`
Terraform sub block.



**Args**:
  - `identifying_fields` (`list[obj]`): The columns that are the primary keys for table objects included in ContentItem. A copy of this
cell&#39;s value will stored alongside alongside each finding so that the finding can be traced to
the specific row it came from. No more than 3 may be provided. When `null`, the `identifying_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.hybrid_options.table_options.identifying_fields.new](#fn-inspect_jobinspect_jobstorage_confighybrid_optionsidentifying_fieldsnew) constructor.

**Returns**:
  - An attribute object that represents the `table_options` sub block.


## obj inspect_job.storage_config.hybrid_options.table_options.identifying_fields



### fn inspect_job.storage_config.hybrid_options.table_options.identifying_fields.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.hybrid_options.table_options.identifying_fields.new` constructs a new object with attributes and blocks configured for the `identifying_fields`
Terraform sub block.



**Args**:
  - `name` (`string`): Name describing the field.

**Returns**:
  - An attribute object that represents the `identifying_fields` sub block.


## obj inspect_job.storage_config.timespan_config



### fn inspect_job.storage_config.timespan_config.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.new` constructs a new object with attributes and blocks configured for the `timespan_config`
Terraform sub block.



**Args**:
  - `enable_auto_population_of_timespan_config` (`bool`): When the job is started by a JobTrigger we will automatically figure out a valid startTime to avoid
scanning files that have not been modified since the last time the JobTrigger executed. This will
be based on the time of the execution of the last run of the JobTrigger. When `null`, the `enable_auto_population_of_timespan_config` field will be omitted from the resulting object.
  - `end_time` (`string`): Exclude files or rows newer than this value. If set to zero, no upper time limit is applied. When `null`, the `end_time` field will be omitted from the resulting object.
  - `start_time` (`string`): Exclude files or rows older than this value. When `null`, the `start_time` field will be omitted from the resulting object.
  - `timestamp_field` (`list[obj]`): Information on where to inspect When `null`, the `timestamp_field` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.timestamp_field.new](#fn-inspect_jobinspect_jobstorage_configtimestamp_fieldnew) constructor.

**Returns**:
  - An attribute object that represents the `timespan_config` sub block.


## obj inspect_job.storage_config.timespan_config.timestamp_field



### fn inspect_job.storage_config.timespan_config.timestamp_field.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.inspect_job.storage_config.timespan_config.timestamp_field.new` constructs a new object with attributes and blocks configured for the `timestamp_field`
Terraform sub block.



**Args**:
  - `name` (`string`): Specification of the field containing the timestamp of scanned items. Used for data sources like Datastore and BigQuery.

For BigQuery: Required to filter out rows based on the given start and end times. If not specified and the table was
modified between the given start and end times, the entire table will be scanned. The valid data types of the timestamp
field are: INTEGER, DATE, TIMESTAMP, or DATETIME BigQuery column.

For Datastore. Valid data types of the timestamp field are: TIMESTAMP. Datastore entity will be scanned if the
timestamp property does not exist or its value is empty or invalid.

**Returns**:
  - An attribute object that represents the `timestamp_field` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj triggers



### fn triggers.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.triggers.new` constructs a new object with attributes and blocks configured for the `triggers`
Terraform sub block.



**Args**:
  - `manual` (`list[obj]`): For use with hybrid jobs. Jobs must be manually created and finished. When `null`, the `manual` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.triggers.manual.new](#fn-triggersmanualnew) constructor.
  - `schedule` (`list[obj]`): Schedule for triggered jobs When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_job_trigger.triggers.schedule.new](#fn-triggersschedulenew) constructor.

**Returns**:
  - An attribute object that represents the `triggers` sub block.


## obj triggers.manual



### fn triggers.manual.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.triggers.manual.new` constructs a new object with attributes and blocks configured for the `manual`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `manual` sub block.


## obj triggers.schedule



### fn triggers.schedule.new

```ts
new()
```


`google.data_loss_prevention_job_trigger.triggers.schedule.new` constructs a new object with attributes and blocks configured for the `schedule`
Terraform sub block.



**Args**:
  - `recurrence_period_duration` (`string`): With this option a job is started a regular periodic basis. For example: every day (86400 seconds).

A scheduled start time will be skipped if the previous execution has not ended when its scheduled time occurs.

This value must be set to a time duration greater than or equal to 1 day and can be no longer than 60 days.

A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `recurrence_period_duration` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `schedule` sub block.
