---
permalink: /container_attached_cluster/
---

# container_attached_cluster

`container_attached_cluster` represents the `google_container_attached_cluster` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withAuthorization()`](#fn-withauthorization)
* [`fn withAuthorizationMixin()`](#fn-withauthorizationmixin)
* [`fn withBinaryAuthorization()`](#fn-withbinaryauthorization)
* [`fn withBinaryAuthorizationMixin()`](#fn-withbinaryauthorizationmixin)
* [`fn withDeletionPolicy()`](#fn-withdeletionpolicy)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDistribution()`](#fn-withdistribution)
* [`fn withFleet()`](#fn-withfleet)
* [`fn withFleetMixin()`](#fn-withfleetmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withLoggingConfig()`](#fn-withloggingconfig)
* [`fn withLoggingConfigMixin()`](#fn-withloggingconfigmixin)
* [`fn withMonitoringConfig()`](#fn-withmonitoringconfig)
* [`fn withMonitoringConfigMixin()`](#fn-withmonitoringconfigmixin)
* [`fn withName()`](#fn-withname)
* [`fn withOidcConfig()`](#fn-withoidcconfig)
* [`fn withOidcConfigMixin()`](#fn-withoidcconfigmixin)
* [`fn withPlatformVersion()`](#fn-withplatformversion)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj authorization`](#obj-authorization)
  * [`fn new()`](#fn-authorizationnew)
* [`obj binary_authorization`](#obj-binary_authorization)
  * [`fn new()`](#fn-binary_authorizationnew)
* [`obj fleet`](#obj-fleet)
  * [`fn new()`](#fn-fleetnew)
* [`obj logging_config`](#obj-logging_config)
  * [`fn new()`](#fn-logging_confignew)
  * [`obj logging_config.component_config`](#obj-logging_configcomponent_config)
    * [`fn new()`](#fn-logging_configcomponent_confignew)
* [`obj monitoring_config`](#obj-monitoring_config)
  * [`fn new()`](#fn-monitoring_confignew)
  * [`obj monitoring_config.managed_prometheus_config`](#obj-monitoring_configmanaged_prometheus_config)
    * [`fn new()`](#fn-monitoring_configmanaged_prometheus_confignew)
* [`obj oidc_config`](#obj-oidc_config)
  * [`fn new()`](#fn-oidc_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.container_attached_cluster.new` injects a new `google_container_attached_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.container_attached_cluster.new('some_id')

You can get the reference to the `id` field of the created `google.container_attached_cluster` using the reference:

    $._ref.google_container_attached_cluster.some_id.get('id')

This is the same as directly entering `"${ google_container_attached_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Optional. Annotations on the cluster. This field has the same
restrictions as Kubernetes annotations. The total size of all keys and
values combined is limited to 256k. Key can have 2 segments: prefix (optional)
and name (required), separated by a slash (/). Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `deletion_policy` (`string`): Policy to determine what flags to send on delete. When `null`, the `deletion_policy` field will be omitted from the resulting object.
  - `description` (`string`): A human readable description of this attached cluster. Cannot be longer
than 255 UTF-8 encoded bytes. When `null`, the `description` field will be omitted from the resulting object.
  - `distribution` (`string`): The Kubernetes distribution of the underlying attached cluster. Supported values:
&#34;eks&#34;, &#34;aks&#34;.
  - `location` (`string`): The location for the resource
  - `name` (`string`): The name of this resource.
  - `platform_version` (`string`): The platform version for the cluster (e.g. &#39;1.23.0-gke.1&#39;).
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `authorization` (`list[obj]`): Configuration related to the cluster RBAC settings. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.authorization.new](#fn-authorizationnew) constructor.
  - `binary_authorization` (`list[obj]`): Binary Authorization configuration. When `null`, the `binary_authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.binary_authorization.new](#fn-binary_authorizationnew) constructor.
  - `fleet` (`list[obj]`): Fleet configuration. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.fleet.new](#fn-fleetnew) constructor.
  - `logging_config` (`list[obj]`): Logging configuration. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.logging_config.new](#fn-logging_confignew) constructor.
  - `monitoring_config` (`list[obj]`): Monitoring configuration. When `null`, the `monitoring_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.monitoring_config.new](#fn-monitoring_confignew) constructor.
  - `oidc_config` (`list[obj]`): OIDC discovery information of the target cluster.

Kubernetes Service Account (KSA) tokens are JWT tokens signed by the cluster
API server. This fields indicates how GCP services
validate KSA tokens in order to allow system workloads (such as GKE Connect
and telemetry agents) to authenticate back to GCP.

Both clusters with public and private issuer URLs are supported.
Clusters with public issuers only need to specify the &#39;issuer_url&#39; field
while clusters with private issuers need to provide both
&#39;issuer_url&#39; and &#39;jwks&#39;. When `null`, the `oidc_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.oidc_config.new](#fn-oidc_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.container_attached_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `container_attached_cluster`
Terraform resource.

Unlike [google.container_attached_cluster.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Optional. Annotations on the cluster. This field has the same
restrictions as Kubernetes annotations. The total size of all keys and
values combined is limited to 256k. Key can have 2 segments: prefix (optional)
and name (required), separated by a slash (/). Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `deletion_policy` (`string`): Policy to determine what flags to send on delete. When `null`, the `deletion_policy` field will be omitted from the resulting object.
  - `description` (`string`): A human readable description of this attached cluster. Cannot be longer
than 255 UTF-8 encoded bytes. When `null`, the `description` field will be omitted from the resulting object.
  - `distribution` (`string`): The Kubernetes distribution of the underlying attached cluster. Supported values:
&#34;eks&#34;, &#34;aks&#34;.
  - `location` (`string`): The location for the resource
  - `name` (`string`): The name of this resource.
  - `platform_version` (`string`): The platform version for the cluster (e.g. &#39;1.23.0-gke.1&#39;).
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `authorization` (`list[obj]`): Configuration related to the cluster RBAC settings. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.authorization.new](#fn-authorizationnew) constructor.
  - `binary_authorization` (`list[obj]`): Binary Authorization configuration. When `null`, the `binary_authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.binary_authorization.new](#fn-binary_authorizationnew) constructor.
  - `fleet` (`list[obj]`): Fleet configuration. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.fleet.new](#fn-fleetnew) constructor.
  - `logging_config` (`list[obj]`): Logging configuration. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.logging_config.new](#fn-logging_confignew) constructor.
  - `monitoring_config` (`list[obj]`): Monitoring configuration. When `null`, the `monitoring_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.monitoring_config.new](#fn-monitoring_confignew) constructor.
  - `oidc_config` (`list[obj]`): OIDC discovery information of the target cluster.

Kubernetes Service Account (KSA) tokens are JWT tokens signed by the cluster
API server. This fields indicates how GCP services
validate KSA tokens in order to allow system workloads (such as GKE Connect
and telemetry agents) to authenticate back to GCP.

Both clusters with public and private issuer URLs are supported.
Clusters with public issuers only need to specify the &#39;issuer_url&#39; field
while clusters with private issuers need to provide both
&#39;issuer_url&#39; and &#39;jwks&#39;. When `null`, the `oidc_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.oidc_config.new](#fn-oidc_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_attached_cluster` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withAuthorization

```ts
withAuthorization()
```

`google.list[obj].withAuthorization` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the authorization field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAuthorizationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `authorization` field.


### fn withAuthorizationMixin

```ts
withAuthorizationMixin()
```

`google.list[obj].withAuthorizationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the authorization field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAuthorization](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `authorization` field.


### fn withBinaryAuthorization

```ts
withBinaryAuthorization()
```

`google.list[obj].withBinaryAuthorization` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the binary_authorization field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBinaryAuthorizationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `binary_authorization` field.


### fn withBinaryAuthorizationMixin

```ts
withBinaryAuthorizationMixin()
```

`google.list[obj].withBinaryAuthorizationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the binary_authorization field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBinaryAuthorization](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `binary_authorization` field.


### fn withDeletionPolicy

```ts
withDeletionPolicy()
```

`google.string.withDeletionPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the deletion_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `deletion_policy` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDistribution

```ts
withDistribution()
```

`google.string.withDistribution` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the distribution field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `distribution` field.


### fn withFleet

```ts
withFleet()
```

`google.list[obj].withFleet` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fleet field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFleetMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fleet` field.


### fn withFleetMixin

```ts
withFleetMixin()
```

`google.list[obj].withFleetMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fleet field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withFleet](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fleet` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withLoggingConfig

```ts
withLoggingConfig()
```

`google.list[obj].withLoggingConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the logging_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLoggingConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `logging_config` field.


### fn withLoggingConfigMixin

```ts
withLoggingConfigMixin()
```

`google.list[obj].withLoggingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the logging_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLoggingConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `logging_config` field.


### fn withMonitoringConfig

```ts
withMonitoringConfig()
```

`google.list[obj].withMonitoringConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the monitoring_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMonitoringConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `monitoring_config` field.


### fn withMonitoringConfigMixin

```ts
withMonitoringConfigMixin()
```

`google.list[obj].withMonitoringConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the monitoring_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMonitoringConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `monitoring_config` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withOidcConfig

```ts
withOidcConfig()
```

`google.list[obj].withOidcConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the oidc_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withOidcConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `oidc_config` field.


### fn withOidcConfigMixin

```ts
withOidcConfigMixin()
```

`google.list[obj].withOidcConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the oidc_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withOidcConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `oidc_config` field.


### fn withPlatformVersion

```ts
withPlatformVersion()
```

`google.string.withPlatformVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the platform_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `platform_version` field.


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


## obj authorization



### fn authorization.new

```ts
new()
```


`google.container_attached_cluster.authorization.new` constructs a new object with attributes and blocks configured for the `authorization`
Terraform sub block.



**Args**:
  - `admin_groups` (`list`): Groups that can perform operations as a cluster admin. A managed
ClusterRoleBinding will be created to grant the &#39;cluster-admin&#39; ClusterRole
to the groups. Up to ten admin groups can be provided.

For more info on RBAC, see
https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles When `null`, the `admin_groups` field will be omitted from the resulting object.
  - `admin_users` (`list`): Users that can perform operations as a cluster admin. A managed
ClusterRoleBinding will be created to grant the &#39;cluster-admin&#39; ClusterRole
to the users. Up to ten admin users can be provided.

For more info on RBAC, see
https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles When `null`, the `admin_users` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `authorization` sub block.


## obj binary_authorization



### fn binary_authorization.new

```ts
new()
```


`google.container_attached_cluster.binary_authorization.new` constructs a new object with attributes and blocks configured for the `binary_authorization`
Terraform sub block.



**Args**:
  - `evaluation_mode` (`string`): Configure Binary Authorization evaluation mode. Possible values: [&#34;DISABLED&#34;, &#34;PROJECT_SINGLETON_POLICY_ENFORCE&#34;] When `null`, the `evaluation_mode` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `binary_authorization` sub block.


## obj fleet



### fn fleet.new

```ts
new()
```


`google.container_attached_cluster.fleet.new` constructs a new object with attributes and blocks configured for the `fleet`
Terraform sub block.



**Args**:
  - `project` (`string`): The number of the Fleet host project where this cluster will be registered.

**Returns**:
  - An attribute object that represents the `fleet` sub block.


## obj logging_config



### fn logging_config.new

```ts
new()
```


`google.container_attached_cluster.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`
Terraform sub block.



**Args**:
  - `component_config` (`list[obj]`): The configuration of the logging components When `null`, the `component_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.logging_config.component_config.new](#fn-logging_configcomponent_confignew) constructor.

**Returns**:
  - An attribute object that represents the `logging_config` sub block.


## obj logging_config.component_config



### fn logging_config.component_config.new

```ts
new()
```


`google.container_attached_cluster.logging_config.component_config.new` constructs a new object with attributes and blocks configured for the `component_config`
Terraform sub block.



**Args**:
  - `enable_components` (`list`): The components to be enabled. Possible values: [&#34;SYSTEM_COMPONENTS&#34;, &#34;WORKLOADS&#34;] When `null`, the `enable_components` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `component_config` sub block.


## obj monitoring_config



### fn monitoring_config.new

```ts
new()
```


`google.container_attached_cluster.monitoring_config.new` constructs a new object with attributes and blocks configured for the `monitoring_config`
Terraform sub block.



**Args**:
  - `managed_prometheus_config` (`list[obj]`): Enable Google Cloud Managed Service for Prometheus in the cluster. When `null`, the `managed_prometheus_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.monitoring_config.managed_prometheus_config.new](#fn-monitoring_configmanaged_prometheus_confignew) constructor.

**Returns**:
  - An attribute object that represents the `monitoring_config` sub block.


## obj monitoring_config.managed_prometheus_config



### fn monitoring_config.managed_prometheus_config.new

```ts
new()
```


`google.container_attached_cluster.monitoring_config.managed_prometheus_config.new` constructs a new object with attributes and blocks configured for the `managed_prometheus_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Enable Managed Collection. When `null`, the `enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `managed_prometheus_config` sub block.


## obj oidc_config



### fn oidc_config.new

```ts
new()
```


`google.container_attached_cluster.oidc_config.new` constructs a new object with attributes and blocks configured for the `oidc_config`
Terraform sub block.



**Args**:
  - `issuer_url` (`string`): A JSON Web Token (JWT) issuer URI. &#39;issuer&#39; must start with &#39;https://&#39;
  - `jwks` (`string`): OIDC verification keys in JWKS format (RFC 7517). When `null`, the `jwks` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `oidc_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.container_attached_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
