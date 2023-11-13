---
permalink: /composer_environment/
---

# composer_environment

`composer_environment` represents the `google_composer_environment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withConfig()`](#fn-withconfig)
* [`fn withConfigMixin()`](#fn-withconfigmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withStorageConfig()`](#fn-withstorageconfig)
* [`fn withStorageConfigMixin()`](#fn-withstorageconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj config`](#obj-config)
  * [`fn new()`](#fn-confignew)
  * [`obj config.database_config`](#obj-configdatabase_config)
    * [`fn new()`](#fn-configdatabase_confignew)
  * [`obj config.encryption_config`](#obj-configencryption_config)
    * [`fn new()`](#fn-configencryption_confignew)
  * [`obj config.maintenance_window`](#obj-configmaintenance_window)
    * [`fn new()`](#fn-configmaintenance_windownew)
  * [`obj config.master_authorized_networks_config`](#obj-configmaster_authorized_networks_config)
    * [`fn new()`](#fn-configmaster_authorized_networks_confignew)
    * [`obj config.master_authorized_networks_config.cidr_blocks`](#obj-configmaster_authorized_networks_configcidr_blocks)
      * [`fn new()`](#fn-configmaster_authorized_networks_configcidr_blocksnew)
  * [`obj config.node_config`](#obj-confignode_config)
    * [`fn new()`](#fn-confignode_confignew)
  * [`obj config.private_environment_config`](#obj-configprivate_environment_config)
    * [`fn new()`](#fn-configprivate_environment_confignew)
  * [`obj config.recovery_config`](#obj-configrecovery_config)
    * [`fn new()`](#fn-configrecovery_confignew)
    * [`obj config.recovery_config.scheduled_snapshots_config`](#obj-configrecovery_configscheduled_snapshots_config)
      * [`fn new()`](#fn-configrecovery_configscheduled_snapshots_confignew)
  * [`obj config.software_config`](#obj-configsoftware_config)
    * [`fn new()`](#fn-configsoftware_confignew)
  * [`obj config.web_server_config`](#obj-configweb_server_config)
    * [`fn new()`](#fn-configweb_server_confignew)
  * [`obj config.web_server_network_access_control`](#obj-configweb_server_network_access_control)
    * [`fn new()`](#fn-configweb_server_network_access_controlnew)
    * [`obj config.web_server_network_access_control.allowed_ip_range`](#obj-configweb_server_network_access_controlallowed_ip_range)
      * [`fn new()`](#fn-configweb_server_network_access_controlallowed_ip_rangenew)
  * [`obj config.workloads_config`](#obj-configworkloads_config)
    * [`fn new()`](#fn-configworkloads_confignew)
    * [`obj config.workloads_config.scheduler`](#obj-configworkloads_configscheduler)
      * [`fn new()`](#fn-configworkloads_configschedulernew)
    * [`obj config.workloads_config.triggerer`](#obj-configworkloads_configtriggerer)
      * [`fn new()`](#fn-configworkloads_configtriggerernew)
    * [`obj config.workloads_config.web_server`](#obj-configworkloads_configweb_server)
      * [`fn new()`](#fn-configworkloads_configweb_servernew)
    * [`obj config.workloads_config.worker`](#obj-configworkloads_configworker)
      * [`fn new()`](#fn-configworkloads_configworkernew)
* [`obj storage_config`](#obj-storage_config)
  * [`fn new()`](#fn-storage_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.composer_environment.new` injects a new `google_composer_environment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.composer_environment.new('some_id')

You can get the reference to the `id` field of the created `google.composer_environment` using the reference:

    $._ref.google_composer_environment.some_id.get('id')

This is the same as directly entering `"${ google_composer_environment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `labels` (`obj`): User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: [a-z]([-a-z0-9]*[a-z0-9])?. Label values must be between 0 and 63 characters long and must conform to the regular expression ([a-z]([-a-z0-9]*[a-z0-9])?)?. No more than 64 labels can be associated with a given environment. Both keys and values must be &lt;= 128 bytes in size.

				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the environment.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The location or Compute Engine region for the environment. When `null`, the `region` field will be omitted from the resulting object.
  - `config` (`list[obj]`): Configuration parameters for this environment. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.new](#fn-confignew) constructor.
  - `storage_config` (`list[obj]`): Configuration options for storage used by Composer environment. When `null`, the `storage_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.storage_config.new](#fn-storage_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.composer_environment.newAttrs` constructs a new object with attributes and blocks configured for the `composer_environment`
Terraform resource.

Unlike [google.composer_environment.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `labels` (`obj`): User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: [a-z]([-a-z0-9]*[a-z0-9])?. Label values must be between 0 and 63 characters long and must conform to the regular expression ([a-z]([-a-z0-9]*[a-z0-9])?)?. No more than 64 labels can be associated with a given environment. Both keys and values must be &lt;= 128 bytes in size.

				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the environment.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The location or Compute Engine region for the environment. When `null`, the `region` field will be omitted from the resulting object.
  - `config` (`list[obj]`): Configuration parameters for this environment. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.new](#fn-confignew) constructor.
  - `storage_config` (`list[obj]`): Configuration options for storage used by Composer environment. When `null`, the `storage_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.storage_config.new](#fn-storage_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `composer_environment` resource into the root Terraform configuration.


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


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


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


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withStorageConfig

```ts
withStorageConfig()
```

`google.list[obj].withStorageConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the storage_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withStorageConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `storage_config` field.


### fn withStorageConfigMixin

```ts
withStorageConfigMixin()
```

`google.list[obj].withStorageConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the storage_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withStorageConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `storage_config` field.


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


## obj config



### fn config.new

```ts
new()
```


`google.composer_environment.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `environment_size` (`string`): The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer. When `null`, the `environment_size` field will be omitted from the resulting object.
  - `node_count` (`number`): The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `node_count` field will be omitted from the resulting object.
  - `resilience_mode` (`string`): Whether high resilience is enabled or not. This field is supported for Cloud Composer environments in versions composer-2.1.15-airflow-*.*.* and newer. When `null`, the `resilience_mode` field will be omitted from the resulting object.
  - `database_config` (`list[obj]`): The configuration of Cloud SQL instance that is used by the Apache Airflow software. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `database_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.database_config.new](#fn-configdatabase_confignew) constructor.
  - `encryption_config` (`list[obj]`): The encryption options for the Composer environment and its dependencies. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.encryption_config.new](#fn-configencryption_confignew) constructor.
  - `maintenance_window` (`list[obj]`): The configuration for Cloud Composer maintenance window. When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.maintenance_window.new](#fn-configmaintenance_windownew) constructor.
  - `master_authorized_networks_config` (`list[obj]`): Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs. When `null`, the `master_authorized_networks_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.master_authorized_networks_config.new](#fn-configmaster_authorized_networks_confignew) constructor.
  - `node_config` (`list[obj]`): The configuration used for the Kubernetes Engine cluster. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.node_config.new](#fn-confignode_confignew) constructor.
  - `private_environment_config` (`list[obj]`): The configuration used for the Private IP Cloud Composer environment. When `null`, the `private_environment_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.private_environment_config.new](#fn-configprivate_environment_confignew) constructor.
  - `recovery_config` (`list[obj]`): The recovery configuration settings for the Cloud Composer environment When `null`, the `recovery_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.recovery_config.new](#fn-configrecovery_confignew) constructor.
  - `software_config` (`list[obj]`): The configuration settings for software inside the environment. When `null`, the `software_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.software_config.new](#fn-configsoftware_confignew) constructor.
  - `web_server_config` (`list[obj]`): The configuration settings for the Airflow web server App Engine instance. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `web_server_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.web_server_config.new](#fn-configweb_server_confignew) constructor.
  - `web_server_network_access_control` (`list[obj]`): The network-level access control policy for the Airflow web server. If unspecified, no network-level access restrictions will be applied. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `web_server_network_access_control` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.web_server_network_access_control.new](#fn-configweb_server_network_access_controlnew) constructor.
  - `workloads_config` (`list[obj]`): The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer. When `null`, the `workloads_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.workloads_config.new](#fn-configworkloads_confignew) constructor.

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj config.database_config



### fn config.database_config.new

```ts
new()
```


`google.composer_environment.config.database_config.new` constructs a new object with attributes and blocks configured for the `database_config`
Terraform sub block.



**Args**:
  - `machine_type` (`string`): Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used.

**Returns**:
  - An attribute object that represents the `database_config` sub block.


## obj config.encryption_config



### fn config.encryption_config.new

```ts
new()
```


`google.composer_environment.config.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): Optional. Customer-managed Encryption Key available through Google&#39;s Key Management Service. Cannot be updated.

**Returns**:
  - An attribute object that represents the `encryption_config` sub block.


## obj config.maintenance_window



### fn config.maintenance_window.new

```ts
new()
```


`google.composer_environment.config.maintenance_window.new` constructs a new object with attributes and blocks configured for the `maintenance_window`
Terraform sub block.



**Args**:
  - `end_time` (`string`): Maintenance window end time. It is used only to calculate the duration of the maintenance window. The value for end-time must be in the future, relative to &#39;start_time&#39;.
  - `recurrence` (`string`): Maintenance window recurrence. Format is a subset of RFC-5545 (https://tools.ietf.org/html/rfc5545) &#39;RRULE&#39;. The only allowed values for &#39;FREQ&#39; field are &#39;FREQ=DAILY&#39; and &#39;FREQ=WEEKLY;BYDAY=...&#39;. Example values: &#39;FREQ=WEEKLY;BYDAY=TU,WE&#39;, &#39;FREQ=DAILY&#39;.
  - `start_time` (`string`): Start time of the first recurrence of the maintenance window.

**Returns**:
  - An attribute object that represents the `maintenance_window` sub block.


## obj config.master_authorized_networks_config



### fn config.master_authorized_networks_config.new

```ts
new()
```


`google.composer_environment.config.master_authorized_networks_config.new` constructs a new object with attributes and blocks configured for the `master_authorized_networks_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Whether or not master authorized networks is enabled.
  - `cidr_blocks` (`list[obj]`): cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS. When `null`, the `cidr_blocks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.master_authorized_networks_config.cidr_blocks.new](#fn-configconfigcidr_blocksnew) constructor.

**Returns**:
  - An attribute object that represents the `master_authorized_networks_config` sub block.


## obj config.master_authorized_networks_config.cidr_blocks



### fn config.master_authorized_networks_config.cidr_blocks.new

```ts
new()
```


`google.composer_environment.config.master_authorized_networks_config.cidr_blocks.new` constructs a new object with attributes and blocks configured for the `cidr_blocks`
Terraform sub block.



**Args**:
  - `cidr_block` (`string`): cidr_block must be specified in CIDR notation.
  - `display_name` (`string`): display_name is a field for users to identify CIDR blocks. When `null`, the `display_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cidr_blocks` sub block.


## obj config.node_config



### fn config.node_config.new

```ts
new()
```


`google.composer_environment.config.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`
Terraform sub block.



**Args**:
  - `disk_size_gb` (`number`): The disk size in GB used for node VMs. Minimum size is 20GB. If unspecified, defaults to 100GB. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `disk_size_gb` field will be omitted from the resulting object.
  - `enable_ip_masq_agent` (`bool`): Deploys &#39;ip-masq-agent&#39; daemon set in the GKE cluster and defines nonMasqueradeCIDRs equals to pod IP range so IP masquerading is used for all destination addresses, except between pods traffic. See: https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent When `null`, the `enable_ip_masq_agent` field will be omitted from the resulting object.
  - `ip_allocation_policy` (`list`): Configuration for controlling how IPs are allocated in the GKE cluster. Cannot be updated. When `null`, the `ip_allocation_policy` field will be omitted from the resulting object.
  - `machine_type` (`string`): The Compute Engine machine type used for cluster instances, specified as a name or relative resource name. For example: &#34;projects/{project}/zones/{zone}/machineTypes/{machineType}&#34;. Must belong to the enclosing environment&#39;s project and region/zone. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `network` (`string`): The Compute Engine machine type used for cluster instances, specified as a name or relative resource name. For example: &#34;projects/{project}/zones/{zone}/machineTypes/{machineType}&#34;. Must belong to the enclosing environment&#39;s project and region/zone. The network must belong to the environment&#39;s project. If unspecified, the &#34;default&#34; network ID in the environment&#39;s project is used. If a Custom Subnet Network is provided, subnetwork must also be provided. When `null`, the `network` field will be omitted from the resulting object.
  - `oauth_scopes` (`list`): The set of Google API scopes to be made available on all node VMs. Cannot be updated. If empty, defaults to [&#34;https://www.googleapis.com/auth/cloud-platform&#34;]. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `oauth_scopes` field will be omitted from the resulting object.
  - `service_account` (`string`): The Google Cloud Platform Service Account to be used by the node VMs. If a service account is not specified, the &#34;default&#34; Compute Engine service account is used. Cannot be updated. If given, note that the service account must have roles/composer.worker for any GCP resources created under the Cloud Composer Environment. When `null`, the `service_account` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The Compute Engine subnetwork to be used for machine communications, , specified as a self-link, relative resource name (e.g. &#34;projects/{project}/regions/{region}/subnetworks/{subnetwork}&#34;), or by name. If subnetwork is provided, network must also be provided and the subnetwork must belong to the enclosing environment&#39;s project and region. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `tags` (`list`): The list of instance tags applied to all node VMs. Tags are used to identify valid sources or targets for network firewalls. Each tag within the list must comply with RFC1035. Cannot be updated. When `null`, the `tags` field will be omitted from the resulting object.
  - `zone` (`string`): The Compute Engine zone in which to deploy the VMs running the Apache Airflow software, specified as the zone name or relative resource name (e.g. &#34;projects/{project}/zones/{zone}&#34;). Must belong to the enclosing environment&#39;s project and region. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `zone` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `node_config` sub block.


## obj config.private_environment_config



### fn config.private_environment_config.new

```ts
new()
```


`google.composer_environment.config.private_environment_config.new` constructs a new object with attributes and blocks configured for the `private_environment_config`
Terraform sub block.



**Args**:
  - `cloud_composer_connection_subnetwork` (`string`): When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer. When `null`, the `cloud_composer_connection_subnetwork` field will be omitted from the resulting object.
  - `cloud_composer_network_ipv4_cidr_block` (`string`): The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer. When `null`, the `cloud_composer_network_ipv4_cidr_block` field will be omitted from the resulting object.
  - `cloud_sql_ipv4_cidr_block` (`string`): The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block. When `null`, the `cloud_sql_ipv4_cidr_block` field will be omitted from the resulting object.
  - `connection_type` (`string`): Mode of internal communication within the Composer environment. Must be one of &#34;VPC_PEERING&#34; or &#34;PRIVATE_SERVICE_CONNECT&#34;. When `null`, the `connection_type` field will be omitted from the resulting object.
  - `enable_private_endpoint` (`bool`): If true, access to the public endpoint of the GKE cluster is denied. If this field is set to true, ip_allocation_policy.use_ip_aliases must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `enable_private_endpoint` field will be omitted from the resulting object.
  - `enable_privately_used_public_ips` (`bool`): When enabled, IPs from public (non-RFC1918) ranges can be used for ip_allocation_policy.cluster_ipv4_cidr_block and ip_allocation_policy.service_ipv4_cidr_block. When `null`, the `enable_privately_used_public_ips` field will be omitted from the resulting object.
  - `master_ipv4_cidr_block` (`string`): The IP range in CIDR notation to use for the hosted master network. This range is used for assigning internal IP addresses to the cluster master or set of masters and to the internal load balancer virtual IP. This range must not overlap with any other ranges in use within the cluster&#39;s network. If left blank, the default value of &#39;172.16.0.0/28&#39; is used. When `null`, the `master_ipv4_cidr_block` field will be omitted from the resulting object.
  - `web_server_ipv4_cidr_block` (`string`): The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. When `null`, the `web_server_ipv4_cidr_block` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `private_environment_config` sub block.


## obj config.recovery_config



### fn config.recovery_config.new

```ts
new()
```


`google.composer_environment.config.recovery_config.new` constructs a new object with attributes and blocks configured for the `recovery_config`
Terraform sub block.



**Args**:
  - `scheduled_snapshots_config` (`list[obj]`): The configuration settings for scheduled snapshots. When `null`, the `scheduled_snapshots_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.recovery_config.scheduled_snapshots_config.new](#fn-configconfigscheduled_snapshots_confignew) constructor.

**Returns**:
  - An attribute object that represents the `recovery_config` sub block.


## obj config.recovery_config.scheduled_snapshots_config



### fn config.recovery_config.scheduled_snapshots_config.new

```ts
new()
```


`google.composer_environment.config.recovery_config.scheduled_snapshots_config.new` constructs a new object with attributes and blocks configured for the `scheduled_snapshots_config`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): When enabled, Cloud Composer periodically saves snapshots of your environment to a Cloud Storage bucket.
  - `snapshot_creation_schedule` (`string`): Snapshot schedule, in the unix-cron format. When `null`, the `snapshot_creation_schedule` field will be omitted from the resulting object.
  - `snapshot_location` (`string`): the URI of a bucket folder where to save the snapshot. When `null`, the `snapshot_location` field will be omitted from the resulting object.
  - `time_zone` (`string`): A time zone for the schedule. This value is a time offset and does not take into account daylight saving time changes. Valid values are from UTC-12 to UTC&#43;12. Examples: UTC, UTC-01, UTC&#43;03. When `null`, the `time_zone` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `scheduled_snapshots_config` sub block.


## obj config.software_config



### fn config.software_config.new

```ts
new()
```


`google.composer_environment.config.software_config.new` constructs a new object with attributes and blocks configured for the `software_config`
Terraform sub block.



**Args**:
  - `airflow_config_overrides` (`obj`): Apache Airflow configuration properties to override. Property keys contain the section and property names, separated by a hyphen, for example &#34;core-dags_are_paused_at_creation&#34;. Section names must not contain hyphens (&#34;-&#34;), opening square brackets (&#34;[&#34;), or closing square brackets (&#34;]&#34;). The property name must not be empty and cannot contain &#34;=&#34; or &#34;;&#34;. Section and property names cannot contain characters: &#34;.&#34; Apache Airflow configuration property names must be written in snake_case. Property values can contain any character, and can be written in any lower/upper case format. Certain Apache Airflow configuration property values are blacklisted, and cannot be overridden. When `null`, the `airflow_config_overrides` field will be omitted from the resulting object.
  - `env_variables` (`obj`): Additional environment variables to provide to the Apache Airflow scheduler, worker, and webserver processes. Environment variable names must match the regular expression [a-zA-Z_][a-zA-Z0-9_]*. They cannot specify Apache Airflow software configuration overrides (they cannot match the regular expression AIRFLOW__[A-Z0-9_]&#43;__[A-Z0-9_]&#43;), and they cannot match any of the following reserved names: AIRFLOW_HOME C_FORCE_ROOT CONTAINER_NAME DAGS_FOLDER GCP_PROJECT GCS_BUCKET GKE_CLUSTER_NAME SQL_DATABASE SQL_INSTANCE SQL_PASSWORD SQL_PROJECT SQL_REGION SQL_USER. When `null`, the `env_variables` field will be omitted from the resulting object.
  - `image_version` (`string`): The version of the software running in the environment. This encapsulates both the version of Cloud Composer functionality and the version of Apache Airflow. It must match the regular expression composer-([0-9]&#43;(\.[0-9]&#43;\.[0-9]&#43;(-preview\.[0-9]&#43;)?)?|latest)-airflow-([0-9]&#43;(\.[0-9]&#43;(\.[0-9]&#43;)?)?). The Cloud Composer portion of the image version is a full semantic version, or an alias in the form of major version number or &#39;latest&#39;. The Apache Airflow portion of the image version is a full semantic version that points to one of the supported Apache Airflow versions, or an alias in the form of only major or major.minor versions specified. See documentation for more details and version list. When `null`, the `image_version` field will be omitted from the resulting object.
  - `pypi_packages` (`obj`): Custom Python Package Index (PyPI) packages to be installed in the environment. Keys refer to the lowercase package name (e.g. &#34;numpy&#34;). Values are the lowercase extras and version specifier (e.g. &#34;==1.12.0&#34;, &#34;[devel,gcp_api]&#34;, &#34;[devel]&gt;=1.8.2, &lt;1.9.2&#34;). To specify a package without pinning it to a version specifier, use the empty string as the value. When `null`, the `pypi_packages` field will be omitted from the resulting object.
  - `python_version` (`string`): The major version of Python used to run the Apache Airflow scheduler, worker, and webserver processes. Can be set to &#39;2&#39; or &#39;3&#39;. If not specified, the default is &#39;2&#39;. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. Environments in newer versions always use Python major version 3. When `null`, the `python_version` field will be omitted from the resulting object.
  - `scheduler_count` (`number`): The number of schedulers for Airflow. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-2.*.*. When `null`, the `scheduler_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `software_config` sub block.


## obj config.web_server_config



### fn config.web_server_config.new

```ts
new()
```


`google.composer_environment.config.web_server_config.new` constructs a new object with attributes and blocks configured for the `web_server_config`
Terraform sub block.



**Args**:
  - `machine_type` (`string`): Optional. Machine type on which Airflow web server is running. It has to be one of: composer-n1-webserver-2, composer-n1-webserver-4 or composer-n1-webserver-8. If not specified, composer-n1-webserver-2 will be used. Value custom is returned only in response, if Airflow web server parameters were manually changed to a non-standard values.

**Returns**:
  - An attribute object that represents the `web_server_config` sub block.


## obj config.web_server_network_access_control



### fn config.web_server_network_access_control.new

```ts
new()
```


`google.composer_environment.config.web_server_network_access_control.new` constructs a new object with attributes and blocks configured for the `web_server_network_access_control`
Terraform sub block.



**Args**:
  - `allowed_ip_range` (`list[obj]`): A collection of allowed IP ranges with descriptions. When `null`, the `allowed_ip_range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.web_server_network_access_control.allowed_ip_range.new](#fn-configconfigallowed_ip_rangenew) constructor.

**Returns**:
  - An attribute object that represents the `web_server_network_access_control` sub block.


## obj config.web_server_network_access_control.allowed_ip_range



### fn config.web_server_network_access_control.allowed_ip_range.new

```ts
new()
```


`google.composer_environment.config.web_server_network_access_control.allowed_ip_range.new` constructs a new object with attributes and blocks configured for the `allowed_ip_range`
Terraform sub block.



**Args**:
  - `description` (`string`): A description of this ip range. When `null`, the `description` field will be omitted from the resulting object.
  - `value` (`string`): IP address or range, defined using CIDR notation, of requests that this rule applies to. Examples: 192.168.1.1 or 192.168.0.0/16 or 2001:db8::/32 or 2001:0db8:0000:0042:0000:8a2e:0370:7334. IP range prefixes should be properly truncated. For example, 1.2.3.4/24 should be truncated to 1.2.3.0/24. Similarly, for IPv6, 2001:db8::1/32 should be truncated to 2001:db8::/32.

**Returns**:
  - An attribute object that represents the `allowed_ip_range` sub block.


## obj config.workloads_config



### fn config.workloads_config.new

```ts
new()
```


`google.composer_environment.config.workloads_config.new` constructs a new object with attributes and blocks configured for the `workloads_config`
Terraform sub block.



**Args**:
  - `scheduler` (`list[obj]`): Configuration for resources used by Airflow schedulers. When `null`, the `scheduler` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.workloads_config.scheduler.new](#fn-configconfigschedulernew) constructor.
  - `triggerer` (`list[obj]`): Configuration for resources used by Airflow triggerers. When `null`, the `triggerer` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.workloads_config.triggerer.new](#fn-configconfigtriggerernew) constructor.
  - `web_server` (`list[obj]`): Configuration for resources used by Airflow web server. When `null`, the `web_server` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.workloads_config.web_server.new](#fn-configconfigweb_servernew) constructor.
  - `worker` (`list[obj]`): Configuration for resources used by Airflow workers. When `null`, the `worker` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.composer_environment.config.workloads_config.worker.new](#fn-configconfigworkernew) constructor.

**Returns**:
  - An attribute object that represents the `workloads_config` sub block.


## obj config.workloads_config.scheduler



### fn config.workloads_config.scheduler.new

```ts
new()
```


`google.composer_environment.config.workloads_config.scheduler.new` constructs a new object with attributes and blocks configured for the `scheduler`
Terraform sub block.



**Args**:
  - `count` (`number`): The number of schedulers. When `null`, the `count` field will be omitted from the resulting object.
  - `cpu` (`number`): CPU request and limit for a single Airflow scheduler replica When `null`, the `cpu` field will be omitted from the resulting object.
  - `memory_gb` (`number`): Memory (GB) request and limit for a single Airflow scheduler replica. When `null`, the `memory_gb` field will be omitted from the resulting object.
  - `storage_gb` (`number`): Storage (GB) request and limit for a single Airflow scheduler replica. When `null`, the `storage_gb` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `scheduler` sub block.


## obj config.workloads_config.triggerer



### fn config.workloads_config.triggerer.new

```ts
new()
```


`google.composer_environment.config.workloads_config.triggerer.new` constructs a new object with attributes and blocks configured for the `triggerer`
Terraform sub block.



**Args**:
  - `count` (`number`): The number of triggerers.
  - `cpu` (`number`): CPU request and limit for a single Airflow triggerer replica.
  - `memory_gb` (`number`): Memory (GB) request and limit for a single Airflow triggerer replica.

**Returns**:
  - An attribute object that represents the `triggerer` sub block.


## obj config.workloads_config.web_server



### fn config.workloads_config.web_server.new

```ts
new()
```


`google.composer_environment.config.workloads_config.web_server.new` constructs a new object with attributes and blocks configured for the `web_server`
Terraform sub block.



**Args**:
  - `cpu` (`number`): CPU request and limit for Airflow web server. When `null`, the `cpu` field will be omitted from the resulting object.
  - `memory_gb` (`number`): Memory (GB) request and limit for Airflow web server. When `null`, the `memory_gb` field will be omitted from the resulting object.
  - `storage_gb` (`number`): Storage (GB) request and limit for Airflow web server. When `null`, the `storage_gb` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `web_server` sub block.


## obj config.workloads_config.worker



### fn config.workloads_config.worker.new

```ts
new()
```


`google.composer_environment.config.workloads_config.worker.new` constructs a new object with attributes and blocks configured for the `worker`
Terraform sub block.



**Args**:
  - `cpu` (`number`): CPU request and limit for a single Airflow worker replica. When `null`, the `cpu` field will be omitted from the resulting object.
  - `max_count` (`number`): Maximum number of workers for autoscaling. When `null`, the `max_count` field will be omitted from the resulting object.
  - `memory_gb` (`number`): Memory (GB) request and limit for a single Airflow worker replica. When `null`, the `memory_gb` field will be omitted from the resulting object.
  - `min_count` (`number`): Minimum number of workers for autoscaling. When `null`, the `min_count` field will be omitted from the resulting object.
  - `storage_gb` (`number`): Storage (GB) request and limit for a single Airflow worker replica. When `null`, the `storage_gb` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `worker` sub block.


## obj storage_config



### fn storage_config.new

```ts
new()
```


`google.composer_environment.storage_config.new` constructs a new object with attributes and blocks configured for the `storage_config`
Terraform sub block.



**Args**:
  - `bucket` (`string`): Optional. Name of an existing Cloud Storage bucket to be used by the environment.

**Returns**:
  - An attribute object that represents the `storage_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.composer_environment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
