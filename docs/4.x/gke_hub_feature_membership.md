---
permalink: /gke_hub_feature_membership/
---

# gke_hub_feature_membership

`gke_hub_feature_membership` represents the `google_gke_hub_feature_membership` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withConfigmanagement()`](#fn-withconfigmanagement)
* [`fn withConfigmanagementMixin()`](#fn-withconfigmanagementmixin)
* [`fn withFeature()`](#fn-withfeature)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMembership()`](#fn-withmembership)
* [`fn withMesh()`](#fn-withmesh)
* [`fn withMeshMixin()`](#fn-withmeshmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj configmanagement`](#obj-configmanagement)
  * [`fn new()`](#fn-configmanagementnew)
  * [`obj configmanagement.binauthz`](#obj-configmanagementbinauthz)
    * [`fn new()`](#fn-configmanagementbinauthznew)
  * [`obj configmanagement.config_sync`](#obj-configmanagementconfig_sync)
    * [`fn new()`](#fn-configmanagementconfig_syncnew)
    * [`obj configmanagement.config_sync.git`](#obj-configmanagementconfig_syncgit)
      * [`fn new()`](#fn-configmanagementconfig_syncgitnew)
    * [`obj configmanagement.config_sync.oci`](#obj-configmanagementconfig_syncoci)
      * [`fn new()`](#fn-configmanagementconfig_syncocinew)
  * [`obj configmanagement.hierarchy_controller`](#obj-configmanagementhierarchy_controller)
    * [`fn new()`](#fn-configmanagementhierarchy_controllernew)
  * [`obj configmanagement.policy_controller`](#obj-configmanagementpolicy_controller)
    * [`fn new()`](#fn-configmanagementpolicy_controllernew)
    * [`obj configmanagement.policy_controller.monitoring`](#obj-configmanagementpolicy_controllermonitoring)
      * [`fn new()`](#fn-configmanagementpolicy_controllermonitoringnew)
* [`obj mesh`](#obj-mesh)
  * [`fn new()`](#fn-meshnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.gke_hub_feature_membership.new` injects a new `google_gke_hub_feature_membership` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.gke_hub_feature_membership.new('some_id')

You can get the reference to the `id` field of the created `google.gke_hub_feature_membership` using the reference:

    $._ref.google_gke_hub_feature_membership.some_id.get('id')

This is the same as directly entering `"${ google_gke_hub_feature_membership.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `feature` (`string`): The name of the feature
  - `location` (`string`): The location of the feature
  - `membership` (`string`): The name of the membership
  - `project` (`string`): The project of the feature When `null`, the `project` field will be omitted from the resulting object.
  - `configmanagement` (`list[obj]`): Config Management-specific spec. When `null`, the `configmanagement` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.new](#fn-configmanagementnew) constructor.
  - `mesh` (`list[obj]`): Manage Mesh Features When `null`, the `mesh` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.mesh.new](#fn-meshnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.gke_hub_feature_membership.newAttrs` constructs a new object with attributes and blocks configured for the `gke_hub_feature_membership`
Terraform resource.

Unlike [google.gke_hub_feature_membership.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `feature` (`string`): The name of the feature
  - `location` (`string`): The location of the feature
  - `membership` (`string`): The name of the membership
  - `project` (`string`): The project of the feature When `null`, the `project` field will be omitted from the resulting object.
  - `configmanagement` (`list[obj]`): Config Management-specific spec. When `null`, the `configmanagement` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.new](#fn-configmanagementnew) constructor.
  - `mesh` (`list[obj]`): Manage Mesh Features When `null`, the `mesh` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.mesh.new](#fn-meshnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_hub_feature_membership` resource into the root Terraform configuration.


### fn withConfigmanagement

```ts
withConfigmanagement()
```

`google.list[obj].withConfigmanagement` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the configmanagement field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConfigmanagementMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `configmanagement` field.


### fn withConfigmanagementMixin

```ts
withConfigmanagementMixin()
```

`google.list[obj].withConfigmanagementMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the configmanagement field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withConfigmanagement](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `configmanagement` field.


### fn withFeature

```ts
withFeature()
```

`google.string.withFeature` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the feature field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `feature` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withMembership

```ts
withMembership()
```

`google.string.withMembership` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the membership field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `membership` field.


### fn withMesh

```ts
withMesh()
```

`google.list[obj].withMesh` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the mesh field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMeshMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `mesh` field.


### fn withMeshMixin

```ts
withMeshMixin()
```

`google.list[obj].withMeshMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the mesh field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMesh](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `mesh` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


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


## obj configmanagement



### fn configmanagement.new

```ts
new()
```


`google.gke_hub_feature_membership.configmanagement.new` constructs a new object with attributes and blocks configured for the `configmanagement`
Terraform sub block.



**Args**:
  - `version` (`string`): Optional. Version of ACM to install. Defaults to the latest version. When `null`, the `version` field will be omitted from the resulting object.
  - `binauthz` (`list[obj]`): Binauthz configuration for the cluster. When `null`, the `binauthz` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.binauthz.new](#fn-configmanagementbinauthznew) constructor.
  - `config_sync` (`list[obj]`): Config Sync configuration for the cluster. When `null`, the `config_sync` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.config_sync.new](#fn-configmanagementconfig_syncnew) constructor.
  - `hierarchy_controller` (`list[obj]`): Hierarchy Controller configuration for the cluster. When `null`, the `hierarchy_controller` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.hierarchy_controller.new](#fn-configmanagementhierarchy_controllernew) constructor.
  - `policy_controller` (`list[obj]`): Policy Controller configuration for the cluster. When `null`, the `policy_controller` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.policy_controller.new](#fn-configmanagementpolicy_controllernew) constructor.

**Returns**:
  - An attribute object that represents the `configmanagement` sub block.


## obj configmanagement.binauthz



### fn configmanagement.binauthz.new

```ts
new()
```


`google.gke_hub_feature_membership.configmanagement.binauthz.new` constructs a new object with attributes and blocks configured for the `binauthz`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether binauthz is enabled in this cluster. When `null`, the `enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `binauthz` sub block.


## obj configmanagement.config_sync



### fn configmanagement.config_sync.new

```ts
new()
```


`google.gke_hub_feature_membership.configmanagement.config_sync.new` constructs a new object with attributes and blocks configured for the `config_sync`
Terraform sub block.



**Args**:
  - `prevent_drift` (`bool`): Set to true to enable the Config Sync admission webhook to prevent drifts. If set to `false`, disables the Config Sync admission webhook and does not prevent drifts. When `null`, the `prevent_drift` field will be omitted from the resulting object.
  - `source_format` (`string`): Specifies whether the Config Sync Repo is in &#34;hierarchical&#34; or &#34;unstructured&#34; mode. When `null`, the `source_format` field will be omitted from the resulting object.
  - `git` (`list[obj]`): Set the `git` field on the resulting object. When `null`, the `git` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.config_sync.git.new](#fn-configmanagementconfigmanagementgitnew) constructor.
  - `oci` (`list[obj]`): Set the `oci` field on the resulting object. When `null`, the `oci` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.config_sync.oci.new](#fn-configmanagementconfigmanagementocinew) constructor.

**Returns**:
  - An attribute object that represents the `config_sync` sub block.


## obj configmanagement.config_sync.git



### fn configmanagement.config_sync.git.new

```ts
new()
```


`google.gke_hub_feature_membership.configmanagement.config_sync.git.new` constructs a new object with attributes and blocks configured for the `git`
Terraform sub block.



**Args**:
  - `gcp_service_account_email` (`string`): The GCP Service Account Email used for auth when secretType is gcpServiceAccount. When `null`, the `gcp_service_account_email` field will be omitted from the resulting object.
  - `https_proxy` (`string`): URL for the HTTPS proxy to be used when communicating with the Git repo. When `null`, the `https_proxy` field will be omitted from the resulting object.
  - `policy_dir` (`string`): The path within the Git repository that represents the top level of the repo to sync. Default: the root directory of the repository. When `null`, the `policy_dir` field will be omitted from the resulting object.
  - `secret_type` (`string`): Type of secret configured for access to the Git repo. Must be one of ssh, cookiefile, gcenode, token, gcpserviceaccount or none. The validation of this is case-sensitive. When `null`, the `secret_type` field will be omitted from the resulting object.
  - `sync_branch` (`string`): The branch of the repository to sync from. Default: master. When `null`, the `sync_branch` field will be omitted from the resulting object.
  - `sync_repo` (`string`): The URL of the Git repository to use as the source of truth. When `null`, the `sync_repo` field will be omitted from the resulting object.
  - `sync_rev` (`string`): Git revision (tag or hash) to check out. Default HEAD. When `null`, the `sync_rev` field will be omitted from the resulting object.
  - `sync_wait_secs` (`string`): Period in seconds between consecutive syncs. Default: 15. When `null`, the `sync_wait_secs` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `git` sub block.


## obj configmanagement.config_sync.oci



### fn configmanagement.config_sync.oci.new

```ts
new()
```


`google.gke_hub_feature_membership.configmanagement.config_sync.oci.new` constructs a new object with attributes and blocks configured for the `oci`
Terraform sub block.



**Args**:
  - `gcp_service_account_email` (`string`): The GCP Service Account Email used for auth when secret_type is gcpserviceaccount.  When `null`, the `gcp_service_account_email` field will be omitted from the resulting object.
  - `policy_dir` (`string`): The absolute path of the directory that contains the local resources. Default: the root directory of the image. When `null`, the `policy_dir` field will be omitted from the resulting object.
  - `secret_type` (`string`): Type of secret configured for access to the OCI Image. Must be one of gcenode, gcpserviceaccount or none. The validation of this is case-sensitive. When `null`, the `secret_type` field will be omitted from the resulting object.
  - `sync_repo` (`string`): The OCI image repository URL for the package to sync from. e.g. LOCATION-docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME. When `null`, the `sync_repo` field will be omitted from the resulting object.
  - `sync_wait_secs` (`string`): Period in seconds(int64 format) between consecutive syncs. Default: 15. When `null`, the `sync_wait_secs` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `oci` sub block.


## obj configmanagement.hierarchy_controller



### fn configmanagement.hierarchy_controller.new

```ts
new()
```


`google.gke_hub_feature_membership.configmanagement.hierarchy_controller.new` constructs a new object with attributes and blocks configured for the `hierarchy_controller`
Terraform sub block.



**Args**:
  - `enable_hierarchical_resource_quota` (`bool`): Whether hierarchical resource quota is enabled in this cluster. When `null`, the `enable_hierarchical_resource_quota` field will be omitted from the resulting object.
  - `enable_pod_tree_labels` (`bool`): Whether pod tree labels are enabled in this cluster. When `null`, the `enable_pod_tree_labels` field will be omitted from the resulting object.
  - `enabled` (`bool`): Whether Hierarchy Controller is enabled in this cluster. When `null`, the `enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `hierarchy_controller` sub block.


## obj configmanagement.policy_controller



### fn configmanagement.policy_controller.new

```ts
new()
```


`google.gke_hub_feature_membership.configmanagement.policy_controller.new` constructs a new object with attributes and blocks configured for the `policy_controller`
Terraform sub block.



**Args**:
  - `audit_interval_seconds` (`string`): Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether. When `null`, the `audit_interval_seconds` field will be omitted from the resulting object.
  - `enabled` (`bool`): Enables the installation of Policy Controller. If false, the rest of PolicyController fields take no effect. When `null`, the `enabled` field will be omitted from the resulting object.
  - `exemptable_namespaces` (`list`): The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster. When `null`, the `exemptable_namespaces` field will be omitted from the resulting object.
  - `log_denies_enabled` (`bool`): Logs all denies and dry run failures. When `null`, the `log_denies_enabled` field will be omitted from the resulting object.
  - `mutation_enabled` (`bool`): Enable or disable mutation in policy controller. If true, mutation CRDs, webhook and controller deployment will be deployed to the cluster. When `null`, the `mutation_enabled` field will be omitted from the resulting object.
  - `referential_rules_enabled` (`bool`): Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated. When `null`, the `referential_rules_enabled` field will be omitted from the resulting object.
  - `template_library_installed` (`bool`): Installs the default template library along with Policy Controller. When `null`, the `template_library_installed` field will be omitted from the resulting object.
  - `monitoring` (`list[obj]`): Specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: [&#34;cloudmonitoring&#34;, &#34;prometheus&#34;]. Default: [&#34;cloudmonitoring&#34;, &#34;prometheus&#34;] When `null`, the `monitoring` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.policy_controller.monitoring.new](#fn-configmanagementconfigmanagementmonitoringnew) constructor.

**Returns**:
  - An attribute object that represents the `policy_controller` sub block.


## obj configmanagement.policy_controller.monitoring



### fn configmanagement.policy_controller.monitoring.new

```ts
new()
```


`google.gke_hub_feature_membership.configmanagement.policy_controller.monitoring.new` constructs a new object with attributes and blocks configured for the `monitoring`
Terraform sub block.



**Args**:
  - `backends` (`list`):  Specifies the list of backends Policy Controller will export to. Specifying an empty value `[]` disables metrics export. When `null`, the `backends` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `monitoring` sub block.


## obj mesh



### fn mesh.new

```ts
new()
```


`google.gke_hub_feature_membership.mesh.new` constructs a new object with attributes and blocks configured for the `mesh`
Terraform sub block.



**Args**:
  - `control_plane` (`string`): **DEPRECATED** Whether to automatically manage Service Mesh control planes. Possible values: CONTROL_PLANE_MANAGEMENT_UNSPECIFIED, AUTOMATIC, MANUAL When `null`, the `control_plane` field will be omitted from the resulting object.
  - `management` (`string`): Whether to automatically manage Service Mesh. Possible values: MANAGEMENT_UNSPECIFIED, MANAGEMENT_AUTOMATIC, MANAGEMENT_MANUAL When `null`, the `management` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `mesh` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.gke_hub_feature_membership.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
