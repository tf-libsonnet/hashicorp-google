---
permalink: /gke_backup_restore_plan/
---

# gke_backup_restore_plan

`gke_backup_restore_plan` represents the `google_gke_backup_restore_plan` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBackupPlan()`](#fn-withbackupplan)
* [`fn withCluster()`](#fn-withcluster)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRestoreConfig()`](#fn-withrestoreconfig)
* [`fn withRestoreConfigMixin()`](#fn-withrestoreconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj restore_config`](#obj-restore_config)
  * [`fn new()`](#fn-restore_confignew)
  * [`obj restore_config.cluster_resource_restore_scope`](#obj-restore_configcluster_resource_restore_scope)
    * [`fn new()`](#fn-restore_configcluster_resource_restore_scopenew)
    * [`obj restore_config.cluster_resource_restore_scope.excluded_group_kinds`](#obj-restore_configcluster_resource_restore_scopeexcluded_group_kinds)
      * [`fn new()`](#fn-restore_configcluster_resource_restore_scopeexcluded_group_kindsnew)
    * [`obj restore_config.cluster_resource_restore_scope.selected_group_kinds`](#obj-restore_configcluster_resource_restore_scopeselected_group_kinds)
      * [`fn new()`](#fn-restore_configcluster_resource_restore_scopeselected_group_kindsnew)
  * [`obj restore_config.excluded_namespaces`](#obj-restore_configexcluded_namespaces)
    * [`fn new()`](#fn-restore_configexcluded_namespacesnew)
  * [`obj restore_config.selected_applications`](#obj-restore_configselected_applications)
    * [`fn new()`](#fn-restore_configselected_applicationsnew)
    * [`obj restore_config.selected_applications.namespaced_names`](#obj-restore_configselected_applicationsnamespaced_names)
      * [`fn new()`](#fn-restore_configselected_applicationsnamespaced_namesnew)
  * [`obj restore_config.selected_namespaces`](#obj-restore_configselected_namespaces)
    * [`fn new()`](#fn-restore_configselected_namespacesnew)
  * [`obj restore_config.transformation_rules`](#obj-restore_configtransformation_rules)
    * [`fn new()`](#fn-restore_configtransformation_rulesnew)
    * [`obj restore_config.transformation_rules.field_actions`](#obj-restore_configtransformation_rulesfield_actions)
      * [`fn new()`](#fn-restore_configtransformation_rulesfield_actionsnew)
    * [`obj restore_config.transformation_rules.resource_filter`](#obj-restore_configtransformation_rulesresource_filter)
      * [`fn new()`](#fn-restore_configtransformation_rulesresource_filternew)
      * [`obj restore_config.transformation_rules.resource_filter.group_kinds`](#obj-restore_configtransformation_rulesresource_filtergroup_kinds)
        * [`fn new()`](#fn-restore_configtransformation_rulesresource_filtergroup_kindsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.gke_backup_restore_plan.new` injects a new `google_gke_backup_restore_plan` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.gke_backup_restore_plan.new('some_id')

You can get the reference to the `id` field of the created `google.gke_backup_restore_plan` using the reference:

    $._ref.google_gke_backup_restore_plan.some_id.get('id')

This is the same as directly entering `"${ google_gke_backup_restore_plan.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `backup_plan` (`string`): A reference to the BackupPlan from which Backups may be used
as the source for Restores created via this RestorePlan.
  - `cluster` (`string`): The source cluster from which Restores will be created via this RestorePlan.
  - `description` (`string`): User specified descriptive string for this RestorePlan. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Description: A set of custom labels supplied by the user.
A list of key-&gt;value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The region of the Restore Plan.
  - `name` (`string`): The full name of the BackupPlan Resource.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `restore_config` (`list[obj]`): Defines the configuration of Restores created via this RestorePlan. When `null`, the `restore_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.new](#fn-restore_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.gke_backup_restore_plan.newAttrs` constructs a new object with attributes and blocks configured for the `gke_backup_restore_plan`
Terraform resource.

Unlike [google.gke_backup_restore_plan.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `backup_plan` (`string`): A reference to the BackupPlan from which Backups may be used
as the source for Restores created via this RestorePlan.
  - `cluster` (`string`): The source cluster from which Restores will be created via this RestorePlan.
  - `description` (`string`): User specified descriptive string for this RestorePlan. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Description: A set of custom labels supplied by the user.
A list of key-&gt;value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The region of the Restore Plan.
  - `name` (`string`): The full name of the BackupPlan Resource.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `restore_config` (`list[obj]`): Defines the configuration of Restores created via this RestorePlan. When `null`, the `restore_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.new](#fn-restore_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_backup_restore_plan` resource into the root Terraform configuration.


### fn withBackupPlan

```ts
withBackupPlan()
```

`google.string.withBackupPlan` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the backup_plan field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `backup_plan` field.


### fn withCluster

```ts
withCluster()
```

`google.string.withCluster` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


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


### fn withRestoreConfig

```ts
withRestoreConfig()
```

`google.list[obj].withRestoreConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the restore_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRestoreConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `restore_config` field.


### fn withRestoreConfigMixin

```ts
withRestoreConfigMixin()
```

`google.list[obj].withRestoreConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the restore_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRestoreConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `restore_config` field.


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


## obj restore_config



### fn restore_config.new

```ts
new()
```


`google.gke_backup_restore_plan.restore_config.new` constructs a new object with attributes and blocks configured for the `restore_config`
Terraform sub block.



**Args**:
  - `all_namespaces` (`bool`): If True, restore all namespaced resources in the Backup.
Setting this field to False will result in an error. When `null`, the `all_namespaces` field will be omitted from the resulting object.
  - `cluster_resource_conflict_policy` (`string`): Defines the behavior for handling the situation where cluster-scoped resources
being restored already exist in the target cluster.
This MUST be set to a value other than &#39;CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED&#39;
if &#39;clusterResourceRestoreScope&#39; is anyting other than &#39;noGroupKinds&#39;.
See https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#clusterresourceconflictpolicy
for more information on each policy option. Possible values: [&#34;USE_EXISTING_VERSION&#34;, &#34;USE_BACKUP_VERSION&#34;] When `null`, the `cluster_resource_conflict_policy` field will be omitted from the resulting object.
  - `namespaced_resource_restore_mode` (`string`): Defines the behavior for handling the situation where sets of namespaced resources
being restored already exist in the target cluster.
This MUST be set to a value other than &#39;NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED&#39;
if the &#39;namespacedResourceRestoreScope&#39; is anything other than &#39;noNamespaces&#39;.
See https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#namespacedresourcerestoremode
for more information on each mode. Possible values: [&#34;DELETE_AND_RESTORE&#34;, &#34;FAIL_ON_CONFLICT&#34;] When `null`, the `namespaced_resource_restore_mode` field will be omitted from the resulting object.
  - `no_namespaces` (`bool`): Do not restore any namespaced resources if set to &#34;True&#34;.
Specifying this field to &#34;False&#34; is not allowed. When `null`, the `no_namespaces` field will be omitted from the resulting object.
  - `volume_data_restore_policy` (`string`): Specifies the mechanism to be used to restore volume data.
This should be set to a value other than &#39;NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED&#39;
if the &#39;namespacedResourceRestoreScope&#39; is anything other than &#39;noNamespaces&#39;.
If not specified, it will be treated as &#39;NO_VOLUME_DATA_RESTORATION&#39;.
See https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#VolumeDataRestorePolicy
for more information on each policy option. Possible values: [&#34;RESTORE_VOLUME_DATA_FROM_BACKUP&#34;, &#34;REUSE_VOLUME_HANDLE_FROM_BACKUP&#34;, &#34;NO_VOLUME_DATA_RESTORATION&#34;] When `null`, the `volume_data_restore_policy` field will be omitted from the resulting object.
  - `cluster_resource_restore_scope` (`list[obj]`): Identifies the cluster-scoped resources to restore from the Backup. When `null`, the `cluster_resource_restore_scope` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.cluster_resource_restore_scope.new](#fn-restore_configcluster_resource_restore_scopenew) constructor.
  - `excluded_namespaces` (`list[obj]`): A list of selected namespaces excluded from restoration.
All namespaces except those in this list will be restored. When `null`, the `excluded_namespaces` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.excluded_namespaces.new](#fn-restore_configexcluded_namespacesnew) constructor.
  - `selected_applications` (`list[obj]`): A list of selected ProtectedApplications to restore.
The listed ProtectedApplications and all the resources
to which they refer will be restored. When `null`, the `selected_applications` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.selected_applications.new](#fn-restore_configselected_applicationsnew) constructor.
  - `selected_namespaces` (`list[obj]`): A list of selected namespaces to restore from the Backup.
The listed Namespaces and all resources contained in them will be restored. When `null`, the `selected_namespaces` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.selected_namespaces.new](#fn-restore_configselected_namespacesnew) constructor.
  - `transformation_rules` (`list[obj]`): A list of transformation rules to be applied against Kubernetes
resources as they are selected for restoration from a Backup.
Rules are executed in order defined - this order matters,
as changes made by a rule may impact the filtering logic of subsequent
rules. An empty list means no transformation will occur. When `null`, the `transformation_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.transformation_rules.new](#fn-restore_configtransformation_rulesnew) constructor.

**Returns**:
  - An attribute object that represents the `restore_config` sub block.


## obj restore_config.cluster_resource_restore_scope



### fn restore_config.cluster_resource_restore_scope.new

```ts
new()
```


`google.gke_backup_restore_plan.restore_config.cluster_resource_restore_scope.new` constructs a new object with attributes and blocks configured for the `cluster_resource_restore_scope`
Terraform sub block.



**Args**:
  - `all_group_kinds` (`bool`): If True, all valid cluster-scoped resources will be restored.
Mutually exclusive to any other field in &#39;clusterResourceRestoreScope&#39;. When `null`, the `all_group_kinds` field will be omitted from the resulting object.
  - `no_group_kinds` (`bool`): If True, no cluster-scoped resources will be restored.
Mutually exclusive to any other field in &#39;clusterResourceRestoreScope&#39;. When `null`, the `no_group_kinds` field will be omitted from the resulting object.
  - `excluded_group_kinds` (`list[obj]`): A list of cluster-scoped resource group kinds to NOT restore from the backup.
If specified, all valid cluster-scoped resources will be restored except
for those specified in the list.
Mutually exclusive to any other field in &#39;clusterResourceRestoreScope&#39;. When `null`, the `excluded_group_kinds` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.cluster_resource_restore_scope.excluded_group_kinds.new](#fn-restore_configrestore_configexcluded_group_kindsnew) constructor.
  - `selected_group_kinds` (`list[obj]`): A list of cluster-scoped resource group kinds to restore from the backup.
If specified, only the selected resources will be restored.
Mutually exclusive to any other field in the &#39;clusterResourceRestoreScope&#39;. When `null`, the `selected_group_kinds` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.cluster_resource_restore_scope.selected_group_kinds.new](#fn-restore_configrestore_configselected_group_kindsnew) constructor.

**Returns**:
  - An attribute object that represents the `cluster_resource_restore_scope` sub block.


## obj restore_config.cluster_resource_restore_scope.excluded_group_kinds



### fn restore_config.cluster_resource_restore_scope.excluded_group_kinds.new

```ts
new()
```


`google.gke_backup_restore_plan.restore_config.cluster_resource_restore_scope.excluded_group_kinds.new` constructs a new object with attributes and blocks configured for the `excluded_group_kinds`
Terraform sub block.



**Args**:
  - `resource_group` (`string`): API Group string of a Kubernetes resource, e.g.
&#34;apiextensions.k8s.io&#34;, &#34;storage.k8s.io&#34;, etc.
Use empty string for core group. When `null`, the `resource_group` field will be omitted from the resulting object.
  - `resource_kind` (`string`): Kind of a Kubernetes resource, e.g.
&#34;CustomResourceDefinition&#34;, &#34;StorageClass&#34;, etc. When `null`, the `resource_kind` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `excluded_group_kinds` sub block.


## obj restore_config.cluster_resource_restore_scope.selected_group_kinds



### fn restore_config.cluster_resource_restore_scope.selected_group_kinds.new

```ts
new()
```


`google.gke_backup_restore_plan.restore_config.cluster_resource_restore_scope.selected_group_kinds.new` constructs a new object with attributes and blocks configured for the `selected_group_kinds`
Terraform sub block.



**Args**:
  - `resource_group` (`string`): API Group string of a Kubernetes resource, e.g.
&#34;apiextensions.k8s.io&#34;, &#34;storage.k8s.io&#34;, etc.
Use empty string for core group. When `null`, the `resource_group` field will be omitted from the resulting object.
  - `resource_kind` (`string`): Kind of a Kubernetes resource, e.g.
&#34;CustomResourceDefinition&#34;, &#34;StorageClass&#34;, etc. When `null`, the `resource_kind` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `selected_group_kinds` sub block.


## obj restore_config.excluded_namespaces



### fn restore_config.excluded_namespaces.new

```ts
new()
```


`google.gke_backup_restore_plan.restore_config.excluded_namespaces.new` constructs a new object with attributes and blocks configured for the `excluded_namespaces`
Terraform sub block.



**Args**:
  - `namespaces` (`list`): A list of Kubernetes Namespaces.

**Returns**:
  - An attribute object that represents the `excluded_namespaces` sub block.


## obj restore_config.selected_applications



### fn restore_config.selected_applications.new

```ts
new()
```


`google.gke_backup_restore_plan.restore_config.selected_applications.new` constructs a new object with attributes and blocks configured for the `selected_applications`
Terraform sub block.



**Args**:
  - `namespaced_names` (`list[obj]`): A list of namespaced Kubernetes resources. When `null`, the `namespaced_names` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.selected_applications.namespaced_names.new](#fn-restore_configrestore_confignamespaced_namesnew) constructor.

**Returns**:
  - An attribute object that represents the `selected_applications` sub block.


## obj restore_config.selected_applications.namespaced_names



### fn restore_config.selected_applications.namespaced_names.new

```ts
new()
```


`google.gke_backup_restore_plan.restore_config.selected_applications.namespaced_names.new` constructs a new object with attributes and blocks configured for the `namespaced_names`
Terraform sub block.



**Args**:
  - `name` (`string`): The name of a Kubernetes Resource.
  - `namespace` (`string`): The namespace of a Kubernetes Resource.

**Returns**:
  - An attribute object that represents the `namespaced_names` sub block.


## obj restore_config.selected_namespaces



### fn restore_config.selected_namespaces.new

```ts
new()
```


`google.gke_backup_restore_plan.restore_config.selected_namespaces.new` constructs a new object with attributes and blocks configured for the `selected_namespaces`
Terraform sub block.



**Args**:
  - `namespaces` (`list`): A list of Kubernetes Namespaces.

**Returns**:
  - An attribute object that represents the `selected_namespaces` sub block.


## obj restore_config.transformation_rules



### fn restore_config.transformation_rules.new

```ts
new()
```


`google.gke_backup_restore_plan.restore_config.transformation_rules.new` constructs a new object with attributes and blocks configured for the `transformation_rules`
Terraform sub block.



**Args**:
  - `description` (`string`): The description is a user specified string description
of the transformation rule. When `null`, the `description` field will be omitted from the resulting object.
  - `field_actions` (`list[obj]`): A list of transformation rule actions to take against candidate
resources. Actions are executed in order defined - this order
matters, as they could potentially interfere with each other and
the first operation could affect the outcome of the second operation. When `null`, the `field_actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.transformation_rules.field_actions.new](#fn-restore_configrestore_configfield_actionsnew) constructor.
  - `resource_filter` (`list[obj]`): This field is used to specify a set of fields that should be used to
determine which resources in backup should be acted upon by the
supplied transformation rule actions, and this will ensure that only
specific resources are affected by transformation rule actions. When `null`, the `resource_filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.transformation_rules.resource_filter.new](#fn-restore_configrestore_configresource_filternew) constructor.

**Returns**:
  - An attribute object that represents the `transformation_rules` sub block.


## obj restore_config.transformation_rules.field_actions



### fn restore_config.transformation_rules.field_actions.new

```ts
new()
```


`google.gke_backup_restore_plan.restore_config.transformation_rules.field_actions.new` constructs a new object with attributes and blocks configured for the `field_actions`
Terraform sub block.



**Args**:
  - `from_path` (`string`): A string containing a JSON Pointer value that references the
location in the target document to move the value from. When `null`, the `from_path` field will be omitted from the resulting object.
  - `op` (`string`): Specifies the operation to perform. Possible values: [&#34;REMOVE&#34;, &#34;MOVE&#34;, &#34;COPY&#34;, &#34;ADD&#34;, &#34;TEST&#34;, &#34;REPLACE&#34;]
  - `path` (`string`): A string containing a JSON-Pointer value that references a
location within the target document where the operation is performed. When `null`, the `path` field will be omitted from the resulting object.
  - `value` (`string`): A string that specifies the desired value in string format
to use for transformation. When `null`, the `value` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `field_actions` sub block.


## obj restore_config.transformation_rules.resource_filter



### fn restore_config.transformation_rules.resource_filter.new

```ts
new()
```


`google.gke_backup_restore_plan.restore_config.transformation_rules.resource_filter.new` constructs a new object with attributes and blocks configured for the `resource_filter`
Terraform sub block.



**Args**:
  - `json_path` (`string`): This is a JSONPath expression that matches specific fields of
candidate resources and it operates as a filtering parameter
(resources that are not matched with this expression will not
be candidates for transformation). When `null`, the `json_path` field will be omitted from the resulting object.
  - `namespaces` (`list`): (Filtering parameter) Any resource subject to transformation must
be contained within one of the listed Kubernetes Namespace in the
Backup. If this field is not provided, no namespace filtering will
be performed (all resources in all Namespaces, including all
cluster-scoped resources, will be candidates for transformation).
To mix cluster-scoped and namespaced resources in the same rule,
use an empty string (&#34;&#34;) as one of the target namespaces. When `null`, the `namespaces` field will be omitted from the resulting object.
  - `group_kinds` (`list[obj]`): (Filtering parameter) Any resource subject to transformation must
belong to one of the listed &#34;types&#34;. If this field is not provided,
no type filtering will be performed
(all resources of all types matching previous filtering parameters
will be candidates for transformation). When `null`, the `group_kinds` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.transformation_rules.resource_filter.group_kinds.new](#fn-restore_configrestore_configtransformation_rulesgroup_kindsnew) constructor.

**Returns**:
  - An attribute object that represents the `resource_filter` sub block.


## obj restore_config.transformation_rules.resource_filter.group_kinds



### fn restore_config.transformation_rules.resource_filter.group_kinds.new

```ts
new()
```


`google.gke_backup_restore_plan.restore_config.transformation_rules.resource_filter.group_kinds.new` constructs a new object with attributes and blocks configured for the `group_kinds`
Terraform sub block.



**Args**:
  - `resource_group` (`string`): API Group string of a Kubernetes resource, e.g.
&#34;apiextensions.k8s.io&#34;, &#34;storage.k8s.io&#34;, etc.
Use empty string for core group. When `null`, the `resource_group` field will be omitted from the resulting object.
  - `resource_kind` (`string`): Kind of a Kubernetes resource, e.g.
&#34;CustomResourceDefinition&#34;, &#34;StorageClass&#34;, etc. When `null`, the `resource_kind` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `group_kinds` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.gke_backup_restore_plan.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
