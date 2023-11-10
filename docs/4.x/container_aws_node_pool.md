---
permalink: /container_aws_node_pool/
---

# container_aws_node_pool

`container_aws_node_pool` represents the `google_container_aws_node_pool` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withAutoscaling()`](#fn-withautoscaling)
* [`fn withAutoscalingMixin()`](#fn-withautoscalingmixin)
* [`fn withCluster()`](#fn-withcluster)
* [`fn withConfig()`](#fn-withconfig)
* [`fn withConfigMixin()`](#fn-withconfigmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withManagement()`](#fn-withmanagement)
* [`fn withManagementMixin()`](#fn-withmanagementmixin)
* [`fn withMaxPodsConstraint()`](#fn-withmaxpodsconstraint)
* [`fn withMaxPodsConstraintMixin()`](#fn-withmaxpodsconstraintmixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSubnetId()`](#fn-withsubnetid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVersion()`](#fn-withversion)
* [`obj autoscaling`](#obj-autoscaling)
  * [`fn new()`](#fn-autoscalingnew)
* [`obj config`](#obj-config)
  * [`fn new()`](#fn-confignew)
  * [`obj config.autoscaling_metrics_collection`](#obj-configautoscaling_metrics_collection)
    * [`fn new()`](#fn-configautoscaling_metrics_collectionnew)
  * [`obj config.config_encryption`](#obj-configconfig_encryption)
    * [`fn new()`](#fn-configconfig_encryptionnew)
  * [`obj config.proxy_config`](#obj-configproxy_config)
    * [`fn new()`](#fn-configproxy_confignew)
  * [`obj config.root_volume`](#obj-configroot_volume)
    * [`fn new()`](#fn-configroot_volumenew)
  * [`obj config.ssh_config`](#obj-configssh_config)
    * [`fn new()`](#fn-configssh_confignew)
  * [`obj config.taints`](#obj-configtaints)
    * [`fn new()`](#fn-configtaintsnew)
* [`obj management`](#obj-management)
  * [`fn new()`](#fn-managementnew)
* [`obj max_pods_constraint`](#obj-max_pods_constraint)
  * [`fn new()`](#fn-max_pods_constraintnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.container_aws_node_pool.new` injects a new `google_container_aws_node_pool` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.container_aws_node_pool.new('some_id')

You can get the reference to the `id` field of the created `google.container_aws_node_pool` using the reference:

    $._ref.google_container_aws_node_pool.some_id.get('id')

This is the same as directly entering `"${ google_container_aws_node_pool.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `cluster` (`string`): The awsCluster for the resource
  - `location` (`string`): The location for the resource
  - `name` (`string`): The name of this resource.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `subnet_id` (`string`): The subnet where the node pool node run.
  - `version` (`string`): The Kubernetes version to run on this node pool (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAwsServerConfig.
  - `autoscaling` (`list[obj]`): Autoscaler configuration for this node pool. When `null`, the `autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.autoscaling.new](#fn-autoscalingnew) constructor.
  - `config` (`list[obj]`): The configuration of the node pool. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.config.new](#fn-confignew) constructor.
  - `management` (`list[obj]`): The Management configuration for this node pool. When `null`, the `management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.management.new](#fn-managementnew) constructor.
  - `max_pods_constraint` (`list[obj]`): The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool. When `null`, the `max_pods_constraint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.max_pods_constraint.new](#fn-max_pods_constraintnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.container_aws_node_pool.newAttrs` constructs a new object with attributes and blocks configured for the `container_aws_node_pool`
Terraform resource.

Unlike [google.container_aws_node_pool.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `cluster` (`string`): The awsCluster for the resource
  - `location` (`string`): The location for the resource
  - `name` (`string`): The name of this resource.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `subnet_id` (`string`): The subnet where the node pool node run.
  - `version` (`string`): The Kubernetes version to run on this node pool (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAwsServerConfig.
  - `autoscaling` (`list[obj]`): Autoscaler configuration for this node pool. When `null`, the `autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.autoscaling.new](#fn-autoscalingnew) constructor.
  - `config` (`list[obj]`): The configuration of the node pool. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.config.new](#fn-confignew) constructor.
  - `management` (`list[obj]`): The Management configuration for this node pool. When `null`, the `management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.management.new](#fn-managementnew) constructor.
  - `max_pods_constraint` (`list[obj]`): The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool. When `null`, the `max_pods_constraint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.max_pods_constraint.new](#fn-max_pods_constraintnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_aws_node_pool` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withAutoscaling

```ts
withAutoscaling()
```

`google.list[obj].withAutoscaling` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoscaling field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAutoscalingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoscaling` field.


### fn withAutoscalingMixin

```ts
withAutoscalingMixin()
```

`google.list[obj].withAutoscalingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoscaling field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAutoscaling](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoscaling` field.


### fn withCluster

```ts
withCluster()
```

`google.string.withCluster` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster` field.


### fn withConfig

```ts
withConfig()
```

`google.list[obj].withConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `config` field.


### fn withConfigMixin

```ts
withConfigMixin()
```

`google.list[obj].withConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `config` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withManagement

```ts
withManagement()
```

`google.list[obj].withManagement` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the management field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withManagementMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `management` field.


### fn withManagementMixin

```ts
withManagementMixin()
```

`google.list[obj].withManagementMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the management field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withManagement](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `management` field.


### fn withMaxPodsConstraint

```ts
withMaxPodsConstraint()
```

`google.list[obj].withMaxPodsConstraint` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the max_pods_constraint field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMaxPodsConstraintMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `max_pods_constraint` field.


### fn withMaxPodsConstraintMixin

```ts
withMaxPodsConstraintMixin()
```

`google.list[obj].withMaxPodsConstraintMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the max_pods_constraint field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMaxPodsConstraint](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `max_pods_constraint` field.


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


### fn withSubnetId

```ts
withSubnetId()
```

`google.string.withSubnetId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the subnet_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `subnet_id` field.


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


### fn withVersion

```ts
withVersion()
```

`google.string.withVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `version` field.


## obj autoscaling



### fn autoscaling.new

```ts
new()
```


`google.container_aws_node_pool.autoscaling.new` constructs a new object with attributes and blocks configured for the `autoscaling`
Terraform sub block.



**Args**:
  - `max_node_count` (`number`): Maximum number of nodes in the NodePool. Must be &gt;= min_node_count.
  - `min_node_count` (`number`): Minimum number of nodes in the NodePool. Must be &gt;= 1 and &lt;= max_node_count.

**Returns**:
  - An attribute object that represents the `autoscaling` sub block.


## obj config



### fn config.new

```ts
new()
```


`google.container_aws_node_pool.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `iam_instance_profile` (`string`): The name of the AWS IAM role assigned to nodes in the pool.
  - `instance_type` (`string`): Optional. The AWS instance type. When unspecified, it defaults to `m5.large`. When `null`, the `instance_type` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. The initial labels assigned to nodes of this node pool. An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `security_group_ids` (`list`): Optional. The IDs of additional security groups to add to nodes in this pool. The manager will automatically create security groups with minimum rules needed for a functioning cluster. When `null`, the `security_group_ids` field will be omitted from the resulting object.
  - `tags` (`obj`): Optional. Key/value metadata to assign to each underlying AWS resource. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.&#43;-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters. When `null`, the `tags` field will be omitted from the resulting object.
  - `autoscaling_metrics_collection` (`list[obj]`): Optional. Configuration related to CloudWatch metrics collection on the Auto Scaling group of the node pool. When unspecified, metrics collection is disabled. When `null`, the `autoscaling_metrics_collection` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.config.autoscaling_metrics_collection.new](#fn-configautoscaling_metrics_collectionnew) constructor.
  - `config_encryption` (`list[obj]`): The ARN of the AWS KMS key used to encrypt node pool configuration. When `null`, the `config_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.config.config_encryption.new](#fn-configconfig_encryptionnew) constructor.
  - `proxy_config` (`list[obj]`): Proxy configuration for outbound HTTP(S) traffic. When `null`, the `proxy_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.config.proxy_config.new](#fn-configproxy_confignew) constructor.
  - `root_volume` (`list[obj]`): Optional. Template for the root volume provisioned for node pool nodes. Volumes will be provisioned in the availability zone assigned to the node pool subnet. When unspecified, it defaults to 32 GiB with the GP2 volume type. When `null`, the `root_volume` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.config.root_volume.new](#fn-configroot_volumenew) constructor.
  - `ssh_config` (`list[obj]`): Optional. The SSH configuration. When `null`, the `ssh_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.config.ssh_config.new](#fn-configssh_confignew) constructor.
  - `taints` (`list[obj]`): Optional. The initial taints assigned to nodes of this node pool. When `null`, the `taints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_aws_node_pool.config.taints.new](#fn-configtaintsnew) constructor.

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj config.autoscaling_metrics_collection



### fn config.autoscaling_metrics_collection.new

```ts
new()
```


`google.container_aws_node_pool.config.autoscaling_metrics_collection.new` constructs a new object with attributes and blocks configured for the `autoscaling_metrics_collection`
Terraform sub block.



**Args**:
  - `granularity` (`string`): The frequency at which EC2 Auto Scaling sends aggregated data to AWS CloudWatch. The only valid value is &#34;1Minute&#34;.
  - `metrics` (`list`): The metrics to enable. For a list of valid metrics, see https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html. If you specify granularity and don&#39;t specify any metrics, all metrics are enabled. When `null`, the `metrics` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `autoscaling_metrics_collection` sub block.


## obj config.config_encryption



### fn config.config_encryption.new

```ts
new()
```


`google.container_aws_node_pool.config.config_encryption.new` constructs a new object with attributes and blocks configured for the `config_encryption`
Terraform sub block.



**Args**:
  - `kms_key_arn` (`string`): The ARN of the AWS KMS key used to encrypt node pool configuration.

**Returns**:
  - An attribute object that represents the `config_encryption` sub block.


## obj config.proxy_config



### fn config.proxy_config.new

```ts
new()
```


`google.container_aws_node_pool.config.proxy_config.new` constructs a new object with attributes and blocks configured for the `proxy_config`
Terraform sub block.



**Args**:
  - `secret_arn` (`string`): The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.
  - `secret_version` (`string`): The version string of the AWS Secret Manager secret that contains the HTTP(S) proxy configuration.

**Returns**:
  - An attribute object that represents the `proxy_config` sub block.


## obj config.root_volume



### fn config.root_volume.new

```ts
new()
```


`google.container_aws_node_pool.config.root_volume.new` constructs a new object with attributes and blocks configured for the `root_volume`
Terraform sub block.



**Args**:
  - `iops` (`number`): Optional. The number of I/O operations per second (IOPS) to provision for GP3 volume. When `null`, the `iops` field will be omitted from the resulting object.
  - `kms_key_arn` (`string`): Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used. When `null`, the `kms_key_arn` field will be omitted from the resulting object.
  - `size_gib` (`number`): Optional. The size of the volume, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. When `null`, the `size_gib` field will be omitted from the resulting object.
  - `throughput` (`number`): Optional. The throughput to provision for the volume, in MiB/s. Only valid if the volume type is GP3. When `null`, the `throughput` field will be omitted from the resulting object.
  - `volume_type` (`string`): Optional. Type of the EBS volume. When unspecified, it defaults to GP2 volume. Possible values: VOLUME_TYPE_UNSPECIFIED, GP2, GP3 When `null`, the `volume_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `root_volume` sub block.


## obj config.ssh_config



### fn config.ssh_config.new

```ts
new()
```


`google.container_aws_node_pool.config.ssh_config.new` constructs a new object with attributes and blocks configured for the `ssh_config`
Terraform sub block.



**Args**:
  - `ec2_key_pair` (`string`): The name of the EC2 key pair used to login into cluster machines.

**Returns**:
  - An attribute object that represents the `ssh_config` sub block.


## obj config.taints



### fn config.taints.new

```ts
new()
```


`google.container_aws_node_pool.config.taints.new` constructs a new object with attributes and blocks configured for the `taints`
Terraform sub block.



**Args**:
  - `effect` (`string`): The taint effect. Possible values: EFFECT_UNSPECIFIED, NO_SCHEDULE, PREFER_NO_SCHEDULE, NO_EXECUTE
  - `key` (`string`): Key for the taint.
  - `value` (`string`): Value for the taint.

**Returns**:
  - An attribute object that represents the `taints` sub block.


## obj management



### fn management.new

```ts
new()
```


`google.container_aws_node_pool.management.new` constructs a new object with attributes and blocks configured for the `management`
Terraform sub block.



**Args**:
  - `auto_repair` (`bool`): Optional. Whether or not the nodes will be automatically repaired. When `null`, the `auto_repair` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `management` sub block.


## obj max_pods_constraint



### fn max_pods_constraint.new

```ts
new()
```


`google.container_aws_node_pool.max_pods_constraint.new` constructs a new object with attributes and blocks configured for the `max_pods_constraint`
Terraform sub block.



**Args**:
  - `max_pods_per_node` (`number`): The maximum number of pods to schedule on a single node.

**Returns**:
  - An attribute object that represents the `max_pods_constraint` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.container_aws_node_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
