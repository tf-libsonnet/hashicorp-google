---
permalink: /gke_hub_feature/
---

# gke_hub_feature

`gke_hub_feature` represents the `google_gke_hub_feature` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withFleetDefaultMemberConfig()`](#fn-withfleetdefaultmemberconfig)
* [`fn withFleetDefaultMemberConfigMixin()`](#fn-withfleetdefaultmemberconfigmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSpec()`](#fn-withspec)
* [`fn withSpecMixin()`](#fn-withspecmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj fleet_default_member_config`](#obj-fleet_default_member_config)
  * [`fn new()`](#fn-fleet_default_member_confignew)
  * [`obj fleet_default_member_config.configmanagement`](#obj-fleet_default_member_configconfigmanagement)
    * [`fn new()`](#fn-fleet_default_member_configconfigmanagementnew)
    * [`obj fleet_default_member_config.configmanagement.config_sync`](#obj-fleet_default_member_configconfigmanagementconfig_sync)
      * [`fn new()`](#fn-fleet_default_member_configconfigmanagementconfig_syncnew)
      * [`obj fleet_default_member_config.configmanagement.config_sync.git`](#obj-fleet_default_member_configconfigmanagementconfig_syncgit)
        * [`fn new()`](#fn-fleet_default_member_configconfigmanagementconfig_syncgitnew)
      * [`obj fleet_default_member_config.configmanagement.config_sync.oci`](#obj-fleet_default_member_configconfigmanagementconfig_syncoci)
        * [`fn new()`](#fn-fleet_default_member_configconfigmanagementconfig_syncocinew)
  * [`obj fleet_default_member_config.mesh`](#obj-fleet_default_member_configmesh)
    * [`fn new()`](#fn-fleet_default_member_configmeshnew)
* [`obj spec`](#obj-spec)
  * [`fn new()`](#fn-specnew)
  * [`obj spec.fleetobservability`](#obj-specfleetobservability)
    * [`fn new()`](#fn-specfleetobservabilitynew)
    * [`obj spec.fleetobservability.logging_config`](#obj-specfleetobservabilitylogging_config)
      * [`fn new()`](#fn-specfleetobservabilitylogging_confignew)
      * [`obj spec.fleetobservability.logging_config.default_config`](#obj-specfleetobservabilitylogging_configdefault_config)
        * [`fn new()`](#fn-specfleetobservabilitylogging_configdefault_confignew)
      * [`obj spec.fleetobservability.logging_config.fleet_scope_logs_config`](#obj-specfleetobservabilitylogging_configfleet_scope_logs_config)
        * [`fn new()`](#fn-specfleetobservabilitylogging_configfleet_scope_logs_confignew)
  * [`obj spec.multiclusteringress`](#obj-specmulticlusteringress)
    * [`fn new()`](#fn-specmulticlusteringressnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.gke_hub_feature.new` injects a new `google_gke_hub_feature` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.gke_hub_feature.new('some_id')

You can get the reference to the `id` field of the created `google.gke_hub_feature` using the reference:

    $._ref.google_gke_hub_feature.some_id.get('id')

This is the same as directly entering `"${ google_gke_hub_feature.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `labels` (`obj`): GCP labels for this Feature.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): The full, unique name of this Feature resource When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `fleet_default_member_config` (`list[obj]`): Optional. Fleet Default Membership Configuration. When `null`, the `fleet_default_member_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.new](#fn-fleet_default_member_confignew) constructor.
  - `spec` (`list[obj]`): Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.new](#fn-specnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.gke_hub_feature.newAttrs` constructs a new object with attributes and blocks configured for the `gke_hub_feature`
Terraform resource.

Unlike [google.gke_hub_feature.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `labels` (`obj`): GCP labels for this Feature.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): The full, unique name of this Feature resource When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `fleet_default_member_config` (`list[obj]`): Optional. Fleet Default Membership Configuration. When `null`, the `fleet_default_member_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.new](#fn-fleet_default_member_confignew) constructor.
  - `spec` (`list[obj]`): Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.new](#fn-specnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_hub_feature` resource into the root Terraform configuration.


### fn withFleetDefaultMemberConfig

```ts
withFleetDefaultMemberConfig()
```

`google.list[obj].withFleetDefaultMemberConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fleet_default_member_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFleetDefaultMemberConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fleet_default_member_config` field.


### fn withFleetDefaultMemberConfigMixin

```ts
withFleetDefaultMemberConfigMixin()
```

`google.list[obj].withFleetDefaultMemberConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fleet_default_member_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withFleetDefaultMemberConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fleet_default_member_config` field.


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


### fn withSpec

```ts
withSpec()
```

`google.list[obj].withSpec` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the spec field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSpecMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `spec` field.


### fn withSpecMixin

```ts
withSpecMixin()
```

`google.list[obj].withSpecMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `spec` field.


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


## obj fleet_default_member_config



### fn fleet_default_member_config.new

```ts
new()
```


`google.gke_hub_feature.fleet_default_member_config.new` constructs a new object with attributes and blocks configured for the `fleet_default_member_config`
Terraform sub block.



**Args**:
  - `configmanagement` (`list[obj]`): Config Management spec When `null`, the `configmanagement` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.configmanagement.new](#fn-fleet_default_member_configconfigmanagementnew) constructor.
  - `mesh` (`list[obj]`): Service Mesh spec When `null`, the `mesh` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.mesh.new](#fn-fleet_default_member_configmeshnew) constructor.

**Returns**:
  - An attribute object that represents the `fleet_default_member_config` sub block.


## obj fleet_default_member_config.configmanagement



### fn fleet_default_member_config.configmanagement.new

```ts
new()
```


`google.gke_hub_feature.fleet_default_member_config.configmanagement.new` constructs a new object with attributes and blocks configured for the `configmanagement`
Terraform sub block.



**Args**:
  - `config_sync` (`list[obj]`): ConfigSync configuration for the cluster When `null`, the `config_sync` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.configmanagement.config_sync.new](#fn-fleet_default_member_configfleet_default_member_configconfig_syncnew) constructor.

**Returns**:
  - An attribute object that represents the `configmanagement` sub block.


## obj fleet_default_member_config.configmanagement.config_sync



### fn fleet_default_member_config.configmanagement.config_sync.new

```ts
new()
```


`google.gke_hub_feature.fleet_default_member_config.configmanagement.config_sync.new` constructs a new object with attributes and blocks configured for the `config_sync`
Terraform sub block.



**Args**:
  - `source_format` (`string`): Specifies whether the Config Sync Repo is in hierarchical or unstructured mode When `null`, the `source_format` field will be omitted from the resulting object.
  - `git` (`list[obj]`): Git repo configuration for the cluster When `null`, the `git` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.configmanagement.config_sync.git.new](#fn-fleet_default_member_configfleet_default_member_configconfigmanagementgitnew) constructor.
  - `oci` (`list[obj]`): OCI repo configuration for the cluster When `null`, the `oci` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.configmanagement.config_sync.oci.new](#fn-fleet_default_member_configfleet_default_member_configconfigmanagementocinew) constructor.

**Returns**:
  - An attribute object that represents the `config_sync` sub block.


## obj fleet_default_member_config.configmanagement.config_sync.git



### fn fleet_default_member_config.configmanagement.config_sync.git.new

```ts
new()
```


`google.gke_hub_feature.fleet_default_member_config.configmanagement.config_sync.git.new` constructs a new object with attributes and blocks configured for the `git`
Terraform sub block.



**Args**:
  - `gcp_service_account_email` (`string`): The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount When `null`, the `gcp_service_account_email` field will be omitted from the resulting object.
  - `https_proxy` (`string`): URL for the HTTPS Proxy to be used when communicating with the Git repo When `null`, the `https_proxy` field will be omitted from the resulting object.
  - `policy_dir` (`string`): The path within the Git repository that represents the top level of the repo to sync When `null`, the `policy_dir` field will be omitted from the resulting object.
  - `secret_type` (`string`): Type of secret configured for access to the Git repo
  - `sync_branch` (`string`): The branch of the repository to sync from. Default: master When `null`, the `sync_branch` field will be omitted from the resulting object.
  - `sync_repo` (`string`): The URL of the Git repository to use as the source of truth When `null`, the `sync_repo` field will be omitted from the resulting object.
  - `sync_rev` (`string`): Git revision (tag or hash) to check out. Default HEAD When `null`, the `sync_rev` field will be omitted from the resulting object.
  - `sync_wait_secs` (`string`): Period in seconds between consecutive syncs. Default: 15 When `null`, the `sync_wait_secs` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `git` sub block.


## obj fleet_default_member_config.configmanagement.config_sync.oci



### fn fleet_default_member_config.configmanagement.config_sync.oci.new

```ts
new()
```


`google.gke_hub_feature.fleet_default_member_config.configmanagement.config_sync.oci.new` constructs a new object with attributes and blocks configured for the `oci`
Terraform sub block.



**Args**:
  - `gcp_service_account_email` (`string`): The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount When `null`, the `gcp_service_account_email` field will be omitted from the resulting object.
  - `policy_dir` (`string`): The absolute path of the directory that contains the local resources. Default: the root directory of the image When `null`, the `policy_dir` field will be omitted from the resulting object.
  - `secret_type` (`string`): Type of secret configured for access to the Git repo
  - `sync_repo` (`string`): The OCI image repository URL for the package to sync from When `null`, the `sync_repo` field will be omitted from the resulting object.
  - `sync_wait_secs` (`string`): Period in seconds between consecutive syncs. Default: 15 When `null`, the `sync_wait_secs` field will be omitted from the resulting object.
  - `version` (`string`): Version of ACM installed When `null`, the `version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `oci` sub block.


## obj fleet_default_member_config.mesh



### fn fleet_default_member_config.mesh.new

```ts
new()
```


`google.gke_hub_feature.fleet_default_member_config.mesh.new` constructs a new object with attributes and blocks configured for the `mesh`
Terraform sub block.



**Args**:
  - `management` (`string`): Whether to automatically manage Service Mesh Possible values: [&#34;MANAGEMENT_UNSPECIFIED&#34;, &#34;MANAGEMENT_AUTOMATIC&#34;, &#34;MANAGEMENT_MANUAL&#34;]

**Returns**:
  - An attribute object that represents the `mesh` sub block.


## obj spec



### fn spec.new

```ts
new()
```


`google.gke_hub_feature.spec.new` constructs a new object with attributes and blocks configured for the `spec`
Terraform sub block.



**Args**:
  - `fleetobservability` (`list[obj]`): Fleet Observability feature spec. When `null`, the `fleetobservability` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.fleetobservability.new](#fn-specfleetobservabilitynew) constructor.
  - `multiclusteringress` (`list[obj]`): Multicluster Ingress-specific spec. When `null`, the `multiclusteringress` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.multiclusteringress.new](#fn-specmulticlusteringressnew) constructor.

**Returns**:
  - An attribute object that represents the `spec` sub block.


## obj spec.fleetobservability



### fn spec.fleetobservability.new

```ts
new()
```


`google.gke_hub_feature.spec.fleetobservability.new` constructs a new object with attributes and blocks configured for the `fleetobservability`
Terraform sub block.



**Args**:
  - `logging_config` (`list[obj]`): Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.fleetobservability.logging_config.new](#fn-specspeclogging_confignew) constructor.

**Returns**:
  - An attribute object that represents the `fleetobservability` sub block.


## obj spec.fleetobservability.logging_config



### fn spec.fleetobservability.logging_config.new

```ts
new()
```


`google.gke_hub_feature.spec.fleetobservability.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`
Terraform sub block.



**Args**:
  - `default_config` (`list[obj]`): Specified if applying the default routing config to logs not specified in other configs. When `null`, the `default_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.fleetobservability.logging_config.default_config.new](#fn-specspecfleetobservabilitydefault_confignew) constructor.
  - `fleet_scope_logs_config` (`list[obj]`): Specified if applying the routing config to all logs for all fleet scopes. When `null`, the `fleet_scope_logs_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.fleetobservability.logging_config.fleet_scope_logs_config.new](#fn-specspecfleetobservabilityfleet_scope_logs_confignew) constructor.

**Returns**:
  - An attribute object that represents the `logging_config` sub block.


## obj spec.fleetobservability.logging_config.default_config



### fn spec.fleetobservability.logging_config.default_config.new

```ts
new()
```


`google.gke_hub_feature.spec.fleetobservability.logging_config.default_config.new` constructs a new object with attributes and blocks configured for the `default_config`
Terraform sub block.



**Args**:
  - `mode` (`string`): Specified if fleet logging feature is enabled. Possible values: [&#34;MODE_UNSPECIFIED&#34;, &#34;COPY&#34;, &#34;MOVE&#34;] When `null`, the `mode` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `default_config` sub block.


## obj spec.fleetobservability.logging_config.fleet_scope_logs_config



### fn spec.fleetobservability.logging_config.fleet_scope_logs_config.new

```ts
new()
```


`google.gke_hub_feature.spec.fleetobservability.logging_config.fleet_scope_logs_config.new` constructs a new object with attributes and blocks configured for the `fleet_scope_logs_config`
Terraform sub block.



**Args**:
  - `mode` (`string`): Specified if fleet logging feature is enabled. Possible values: [&#34;MODE_UNSPECIFIED&#34;, &#34;COPY&#34;, &#34;MOVE&#34;] When `null`, the `mode` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `fleet_scope_logs_config` sub block.


## obj spec.multiclusteringress



### fn spec.multiclusteringress.new

```ts
new()
```


`google.gke_hub_feature.spec.multiclusteringress.new` constructs a new object with attributes and blocks configured for the `multiclusteringress`
Terraform sub block.



**Args**:
  - `config_membership` (`string`): Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: &#39;projects/foo-proj/locations/global/memberships/bar&#39;

**Returns**:
  - An attribute object that represents the `multiclusteringress` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.gke_hub_feature.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
