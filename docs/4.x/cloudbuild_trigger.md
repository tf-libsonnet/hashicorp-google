---
permalink: /cloudbuild_trigger/
---

# cloudbuild_trigger

`cloudbuild_trigger` represents the `google_cloudbuild_trigger` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withApprovalConfig()`](#fn-withapprovalconfig)
* [`fn withApprovalConfigMixin()`](#fn-withapprovalconfigmixin)
* [`fn withBuild()`](#fn-withbuild)
* [`fn withBuildMixin()`](#fn-withbuildmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisabled()`](#fn-withdisabled)
* [`fn withFilename()`](#fn-withfilename)
* [`fn withFilter()`](#fn-withfilter)
* [`fn withGitFileSource()`](#fn-withgitfilesource)
* [`fn withGitFileSourceMixin()`](#fn-withgitfilesourcemixin)
* [`fn withGithub()`](#fn-withgithub)
* [`fn withGithubMixin()`](#fn-withgithubmixin)
* [`fn withIgnoredFiles()`](#fn-withignoredfiles)
* [`fn withIncludeBuildLogs()`](#fn-withincludebuildlogs)
* [`fn withIncludedFiles()`](#fn-withincludedfiles)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withPubsubConfig()`](#fn-withpubsubconfig)
* [`fn withPubsubConfigMixin()`](#fn-withpubsubconfigmixin)
* [`fn withServiceAccount()`](#fn-withserviceaccount)
* [`fn withSourceToBuild()`](#fn-withsourcetobuild)
* [`fn withSourceToBuildMixin()`](#fn-withsourcetobuildmixin)
* [`fn withSubstitutions()`](#fn-withsubstitutions)
* [`fn withTags()`](#fn-withtags)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTriggerTemplate()`](#fn-withtriggertemplate)
* [`fn withTriggerTemplateMixin()`](#fn-withtriggertemplatemixin)
* [`fn withWebhookConfig()`](#fn-withwebhookconfig)
* [`fn withWebhookConfigMixin()`](#fn-withwebhookconfigmixin)
* [`obj approval_config`](#obj-approval_config)
  * [`fn new()`](#fn-approval_confignew)
* [`obj build`](#obj-build)
  * [`fn new()`](#fn-buildnew)
  * [`obj build.artifacts`](#obj-buildartifacts)
    * [`fn new()`](#fn-buildartifactsnew)
    * [`obj build.artifacts.objects`](#obj-buildartifactsobjects)
      * [`fn new()`](#fn-buildartifactsobjectsnew)
  * [`obj build.available_secrets`](#obj-buildavailable_secrets)
    * [`fn new()`](#fn-buildavailable_secretsnew)
    * [`obj build.available_secrets.secret_manager`](#obj-buildavailable_secretssecret_manager)
      * [`fn new()`](#fn-buildavailable_secretssecret_managernew)
  * [`obj build.options`](#obj-buildoptions)
    * [`fn new()`](#fn-buildoptionsnew)
    * [`obj build.options.volumes`](#obj-buildoptionsvolumes)
      * [`fn new()`](#fn-buildoptionsvolumesnew)
  * [`obj build.secret`](#obj-buildsecret)
    * [`fn new()`](#fn-buildsecretnew)
  * [`obj build.source`](#obj-buildsource)
    * [`fn new()`](#fn-buildsourcenew)
    * [`obj build.source.repo_source`](#obj-buildsourcerepo_source)
      * [`fn new()`](#fn-buildsourcerepo_sourcenew)
    * [`obj build.source.storage_source`](#obj-buildsourcestorage_source)
      * [`fn new()`](#fn-buildsourcestorage_sourcenew)
  * [`obj build.step`](#obj-buildstep)
    * [`fn new()`](#fn-buildstepnew)
    * [`obj build.step.volumes`](#obj-buildstepvolumes)
      * [`fn new()`](#fn-buildstepvolumesnew)
* [`obj git_file_source`](#obj-git_file_source)
  * [`fn new()`](#fn-git_file_sourcenew)
* [`obj github`](#obj-github)
  * [`fn new()`](#fn-githubnew)
  * [`obj github.pull_request`](#obj-githubpull_request)
    * [`fn new()`](#fn-githubpull_requestnew)
  * [`obj github.push`](#obj-githubpush)
    * [`fn new()`](#fn-githubpushnew)
* [`obj pubsub_config`](#obj-pubsub_config)
  * [`fn new()`](#fn-pubsub_confignew)
* [`obj source_to_build`](#obj-source_to_build)
  * [`fn new()`](#fn-source_to_buildnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj trigger_template`](#obj-trigger_template)
  * [`fn new()`](#fn-trigger_templatenew)
* [`obj webhook_config`](#obj-webhook_config)
  * [`fn new()`](#fn-webhook_confignew)

## Fields

### fn new

```ts
new()
```


`google.cloudbuild_trigger.new` injects a new `google_cloudbuild_trigger` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloudbuild_trigger.new('some_id')

You can get the reference to the `id` field of the created `google.cloudbuild_trigger` using the reference:

    $._ref.google_cloudbuild_trigger.some_id.get('id')

This is the same as directly entering `"${ google_cloudbuild_trigger.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Human-readable description of the trigger. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): Whether the trigger is disabled or not. If true, the trigger will never result in a build. When `null`, the `disabled` field will be omitted from the resulting object.
  - `filename` (`string`): Path, from the source root, to a file whose contents is used for the template. 
Either a filename or build template must be provided. Set this only when using trigger_template or github.
When using Pub/Sub, Webhook or Manual set the file name using git_file_source instead. When `null`, the `filename` field will be omitted from the resulting object.
  - `filter` (`string`): A Common Expression Language string. Used only with Pub/Sub and Webhook. When `null`, the `filter` field will be omitted from the resulting object.
  - `ignored_files` (`list`): ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match
extended with support for &#39;**&#39;.

If ignoredFiles and changed files are both empty, then they are not
used to determine whether or not to trigger a build.

If ignoredFiles is not empty, then we ignore any files that match any
of the ignored_file globs. If the change has no files that are outside
of the ignoredFiles globs, then we do not trigger a build. When `null`, the `ignored_files` field will be omitted from the resulting object.
  - `include_build_logs` (`string`): Build logs will be sent back to GitHub as part of the checkrun
result.  Values can be INCLUDE_BUILD_LOGS_UNSPECIFIED or
INCLUDE_BUILD_LOGS_WITH_STATUS Possible values: [&#34;INCLUDE_BUILD_LOGS_UNSPECIFIED&#34;, &#34;INCLUDE_BUILD_LOGS_WITH_STATUS&#34;] When `null`, the `include_build_logs` field will be omitted from the resulting object.
  - `included_files` (`list`): ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match
extended with support for &#39;**&#39;.

If any of the files altered in the commit pass the ignoredFiles filter
and includedFiles is empty, then as far as this filter is concerned, we
should trigger the build.

If any of the files altered in the commit pass the ignoredFiles filter
and includedFiles is not empty, then we make sure that at least one of
those files matches a includedFiles glob. If not, then we do not trigger
a build. When `null`, the `included_files` field will be omitted from the resulting object.
  - `location` (`string`): The [Cloud Build location](https://cloud.google.com/build/docs/locations) for the trigger.
If not specified, &#34;global&#34; is used. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): Name of the trigger. Must be unique within the project. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `service_account` (`string`): The service account used for all user-controlled operations including
triggers.patch, triggers.run, builds.create, and builds.cancel.

If no service account is set, then the standard Cloud Build service account
([PROJECT_NUM]@system.gserviceaccount.com) will be used instead.

Format: projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT_ID_OR_EMAIL} When `null`, the `service_account` field will be omitted from the resulting object.
  - `substitutions` (`obj`): Substitutions data for Build resource. When `null`, the `substitutions` field will be omitted from the resulting object.
  - `tags` (`list`): Tags for annotation of a BuildTrigger When `null`, the `tags` field will be omitted from the resulting object.
  - `approval_config` (`list[obj]`): Configuration for manual approval to start a build invocation of this BuildTrigger. 
Builds created by this trigger will require approval before they execute. 
Any user with a Cloud Build Approver role for the project can approve a build. When `null`, the `approval_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.approval_config.new](#fn-approval_confignew) constructor.
  - `build` (`list[obj]`): Contents of the build template. Either a filename or build template must be provided. When `null`, the `build` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.new](#fn-buildnew) constructor.
  - `git_file_source` (`list[obj]`): The file source describing the local or remote Build template. When `null`, the `git_file_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.git_file_source.new](#fn-git_file_sourcenew) constructor.
  - `github` (`list[obj]`): Describes the configuration of a trigger that creates a build whenever a GitHub event is received.

One of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39; or &#39;webhook_config&#39; must be provided. When `null`, the `github` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.github.new](#fn-githubnew) constructor.
  - `pubsub_config` (`list[obj]`): PubsubConfig describes the configuration of a trigger that creates 
a build whenever a Pub/Sub message is published.

One of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39; &#39;webhook_config&#39; or &#39;source_to_build&#39; must be provided. When `null`, the `pubsub_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.pubsub_config.new](#fn-pubsub_confignew) constructor.
  - `source_to_build` (`list[obj]`): The repo and ref of the repository from which to build. 
This field is used only for those triggers that do not respond to SCM events. 
Triggers that respond to such events build source at whatever commit caused the event. 
This field is currently only used by Webhook, Pub/Sub, Manual, and Cron triggers.

One of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39; &#39;webhook_config&#39; or &#39;source_to_build&#39; must be provided. When `null`, the `source_to_build` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.source_to_build.new](#fn-source_to_buildnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.timeouts.new](#fn-timeoutsnew) constructor.
  - `trigger_template` (`list[obj]`): Template describing the types of source changes to trigger a build.

Branch and tag names in trigger templates are interpreted as regular
expressions. Any branch or tag change that matches that regular
expression will trigger a build.

One of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39;, &#39;webhook_config&#39; or &#39;source_to_build&#39; must be provided. When `null`, the `trigger_template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.trigger_template.new](#fn-trigger_templatenew) constructor.
  - `webhook_config` (`list[obj]`): WebhookConfig describes the configuration of a trigger that creates 
a build whenever a webhook is sent to a trigger&#39;s webhook URL.

One of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39; &#39;webhook_config&#39; or &#39;source_to_build&#39; must be provided. When `null`, the `webhook_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.webhook_config.new](#fn-webhook_confignew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloudbuild_trigger.newAttrs` constructs a new object with attributes and blocks configured for the `cloudbuild_trigger`
Terraform resource.

Unlike [google.cloudbuild_trigger.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Human-readable description of the trigger. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): Whether the trigger is disabled or not. If true, the trigger will never result in a build. When `null`, the `disabled` field will be omitted from the resulting object.
  - `filename` (`string`): Path, from the source root, to a file whose contents is used for the template. 
Either a filename or build template must be provided. Set this only when using trigger_template or github.
When using Pub/Sub, Webhook or Manual set the file name using git_file_source instead. When `null`, the `filename` field will be omitted from the resulting object.
  - `filter` (`string`): A Common Expression Language string. Used only with Pub/Sub and Webhook. When `null`, the `filter` field will be omitted from the resulting object.
  - `ignored_files` (`list`): ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match
extended with support for &#39;**&#39;.

If ignoredFiles and changed files are both empty, then they are not
used to determine whether or not to trigger a build.

If ignoredFiles is not empty, then we ignore any files that match any
of the ignored_file globs. If the change has no files that are outside
of the ignoredFiles globs, then we do not trigger a build. When `null`, the `ignored_files` field will be omitted from the resulting object.
  - `include_build_logs` (`string`): Build logs will be sent back to GitHub as part of the checkrun
result.  Values can be INCLUDE_BUILD_LOGS_UNSPECIFIED or
INCLUDE_BUILD_LOGS_WITH_STATUS Possible values: [&#34;INCLUDE_BUILD_LOGS_UNSPECIFIED&#34;, &#34;INCLUDE_BUILD_LOGS_WITH_STATUS&#34;] When `null`, the `include_build_logs` field will be omitted from the resulting object.
  - `included_files` (`list`): ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match
extended with support for &#39;**&#39;.

If any of the files altered in the commit pass the ignoredFiles filter
and includedFiles is empty, then as far as this filter is concerned, we
should trigger the build.

If any of the files altered in the commit pass the ignoredFiles filter
and includedFiles is not empty, then we make sure that at least one of
those files matches a includedFiles glob. If not, then we do not trigger
a build. When `null`, the `included_files` field will be omitted from the resulting object.
  - `location` (`string`): The [Cloud Build location](https://cloud.google.com/build/docs/locations) for the trigger.
If not specified, &#34;global&#34; is used. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): Name of the trigger. Must be unique within the project. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `service_account` (`string`): The service account used for all user-controlled operations including
triggers.patch, triggers.run, builds.create, and builds.cancel.

If no service account is set, then the standard Cloud Build service account
([PROJECT_NUM]@system.gserviceaccount.com) will be used instead.

Format: projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT_ID_OR_EMAIL} When `null`, the `service_account` field will be omitted from the resulting object.
  - `substitutions` (`obj`): Substitutions data for Build resource. When `null`, the `substitutions` field will be omitted from the resulting object.
  - `tags` (`list`): Tags for annotation of a BuildTrigger When `null`, the `tags` field will be omitted from the resulting object.
  - `approval_config` (`list[obj]`): Configuration for manual approval to start a build invocation of this BuildTrigger. 
Builds created by this trigger will require approval before they execute. 
Any user with a Cloud Build Approver role for the project can approve a build. When `null`, the `approval_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.approval_config.new](#fn-approval_confignew) constructor.
  - `build` (`list[obj]`): Contents of the build template. Either a filename or build template must be provided. When `null`, the `build` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.new](#fn-buildnew) constructor.
  - `git_file_source` (`list[obj]`): The file source describing the local or remote Build template. When `null`, the `git_file_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.git_file_source.new](#fn-git_file_sourcenew) constructor.
  - `github` (`list[obj]`): Describes the configuration of a trigger that creates a build whenever a GitHub event is received.

One of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39; or &#39;webhook_config&#39; must be provided. When `null`, the `github` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.github.new](#fn-githubnew) constructor.
  - `pubsub_config` (`list[obj]`): PubsubConfig describes the configuration of a trigger that creates 
a build whenever a Pub/Sub message is published.

One of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39; &#39;webhook_config&#39; or &#39;source_to_build&#39; must be provided. When `null`, the `pubsub_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.pubsub_config.new](#fn-pubsub_confignew) constructor.
  - `source_to_build` (`list[obj]`): The repo and ref of the repository from which to build. 
This field is used only for those triggers that do not respond to SCM events. 
Triggers that respond to such events build source at whatever commit caused the event. 
This field is currently only used by Webhook, Pub/Sub, Manual, and Cron triggers.

One of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39; &#39;webhook_config&#39; or &#39;source_to_build&#39; must be provided. When `null`, the `source_to_build` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.source_to_build.new](#fn-source_to_buildnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.timeouts.new](#fn-timeoutsnew) constructor.
  - `trigger_template` (`list[obj]`): Template describing the types of source changes to trigger a build.

Branch and tag names in trigger templates are interpreted as regular
expressions. Any branch or tag change that matches that regular
expression will trigger a build.

One of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39;, &#39;webhook_config&#39; or &#39;source_to_build&#39; must be provided. When `null`, the `trigger_template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.trigger_template.new](#fn-trigger_templatenew) constructor.
  - `webhook_config` (`list[obj]`): WebhookConfig describes the configuration of a trigger that creates 
a build whenever a webhook is sent to a trigger&#39;s webhook URL.

One of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39; &#39;webhook_config&#39; or &#39;source_to_build&#39; must be provided. When `null`, the `webhook_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.webhook_config.new](#fn-webhook_confignew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudbuild_trigger` resource into the root Terraform configuration.


### fn withApprovalConfig

```ts
withApprovalConfig()
```

`google.list[obj].withApprovalConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the approval_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withApprovalConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `approval_config` field.


### fn withApprovalConfigMixin

```ts
withApprovalConfigMixin()
```

`google.list[obj].withApprovalConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the approval_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withApprovalConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `approval_config` field.


### fn withBuild

```ts
withBuild()
```

`google.list[obj].withBuild` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the build field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBuildMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `build` field.


### fn withBuildMixin

```ts
withBuildMixin()
```

`google.list[obj].withBuildMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the build field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBuild](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `build` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisabled

```ts
withDisabled()
```

`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disabled` field.


### fn withFilename

```ts
withFilename()
```

`google.string.withFilename` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the filename field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `filename` field.


### fn withFilter

```ts
withFilter()
```

`google.string.withFilter` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the filter field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `filter` field.


### fn withGitFileSource

```ts
withGitFileSource()
```

`google.list[obj].withGitFileSource` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the git_file_source field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGitFileSourceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `git_file_source` field.


### fn withGitFileSourceMixin

```ts
withGitFileSourceMixin()
```

`google.list[obj].withGitFileSourceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the git_file_source field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGitFileSource](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `git_file_source` field.


### fn withGithub

```ts
withGithub()
```

`google.list[obj].withGithub` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the github field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGithubMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `github` field.


### fn withGithubMixin

```ts
withGithubMixin()
```

`google.list[obj].withGithubMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the github field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGithub](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `github` field.


### fn withIgnoredFiles

```ts
withIgnoredFiles()
```

`google.list.withIgnoredFiles` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the ignored_files field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `ignored_files` field.


### fn withIncludeBuildLogs

```ts
withIncludeBuildLogs()
```

`google.string.withIncludeBuildLogs` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the include_build_logs field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `include_build_logs` field.


### fn withIncludedFiles

```ts
withIncludedFiles()
```

`google.list.withIncludedFiles` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the included_files field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `included_files` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withPubsubConfig

```ts
withPubsubConfig()
```

`google.list[obj].withPubsubConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the pubsub_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPubsubConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `pubsub_config` field.


### fn withPubsubConfigMixin

```ts
withPubsubConfigMixin()
```

`google.list[obj].withPubsubConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the pubsub_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPubsubConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `pubsub_config` field.


### fn withServiceAccount

```ts
withServiceAccount()
```

`google.string.withServiceAccount` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_account field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_account` field.


### fn withSourceToBuild

```ts
withSourceToBuild()
```

`google.list[obj].withSourceToBuild` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source_to_build field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSourceToBuildMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source_to_build` field.


### fn withSourceToBuildMixin

```ts
withSourceToBuildMixin()
```

`google.list[obj].withSourceToBuildMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source_to_build field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSourceToBuild](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source_to_build` field.


### fn withSubstitutions

```ts
withSubstitutions()
```

`google.obj.withSubstitutions` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the substitutions field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `substitutions` field.


### fn withTags

```ts
withTags()
```

`google.list.withTags` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the tags field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `tags` field.


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


### fn withTriggerTemplate

```ts
withTriggerTemplate()
```

`google.list[obj].withTriggerTemplate` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the trigger_template field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTriggerTemplateMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `trigger_template` field.


### fn withTriggerTemplateMixin

```ts
withTriggerTemplateMixin()
```

`google.list[obj].withTriggerTemplateMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the trigger_template field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTriggerTemplate](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `trigger_template` field.


### fn withWebhookConfig

```ts
withWebhookConfig()
```

`google.list[obj].withWebhookConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the webhook_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withWebhookConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `webhook_config` field.


### fn withWebhookConfigMixin

```ts
withWebhookConfigMixin()
```

`google.list[obj].withWebhookConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the webhook_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withWebhookConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `webhook_config` field.


## obj approval_config



### fn approval_config.new

```ts
new()
```


`google.cloudbuild_trigger.approval_config.new` constructs a new object with attributes and blocks configured for the `approval_config`
Terraform sub block.



**Args**:
  - `approval_required` (`bool`): Whether or not approval is needed. If this is set on a build, it will become pending when run, 
and will need to be explicitly approved to start. When `null`, the `approval_required` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `approval_config` sub block.


## obj build



### fn build.new

```ts
new()
```


`google.cloudbuild_trigger.build.new` constructs a new object with attributes and blocks configured for the `build`
Terraform sub block.



**Args**:
  - `images` (`list`): A list of images to be pushed upon the successful completion of all build steps.
The images are pushed using the builder service account&#39;s credentials.
The digests of the pushed images will be stored in the Build resource&#39;s results field.
If any of the images fail to be pushed, the build status is marked FAILURE. When `null`, the `images` field will be omitted from the resulting object.
  - `logs_bucket` (`string`): Google Cloud Storage bucket where logs should be written. 
Logs file names will be of the format ${logsBucket}/log-${build_id}.txt. When `null`, the `logs_bucket` field will be omitted from the resulting object.
  - `queue_ttl` (`string`): TTL in queue for this build. If provided and the build is enqueued longer than this value, 
the build will expire and the build status will be EXPIRED.
The TTL starts ticking from createTime.
A duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `queue_ttl` field will be omitted from the resulting object.
  - `substitutions` (`obj`): Substitutions data for Build resource. When `null`, the `substitutions` field will be omitted from the resulting object.
  - `tags` (`list`): Tags for annotation of a Build. These are not docker tags. When `null`, the `tags` field will be omitted from the resulting object.
  - `timeout` (`string`): Amount of time that this build should be allowed to run, to second granularity.
If this amount of time elapses, work on the build will cease and the build status will be TIMEOUT.
This timeout must be equal to or greater than the sum of the timeouts for build steps within the build.
The expected format is the number of seconds followed by s.
Default time is ten minutes (600s). When `null`, the `timeout` field will be omitted from the resulting object.
  - `artifacts` (`list[obj]`): Artifacts produced by the build that should be uploaded upon successful completion of all build steps. When `null`, the `artifacts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.artifacts.new](#fn-cloudbuild_triggerartifactsnew) constructor.
  - `available_secrets` (`list[obj]`): Secrets and secret environment variables. When `null`, the `available_secrets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.available_secrets.new](#fn-cloudbuild_triggeravailable_secretsnew) constructor.
  - `options` (`list[obj]`): Special options for this build. When `null`, the `options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.options.new](#fn-cloudbuild_triggeroptionsnew) constructor.
  - `secret` (`list[obj]`): Secrets to decrypt using Cloud Key Management Service. When `null`, the `secret` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.secret.new](#fn-cloudbuild_triggersecretnew) constructor.
  - `source` (`list[obj]`): The location of the source files to build.

One of &#39;storageSource&#39; or &#39;repoSource&#39; must be provided. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.source.new](#fn-cloudbuild_triggersourcenew) constructor.
  - `step` (`list[obj]`): The operations to be performed on the workspace. When `null`, the `step` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.step.new](#fn-cloudbuild_triggerstepnew) constructor.

**Returns**:
  - An attribute object that represents the `build` sub block.


## obj build.artifacts



### fn build.artifacts.new

```ts
new()
```


`google.cloudbuild_trigger.build.artifacts.new` constructs a new object with attributes and blocks configured for the `artifacts`
Terraform sub block.



**Args**:
  - `images` (`list`): A list of images to be pushed upon the successful completion of all build steps.

The images will be pushed using the builder service account&#39;s credentials.

The digests of the pushed images will be stored in the Build resource&#39;s results field.

If any of the images fail to be pushed, the build is marked FAILURE. When `null`, the `images` field will be omitted from the resulting object.
  - `objects` (`list[obj]`): A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps.

Files in the workspace matching specified paths globs will be uploaded to the
Cloud Storage location using the builder service account&#39;s credentials.

The location and generation of the uploaded objects will be stored in the Build resource&#39;s results field.

If any objects fail to be pushed, the build is marked FAILURE. When `null`, the `objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.artifacts.objects.new](#fn-cloudbuild_triggerbuildobjectsnew) constructor.

**Returns**:
  - An attribute object that represents the `artifacts` sub block.


## obj build.artifacts.objects



### fn build.artifacts.objects.new

```ts
new()
```


`google.cloudbuild_trigger.build.artifacts.objects.new` constructs a new object with attributes and blocks configured for the `objects`
Terraform sub block.



**Args**:
  - `location` (`string`): Cloud Storage bucket and optional object path, in the form &#34;gs://bucket/path/to/somewhere/&#34;.

Files in the workspace matching any path pattern will be uploaded to Cloud Storage with
this location as a prefix. When `null`, the `location` field will be omitted from the resulting object.
  - `paths` (`list`): Path globs used to match files in the build&#39;s workspace. When `null`, the `paths` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `objects` sub block.


## obj build.available_secrets



### fn build.available_secrets.new

```ts
new()
```


`google.cloudbuild_trigger.build.available_secrets.new` constructs a new object with attributes and blocks configured for the `available_secrets`
Terraform sub block.



**Args**:
  - `secret_manager` (`list[obj]`): Pairs a secret environment variable with a SecretVersion in Secret Manager. When `null`, the `secret_manager` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.available_secrets.secret_manager.new](#fn-cloudbuild_triggerbuildsecret_managernew) constructor.

**Returns**:
  - An attribute object that represents the `available_secrets` sub block.


## obj build.available_secrets.secret_manager



### fn build.available_secrets.secret_manager.new

```ts
new()
```


`google.cloudbuild_trigger.build.available_secrets.secret_manager.new` constructs a new object with attributes and blocks configured for the `secret_manager`
Terraform sub block.



**Args**:
  - `env` (`string`): Environment variable name to associate with the secret. Secret environment
variables must be unique across all of a build&#39;s secrets, and must be used
by at least one build step.
  - `version_name` (`string`): Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*

**Returns**:
  - An attribute object that represents the `secret_manager` sub block.


## obj build.options



### fn build.options.new

```ts
new()
```


`google.cloudbuild_trigger.build.options.new` constructs a new object with attributes and blocks configured for the `options`
Terraform sub block.



**Args**:
  - `disk_size_gb` (`number`): Requested disk size for the VM that runs the build. Note that this is NOT &#34;disk free&#34;;
some of the space will be used by the operating system and build utilities.
Also note that this is the minimum disk size that will be allocated for the build --
the build may run with a larger disk than requested. At present, the maximum disk size
is 1000GB; builds that request more than the maximum are rejected with an error. When `null`, the `disk_size_gb` field will be omitted from the resulting object.
  - `dynamic_substitutions` (`bool`): Option to specify whether or not to apply bash style string operations to the substitutions.

NOTE this is always enabled for triggered builds and cannot be overridden in the build configuration file. When `null`, the `dynamic_substitutions` field will be omitted from the resulting object.
  - `env` (`list`): A list of global environment variable definitions that will exist for all build steps
in this build. If a variable is defined in both globally and in a build step,
the variable will use the build step value.

The elements are of the form &#34;KEY=VALUE&#34; for the environment variable &#34;KEY&#34; being given the value &#34;VALUE&#34;. When `null`, the `env` field will be omitted from the resulting object.
  - `log_streaming_option` (`string`): Option to define build log streaming behavior to Google Cloud Storage. Possible values: [&#34;STREAM_DEFAULT&#34;, &#34;STREAM_ON&#34;, &#34;STREAM_OFF&#34;] When `null`, the `log_streaming_option` field will be omitted from the resulting object.
  - `logging` (`string`): Option to specify the logging mode, which determines if and where build logs are stored. Possible values: [&#34;LOGGING_UNSPECIFIED&#34;, &#34;LEGACY&#34;, &#34;GCS_ONLY&#34;, &#34;STACKDRIVER_ONLY&#34;, &#34;CLOUD_LOGGING_ONLY&#34;, &#34;NONE&#34;] When `null`, the `logging` field will be omitted from the resulting object.
  - `machine_type` (`string`): Compute Engine machine type on which to run the build. Possible values: [&#34;UNSPECIFIED&#34;, &#34;N1_HIGHCPU_8&#34;, &#34;N1_HIGHCPU_32&#34;, &#34;E2_HIGHCPU_8&#34;, &#34;E2_HIGHCPU_32&#34;] When `null`, the `machine_type` field will be omitted from the resulting object.
  - `requested_verify_option` (`string`): Requested verifiability options. Possible values: [&#34;NOT_VERIFIED&#34;, &#34;VERIFIED&#34;] When `null`, the `requested_verify_option` field will be omitted from the resulting object.
  - `secret_env` (`list`): A list of global environment variables, which are encrypted using a Cloud Key Management
Service crypto key. These values must be specified in the build&#39;s Secret. These variables
will be available to all build steps in this build. When `null`, the `secret_env` field will be omitted from the resulting object.
  - `source_provenance_hash` (`list`): Requested hash for SourceProvenance. Possible values: [&#34;NONE&#34;, &#34;SHA256&#34;, &#34;MD5&#34;] When `null`, the `source_provenance_hash` field will be omitted from the resulting object.
  - `substitution_option` (`string`): Option to specify behavior when there is an error in the substitution checks.

NOTE this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden
in the build configuration file. Possible values: [&#34;MUST_MATCH&#34;, &#34;ALLOW_LOOSE&#34;] When `null`, the `substitution_option` field will be omitted from the resulting object.
  - `worker_pool` (`string`): Option to specify a WorkerPool for the build. Format projects/{project}/workerPools/{workerPool}

This field is experimental. When `null`, the `worker_pool` field will be omitted from the resulting object.
  - `volumes` (`list[obj]`): Global list of volumes to mount for ALL build steps

Each volume is created as an empty volume prior to starting the build process.
Upon completion of the build, volumes and their contents are discarded. Global
volume names and paths cannot conflict with the volumes defined a build step.

Using a global volume in a build with only one step is not valid as it is indicative
of a build request with an incorrect configuration. When `null`, the `volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.options.volumes.new](#fn-cloudbuild_triggerbuildvolumesnew) constructor.

**Returns**:
  - An attribute object that represents the `options` sub block.


## obj build.options.volumes



### fn build.options.volumes.new

```ts
new()
```


`google.cloudbuild_trigger.build.options.volumes.new` constructs a new object with attributes and blocks configured for the `volumes`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the volume to mount.

Volume names must be unique per build step and must be valid names for Docker volumes.
Each named volume must be used by at least two build steps. When `null`, the `name` field will be omitted from the resulting object.
  - `path` (`string`): Path at which to mount the volume.

Paths must be absolute and cannot conflict with other volume paths on the same
build step or with certain reserved volume paths. When `null`, the `path` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `volumes` sub block.


## obj build.secret



### fn build.secret.new

```ts
new()
```


`google.cloudbuild_trigger.build.secret.new` constructs a new object with attributes and blocks configured for the `secret`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): Cloud KMS key name to use to decrypt these envs.
  - `secret_env` (`obj`): Map of environment variable name to its encrypted value.
Secret environment variables must be unique across all of a build&#39;s secrets, 
and must be used by at least one build step. Values can be at most 64 KB in size. 
There can be at most 100 secret values across all of a build&#39;s secrets. When `null`, the `secret_env` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `secret` sub block.


## obj build.source



### fn build.source.new

```ts
new()
```


`google.cloudbuild_trigger.build.source.new` constructs a new object with attributes and blocks configured for the `source`
Terraform sub block.



**Args**:
  - `repo_source` (`list[obj]`): Location of the source in a Google Cloud Source Repository. When `null`, the `repo_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.source.repo_source.new](#fn-cloudbuild_triggerbuildrepo_sourcenew) constructor.
  - `storage_source` (`list[obj]`): Location of the source in an archive file in Google Cloud Storage. When `null`, the `storage_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.source.storage_source.new](#fn-cloudbuild_triggerbuildstorage_sourcenew) constructor.

**Returns**:
  - An attribute object that represents the `source` sub block.


## obj build.source.repo_source



### fn build.source.repo_source.new

```ts
new()
```


`google.cloudbuild_trigger.build.source.repo_source.new` constructs a new object with attributes and blocks configured for the `repo_source`
Terraform sub block.



**Args**:
  - `branch_name` (`string`): Regex matching branches to build. Exactly one a of branch name, tag, or commit SHA must be provided.
The syntax of the regular expressions accepted is the syntax accepted by RE2 and 
described at https://github.com/google/re2/wiki/Syntax When `null`, the `branch_name` field will be omitted from the resulting object.
  - `commit_sha` (`string`): Explicit commit SHA to build. Exactly one a of branch name, tag, or commit SHA must be provided. When `null`, the `commit_sha` field will be omitted from the resulting object.
  - `dir` (`string`): Directory, relative to the source root, in which to run the build.
This must be a relative path. If a step&#39;s dir is specified and is an absolute path, 
this value is ignored for that step&#39;s execution. When `null`, the `dir` field will be omitted from the resulting object.
  - `invert_regex` (`bool`): Only trigger a build if the revision regex does NOT match the revision regex. When `null`, the `invert_regex` field will be omitted from the resulting object.
  - `project_id` (`string`): ID of the project that owns the Cloud Source Repository. 
If omitted, the project ID requesting the build is assumed. When `null`, the `project_id` field will be omitted from the resulting object.
  - `repo_name` (`string`): Name of the Cloud Source Repository.
  - `substitutions` (`obj`): Substitutions to use in a triggered build. Should only be used with triggers.run When `null`, the `substitutions` field will be omitted from the resulting object.
  - `tag_name` (`string`): Regex matching tags to build. Exactly one a of branch name, tag, or commit SHA must be provided.
The syntax of the regular expressions accepted is the syntax accepted by RE2 and 
described at https://github.com/google/re2/wiki/Syntax When `null`, the `tag_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `repo_source` sub block.


## obj build.source.storage_source



### fn build.source.storage_source.new

```ts
new()
```


`google.cloudbuild_trigger.build.source.storage_source.new` constructs a new object with attributes and blocks configured for the `storage_source`
Terraform sub block.



**Args**:
  - `bucket` (`string`): Google Cloud Storage bucket containing the source.
  - `generation` (`string`): Google Cloud Storage generation for the object. 
If the generation is omitted, the latest generation will be used When `null`, the `generation` field will be omitted from the resulting object.
  - `object` (`string`): Google Cloud Storage object containing the source.
This object must be a gzipped archive file (.tar.gz) containing source to build.

**Returns**:
  - An attribute object that represents the `storage_source` sub block.


## obj build.step



### fn build.step.new

```ts
new()
```


`google.cloudbuild_trigger.build.step.new` constructs a new object with attributes and blocks configured for the `step`
Terraform sub block.



**Args**:
  - `args` (`list`): A list of arguments that will be presented to the step when it is started.

If the image used to run the step&#39;s container has an entrypoint, the args
are used as arguments to that entrypoint. If the image does not define an
entrypoint, the first element in args is used as the entrypoint, and the
remainder will be used as arguments. When `null`, the `args` field will be omitted from the resulting object.
  - `dir` (`string`): Working directory to use when running this step&#39;s container.

If this value is a relative path, it is relative to the build&#39;s working
directory. If this value is absolute, it may be outside the build&#39;s working
directory, in which case the contents of the path may not be persisted
across build step executions, unless a &#39;volume&#39; for that path is specified.

If the build specifies a &#39;RepoSource&#39; with &#39;dir&#39; and a step with a
&#39;dir&#39;,
which specifies an absolute path, the &#39;RepoSource&#39; &#39;dir&#39; is ignored
for the step&#39;s execution. When `null`, the `dir` field will be omitted from the resulting object.
  - `entrypoint` (`string`): Entrypoint to be used instead of the build step image&#39;s
default entrypoint.
If unset, the image&#39;s default entrypoint is used When `null`, the `entrypoint` field will be omitted from the resulting object.
  - `env` (`list`): A list of environment variable definitions to be used when
running a step.

The elements are of the form &#34;KEY=VALUE&#34; for the environment variable
&#34;KEY&#34; being given the value &#34;VALUE&#34;. When `null`, the `env` field will be omitted from the resulting object.
  - `name` (`string`): The name of the container image that will run this particular build step.

If the image is available in the host&#39;s Docker daemon&#39;s cache, it will be
run directly. If not, the host will attempt to pull the image first, using
the builder service account&#39;s credentials if necessary.

The Docker daemon&#39;s cache will already have the latest versions of all of
the officially supported build steps (see https://github.com/GoogleCloudPlatform/cloud-builders 
for images and examples).
The Docker daemon will also have cached many of the layers for some popular
images, like &#34;ubuntu&#34;, &#34;debian&#34;, but they will be refreshed at the time
you attempt to use them.

If you built an image in a previous build step, it will be stored in the
host&#39;s Docker daemon&#39;s cache and is available to use as the name for a
later build step.
  - `script` (`string`): A shell script to be executed in the step. 
When script is provided, the user cannot specify the entrypoint or args. When `null`, the `script` field will be omitted from the resulting object.
  - `secret_env` (`list`): A list of environment variables which are encrypted using
a Cloud Key
Management Service crypto key. These values must be specified in
the build&#39;s &#39;Secret&#39;. When `null`, the `secret_env` field will be omitted from the resulting object.
  - `timeout` (`string`): Time limit for executing this build step. If not defined,
the step has no
time limit and will be allowed to continue to run until either it
completes or the build itself times out. When `null`, the `timeout` field will be omitted from the resulting object.
  - `timing` (`string`): Output only. Stores timing information for executing this
build step. When `null`, the `timing` field will be omitted from the resulting object.
  - `wait_for` (`list`): The ID(s) of the step(s) that this build step depends on.

This build step will not start until all the build steps in &#39;wait_for&#39;
have completed successfully. If &#39;wait_for&#39; is empty, this build step
will start when all previous build steps in the &#39;Build.Steps&#39; list
have completed successfully. When `null`, the `wait_for` field will be omitted from the resulting object.
  - `volumes` (`list[obj]`): List of volumes to mount into the build step.

Each volume is created as an empty volume prior to execution of the
build step. Upon completion of the build, volumes and their contents
are discarded.

Using a named volume in only one step is not valid as it is
indicative of a build request with an incorrect configuration. When `null`, the `volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.step.volumes.new](#fn-cloudbuild_triggerbuildvolumesnew) constructor.

**Returns**:
  - An attribute object that represents the `step` sub block.


## obj build.step.volumes



### fn build.step.volumes.new

```ts
new()
```


`google.cloudbuild_trigger.build.step.volumes.new` constructs a new object with attributes and blocks configured for the `volumes`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the volume to mount.

Volume names must be unique per build step and must be valid names for
Docker volumes. Each named volume must be used by at least two build steps.
  - `path` (`string`): Path at which to mount the volume.

Paths must be absolute and cannot conflict with other volume paths on
the same build step or with certain reserved volume paths.

**Returns**:
  - An attribute object that represents the `volumes` sub block.


## obj git_file_source



### fn git_file_source.new

```ts
new()
```


`google.cloudbuild_trigger.git_file_source.new` constructs a new object with attributes and blocks configured for the `git_file_source`
Terraform sub block.



**Args**:
  - `path` (`string`): The path of the file, with the repo root as the root of the path.
  - `repo_type` (`string`): The type of the repo, since it may not be explicit from the repo field (e.g from a URL). 
Values can be UNKNOWN, CLOUD_SOURCE_REPOSITORIES, GITHUB, BITBUCKET_SERVER Possible values: [&#34;UNKNOWN&#34;, &#34;CLOUD_SOURCE_REPOSITORIES&#34;, &#34;GITHUB&#34;, &#34;BITBUCKET_SERVER&#34;]
  - `revision` (`string`): The branch, tag, arbitrary ref, or SHA version of the repo to use when resolving the 
filename (optional). This field respects the same syntax/resolution as described here: https://git-scm.com/docs/gitrevisions 
If unspecified, the revision from which the trigger invocation originated is assumed to be the revision from which to read the specified path. When `null`, the `revision` field will be omitted from the resulting object.
  - `uri` (`string`): The URI of the repo (optional). If unspecified, the repo from which the trigger 
invocation originated is assumed to be the repo from which to read the specified path. When `null`, the `uri` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `git_file_source` sub block.


## obj github



### fn github.new

```ts
new()
```


`google.cloudbuild_trigger.github.new` constructs a new object with attributes and blocks configured for the `github`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the repository. For example: The name for
https://github.com/googlecloudplatform/cloud-builders is &#34;cloud-builders&#34;. When `null`, the `name` field will be omitted from the resulting object.
  - `owner` (`string`): Owner of the repository. For example: The owner for
https://github.com/googlecloudplatform/cloud-builders is &#34;googlecloudplatform&#34;. When `null`, the `owner` field will be omitted from the resulting object.
  - `pull_request` (`list[obj]`): filter to match changes in pull requests. Specify only one of &#39;pull_request&#39; or &#39;push&#39;. When `null`, the `pull_request` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.github.pull_request.new](#fn-cloudbuild_triggerpull_requestnew) constructor.
  - `push` (`list[obj]`): filter to match changes in refs, like branches or tags. Specify only one of &#39;pull_request&#39; or &#39;push&#39;. When `null`, the `push` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.github.push.new](#fn-cloudbuild_triggerpushnew) constructor.

**Returns**:
  - An attribute object that represents the `github` sub block.


## obj github.pull_request



### fn github.pull_request.new

```ts
new()
```


`google.cloudbuild_trigger.github.pull_request.new` constructs a new object with attributes and blocks configured for the `pull_request`
Terraform sub block.



**Args**:
  - `branch` (`string`): Regex of branches to match.
  - `comment_control` (`string`): Whether to block builds on a &#34;/gcbrun&#34; comment from a repository owner or collaborator. Possible values: [&#34;COMMENTS_DISABLED&#34;, &#34;COMMENTS_ENABLED&#34;, &#34;COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY&#34;] When `null`, the `comment_control` field will be omitted from the resulting object.
  - `invert_regex` (`bool`): If true, branches that do NOT match the git_ref will trigger a build. When `null`, the `invert_regex` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `pull_request` sub block.


## obj github.push



### fn github.push.new

```ts
new()
```


`google.cloudbuild_trigger.github.push.new` constructs a new object with attributes and blocks configured for the `push`
Terraform sub block.



**Args**:
  - `branch` (`string`): Regex of branches to match.  Specify only one of branch or tag. When `null`, the `branch` field will be omitted from the resulting object.
  - `invert_regex` (`bool`): When true, only trigger a build if the revision regex does NOT match the git_ref regex. When `null`, the `invert_regex` field will be omitted from the resulting object.
  - `tag` (`string`): Regex of tags to match.  Specify only one of branch or tag. When `null`, the `tag` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `push` sub block.


## obj pubsub_config



### fn pubsub_config.new

```ts
new()
```


`google.cloudbuild_trigger.pubsub_config.new` constructs a new object with attributes and blocks configured for the `pubsub_config`
Terraform sub block.



**Args**:
  - `service_account_email` (`string`): Service account that will make the push request. When `null`, the `service_account_email` field will be omitted from the resulting object.
  - `topic` (`string`): The name of the topic from which this subscription is receiving messages.

**Returns**:
  - An attribute object that represents the `pubsub_config` sub block.


## obj source_to_build



### fn source_to_build.new

```ts
new()
```


`google.cloudbuild_trigger.source_to_build.new` constructs a new object with attributes and blocks configured for the `source_to_build`
Terraform sub block.



**Args**:
  - `ref` (`string`): The branch or tag to use. Must start with &#34;refs/&#34; (required).
  - `repo_type` (`string`): The type of the repo, since it may not be explicit from the repo field (e.g from a URL).
Values can be UNKNOWN, CLOUD_SOURCE_REPOSITORIES, GITHUB, BITBUCKET_SERVER Possible values: [&#34;UNKNOWN&#34;, &#34;CLOUD_SOURCE_REPOSITORIES&#34;, &#34;GITHUB&#34;, &#34;BITBUCKET_SERVER&#34;]
  - `uri` (`string`): The URI of the repo (required).

**Returns**:
  - An attribute object that represents the `source_to_build` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloudbuild_trigger.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj trigger_template



### fn trigger_template.new

```ts
new()
```


`google.cloudbuild_trigger.trigger_template.new` constructs a new object with attributes and blocks configured for the `trigger_template`
Terraform sub block.



**Args**:
  - `branch_name` (`string`): Name of the branch to build. Exactly one a of branch name, tag, or commit SHA must be provided.
This field is a regular expression. When `null`, the `branch_name` field will be omitted from the resulting object.
  - `commit_sha` (`string`): Explicit commit SHA to build. Exactly one of a branch name, tag, or commit SHA must be provided. When `null`, the `commit_sha` field will be omitted from the resulting object.
  - `dir` (`string`): Directory, relative to the source root, in which to run the build.

This must be a relative path. If a step&#39;s dir is specified and
is an absolute path, this value is ignored for that step&#39;s
execution. When `null`, the `dir` field will be omitted from the resulting object.
  - `invert_regex` (`bool`): Only trigger a build if the revision regex does NOT match the revision regex. When `null`, the `invert_regex` field will be omitted from the resulting object.
  - `project_id` (`string`): ID of the project that owns the Cloud Source Repository. If
omitted, the project ID requesting the build is assumed. When `null`, the `project_id` field will be omitted from the resulting object.
  - `repo_name` (`string`): Name of the Cloud Source Repository. If omitted, the name &#34;default&#34; is assumed. When `null`, the `repo_name` field will be omitted from the resulting object.
  - `tag_name` (`string`): Name of the tag to build. Exactly one of a branch name, tag, or commit SHA must be provided.
This field is a regular expression. When `null`, the `tag_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `trigger_template` sub block.


## obj webhook_config



### fn webhook_config.new

```ts
new()
```


`google.cloudbuild_trigger.webhook_config.new` constructs a new object with attributes and blocks configured for the `webhook_config`
Terraform sub block.



**Args**:
  - `secret` (`string`): Resource name for the secret required as a URL parameter.

**Returns**:
  - An attribute object that represents the `webhook_config` sub block.
