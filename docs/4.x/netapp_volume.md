---
permalink: /netapp_volume/
---

# netapp_volume

`netapp_volume` represents the `google_netapp_volume` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCapacityGib()`](#fn-withcapacitygib)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withExportPolicy()`](#fn-withexportpolicy)
* [`fn withExportPolicyMixin()`](#fn-withexportpolicymixin)
* [`fn withKerberosEnabled()`](#fn-withkerberosenabled)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withProtocols()`](#fn-withprotocols)
* [`fn withRestrictedActions()`](#fn-withrestrictedactions)
* [`fn withSecurityStyle()`](#fn-withsecuritystyle)
* [`fn withShareName()`](#fn-withsharename)
* [`fn withSmbSettings()`](#fn-withsmbsettings)
* [`fn withSnapshotDirectory()`](#fn-withsnapshotdirectory)
* [`fn withSnapshotPolicy()`](#fn-withsnapshotpolicy)
* [`fn withSnapshotPolicyMixin()`](#fn-withsnapshotpolicymixin)
* [`fn withStoragePool()`](#fn-withstoragepool)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUnixPermissions()`](#fn-withunixpermissions)
* [`obj export_policy`](#obj-export_policy)
  * [`fn new()`](#fn-export_policynew)
  * [`obj export_policy.rules`](#obj-export_policyrules)
    * [`fn new()`](#fn-export_policyrulesnew)
* [`obj snapshot_policy`](#obj-snapshot_policy)
  * [`fn new()`](#fn-snapshot_policynew)
  * [`obj snapshot_policy.daily_schedule`](#obj-snapshot_policydaily_schedule)
    * [`fn new()`](#fn-snapshot_policydaily_schedulenew)
  * [`obj snapshot_policy.hourly_schedule`](#obj-snapshot_policyhourly_schedule)
    * [`fn new()`](#fn-snapshot_policyhourly_schedulenew)
  * [`obj snapshot_policy.monthly_schedule`](#obj-snapshot_policymonthly_schedule)
    * [`fn new()`](#fn-snapshot_policymonthly_schedulenew)
  * [`obj snapshot_policy.weekly_schedule`](#obj-snapshot_policyweekly_schedule)
    * [`fn new()`](#fn-snapshot_policyweekly_schedulenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.netapp_volume.new` injects a new `google_netapp_volume` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.netapp_volume.new('some_id')

You can get the reference to the `id` field of the created `google.netapp_volume` using the reference:

    $._ref.google_netapp_volume.some_id.get('id')

This is the same as directly entering `"${ google_netapp_volume.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `capacity_gib` (`string`): Capacity of the volume (in GiB).
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `kerberos_enabled` (`bool`): Flag indicating if the volume is a kerberos volume or not, export policy rules control kerberos security modes (krb5, krb5i, krb5p). When `null`, the `kerberos_enabled` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels as key value pairs. Example: &#39;{ &#34;owner&#34;: &#34;Bob&#34;, &#34;department&#34;: &#34;finance&#34;, &#34;purpose&#34;: &#34;testing&#34; }&#39;.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Name of the pool location. Usually a region name, expect for some STANDARD service level pools which require a zone name.
  - `name` (`string`): The name of the volume. Needs to be unique per location.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `protocols` (`list`): The protocol of the volume. Allowed combinations are &#39;[&#39;NFSV3&#39;]&#39;, &#39;[&#39;NFSV4&#39;]&#39;, &#39;[&#39;SMB&#39;]&#39;, &#39;[&#39;NFSV3&#39;, &#39;NFSV4&#39;]&#39;, &#39;[&#39;SMB&#39;, &#39;NFSV3&#39;]&#39; and &#39;[&#39;SMB&#39;, &#39;NFSV4&#39;]&#39;. Possible values: [&#34;NFSV3&#34;, &#34;NFSV4&#34;, &#34;SMB&#34;]
  - `restricted_actions` (`list`): List of actions that are restricted on this volume. Possible values: [&#34;DELETE&#34;] When `null`, the `restricted_actions` field will be omitted from the resulting object.
  - `security_style` (`string`): Security Style of the Volume. Use UNIX to use UNIX or NFSV4 ACLs for file permissions.
Use NTFS to use NTFS ACLs for file permissions. Can only be set for volumes which use SMB together with NFS as protocol. Possible values: [&#34;NTFS&#34;, &#34;UNIX&#34;] When `null`, the `security_style` field will be omitted from the resulting object.
  - `share_name` (`string`): Share name (SMB) or export path (NFS) of the volume. Needs to be unique per location.
  - `smb_settings` (`list`): Settings for volumes with SMB access. Possible values: [&#34;ENCRYPT_DATA&#34;, &#34;BROWSABLE&#34;, &#34;CHANGE_NOTIFY&#34;, &#34;NON_BROWSABLE&#34;, &#34;OPLOCKS&#34;, &#34;SHOW_SNAPSHOT&#34;, &#34;SHOW_PREVIOUS_VERSIONS&#34;, &#34;ACCESS_BASED_ENUMERATION&#34;, &#34;CONTINUOUSLY_AVAILABLE&#34;] When `null`, the `smb_settings` field will be omitted from the resulting object.
  - `snapshot_directory` (`bool`): If enabled, a NFS volume will contain a read-only .snapshot directory which provides access to each of the volume&#39;s snapshots. Will enable &#34;Previous Versions&#34; support for SMB. When `null`, the `snapshot_directory` field will be omitted from the resulting object.
  - `storage_pool` (`string`): Name of the storage pool to create the volume in. Pool needs enough spare capacity to accomodate the volume.
  - `unix_permissions` (`string`): Unix permission the mount point will be created with. Default is 0770. Applicable for UNIX security style volumes only. When `null`, the `unix_permissions` field will be omitted from the resulting object.
  - `export_policy` (`list[obj]`): Export policy of the volume for NFSV3 and/or NFSV4.1 access. When `null`, the `export_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.export_policy.new](#fn-export_policynew) constructor.
  - `snapshot_policy` (`list[obj]`): Snapshot policy defines the schedule for automatic snapshot creation.
To disable automatic snapshot creation you have to remove the whole snapshot_policy block. When `null`, the `snapshot_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.snapshot_policy.new](#fn-snapshot_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.netapp_volume.newAttrs` constructs a new object with attributes and blocks configured for the `netapp_volume`
Terraform resource.

Unlike [google.netapp_volume.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `capacity_gib` (`string`): Capacity of the volume (in GiB).
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `kerberos_enabled` (`bool`): Flag indicating if the volume is a kerberos volume or not, export policy rules control kerberos security modes (krb5, krb5i, krb5p). When `null`, the `kerberos_enabled` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels as key value pairs. Example: &#39;{ &#34;owner&#34;: &#34;Bob&#34;, &#34;department&#34;: &#34;finance&#34;, &#34;purpose&#34;: &#34;testing&#34; }&#39;.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Name of the pool location. Usually a region name, expect for some STANDARD service level pools which require a zone name.
  - `name` (`string`): The name of the volume. Needs to be unique per location.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `protocols` (`list`): The protocol of the volume. Allowed combinations are &#39;[&#39;NFSV3&#39;]&#39;, &#39;[&#39;NFSV4&#39;]&#39;, &#39;[&#39;SMB&#39;]&#39;, &#39;[&#39;NFSV3&#39;, &#39;NFSV4&#39;]&#39;, &#39;[&#39;SMB&#39;, &#39;NFSV3&#39;]&#39; and &#39;[&#39;SMB&#39;, &#39;NFSV4&#39;]&#39;. Possible values: [&#34;NFSV3&#34;, &#34;NFSV4&#34;, &#34;SMB&#34;]
  - `restricted_actions` (`list`): List of actions that are restricted on this volume. Possible values: [&#34;DELETE&#34;] When `null`, the `restricted_actions` field will be omitted from the resulting object.
  - `security_style` (`string`): Security Style of the Volume. Use UNIX to use UNIX or NFSV4 ACLs for file permissions.
Use NTFS to use NTFS ACLs for file permissions. Can only be set for volumes which use SMB together with NFS as protocol. Possible values: [&#34;NTFS&#34;, &#34;UNIX&#34;] When `null`, the `security_style` field will be omitted from the resulting object.
  - `share_name` (`string`): Share name (SMB) or export path (NFS) of the volume. Needs to be unique per location.
  - `smb_settings` (`list`): Settings for volumes with SMB access. Possible values: [&#34;ENCRYPT_DATA&#34;, &#34;BROWSABLE&#34;, &#34;CHANGE_NOTIFY&#34;, &#34;NON_BROWSABLE&#34;, &#34;OPLOCKS&#34;, &#34;SHOW_SNAPSHOT&#34;, &#34;SHOW_PREVIOUS_VERSIONS&#34;, &#34;ACCESS_BASED_ENUMERATION&#34;, &#34;CONTINUOUSLY_AVAILABLE&#34;] When `null`, the `smb_settings` field will be omitted from the resulting object.
  - `snapshot_directory` (`bool`): If enabled, a NFS volume will contain a read-only .snapshot directory which provides access to each of the volume&#39;s snapshots. Will enable &#34;Previous Versions&#34; support for SMB. When `null`, the `snapshot_directory` field will be omitted from the resulting object.
  - `storage_pool` (`string`): Name of the storage pool to create the volume in. Pool needs enough spare capacity to accomodate the volume.
  - `unix_permissions` (`string`): Unix permission the mount point will be created with. Default is 0770. Applicable for UNIX security style volumes only. When `null`, the `unix_permissions` field will be omitted from the resulting object.
  - `export_policy` (`list[obj]`): Export policy of the volume for NFSV3 and/or NFSV4.1 access. When `null`, the `export_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.export_policy.new](#fn-export_policynew) constructor.
  - `snapshot_policy` (`list[obj]`): Snapshot policy defines the schedule for automatic snapshot creation.
To disable automatic snapshot creation you have to remove the whole snapshot_policy block. When `null`, the `snapshot_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.snapshot_policy.new](#fn-snapshot_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `netapp_volume` resource into the root Terraform configuration.


### fn withCapacityGib

```ts
withCapacityGib()
```

`google.string.withCapacityGib` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the capacity_gib field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `capacity_gib` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withExportPolicy

```ts
withExportPolicy()
```

`google.list[obj].withExportPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the export_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withExportPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `export_policy` field.


### fn withExportPolicyMixin

```ts
withExportPolicyMixin()
```

`google.list[obj].withExportPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the export_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withExportPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `export_policy` field.


### fn withKerberosEnabled

```ts
withKerberosEnabled()
```

`google.bool.withKerberosEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the kerberos_enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `kerberos_enabled` field.


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


### fn withProtocols

```ts
withProtocols()
```

`google.list.withProtocols` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the protocols field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `protocols` field.


### fn withRestrictedActions

```ts
withRestrictedActions()
```

`google.list.withRestrictedActions` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the restricted_actions field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `restricted_actions` field.


### fn withSecurityStyle

```ts
withSecurityStyle()
```

`google.string.withSecurityStyle` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the security_style field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `security_style` field.


### fn withShareName

```ts
withShareName()
```

`google.string.withShareName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the share_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `share_name` field.


### fn withSmbSettings

```ts
withSmbSettings()
```

`google.list.withSmbSettings` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the smb_settings field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `smb_settings` field.


### fn withSnapshotDirectory

```ts
withSnapshotDirectory()
```

`google.bool.withSnapshotDirectory` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the snapshot_directory field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `snapshot_directory` field.


### fn withSnapshotPolicy

```ts
withSnapshotPolicy()
```

`google.list[obj].withSnapshotPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the snapshot_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSnapshotPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `snapshot_policy` field.


### fn withSnapshotPolicyMixin

```ts
withSnapshotPolicyMixin()
```

`google.list[obj].withSnapshotPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the snapshot_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSnapshotPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `snapshot_policy` field.


### fn withStoragePool

```ts
withStoragePool()
```

`google.string.withStoragePool` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the storage_pool field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `storage_pool` field.


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


### fn withUnixPermissions

```ts
withUnixPermissions()
```

`google.string.withUnixPermissions` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the unix_permissions field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `unix_permissions` field.


## obj export_policy



### fn export_policy.new

```ts
new()
```


`google.netapp_volume.export_policy.new` constructs a new object with attributes and blocks configured for the `export_policy`
Terraform sub block.



**Args**:
  - `rules` (`list[obj]`): Export rules (up to 5) control NFS volume access. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.export_policy.rules.new](#fn-export_policyrulesnew) constructor.

**Returns**:
  - An attribute object that represents the `export_policy` sub block.


## obj export_policy.rules



### fn export_policy.rules.new

```ts
new()
```


`google.netapp_volume.export_policy.rules.new` constructs a new object with attributes and blocks configured for the `rules`
Terraform sub block.



**Args**:
  - `access_type` (`string`): Defines the access type for clients matching the &#39;allowedClients&#39; specification. Possible values: [&#34;READ_ONLY&#34;, &#34;READ_WRITE&#34;, &#34;READ_NONE&#34;] When `null`, the `access_type` field will be omitted from the resulting object.
  - `allowed_clients` (`string`): Defines the client ingress specification (allowed clients) as a comma seperated list with IPv4 CIDRs or IPv4 host addresses. When `null`, the `allowed_clients` field will be omitted from the resulting object.
  - `has_root_access` (`string`): If enabled, the root user (UID = 0) of the specified clients doesn&#39;t get mapped to nobody (UID = 65534). This is also known as no_root_squash. When `null`, the `has_root_access` field will be omitted from the resulting object.
  - `kerberos5_read_only` (`bool`): If enabled (true) the rule defines a read only access for clients matching the &#39;allowedClients&#39; specification. It enables nfs clients to mount using &#39;authentication&#39; kerberos security mode. When `null`, the `kerberos5_read_only` field will be omitted from the resulting object.
  - `kerberos5_read_write` (`bool`): If enabled (true) the rule defines read and write access for clients matching the &#39;allowedClients&#39; specification. It enables nfs clients to mount using &#39;authentication&#39; kerberos security mode. The &#39;kerberos5ReadOnly&#39; value is ignored if this is enabled. When `null`, the `kerberos5_read_write` field will be omitted from the resulting object.
  - `kerberos5i_read_only` (`bool`): If enabled (true) the rule defines a read only access for clients matching the &#39;allowedClients&#39; specification. It enables nfs clients to mount using &#39;integrity&#39; kerberos security mode. When `null`, the `kerberos5i_read_only` field will be omitted from the resulting object.
  - `kerberos5i_read_write` (`bool`): If enabled (true) the rule defines read and write access for clients matching the &#39;allowedClients&#39; specification. It enables nfs clients to mount using &#39;integrity&#39; kerberos security mode. The &#39;kerberos5iReadOnly&#39; value is ignored if this is enabled. When `null`, the `kerberos5i_read_write` field will be omitted from the resulting object.
  - `kerberos5p_read_only` (`bool`): If enabled (true) the rule defines a read only access for clients matching the &#39;allowedClients&#39; specification. It enables nfs clients to mount using &#39;privacy&#39; kerberos security mode. When `null`, the `kerberos5p_read_only` field will be omitted from the resulting object.
  - `kerberos5p_read_write` (`bool`): If enabled (true) the rule defines read and write access for clients matching the &#39;allowedClients&#39; specification. It enables nfs clients to mount using &#39;privacy&#39; kerberos security mode. The &#39;kerberos5pReadOnly&#39; value is ignored if this is enabled. When `null`, the `kerberos5p_read_write` field will be omitted from the resulting object.
  - `nfsv3` (`bool`): Enable to apply the export rule to NFSV3 clients. When `null`, the `nfsv3` field will be omitted from the resulting object.
  - `nfsv4` (`bool`): Enable to apply the export rule to NFSV4.1 clients. When `null`, the `nfsv4` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `rules` sub block.


## obj snapshot_policy



### fn snapshot_policy.new

```ts
new()
```


`google.netapp_volume.snapshot_policy.new` constructs a new object with attributes and blocks configured for the `snapshot_policy`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Enables automated snapshot creation according to defined schedule. Default is false.
To disable automatic snapshot creation you have to remove the whole snapshot_policy block. When `null`, the `enabled` field will be omitted from the resulting object.
  - `daily_schedule` (`list[obj]`): Daily schedule policy. When `null`, the `daily_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.snapshot_policy.daily_schedule.new](#fn-snapshot_policydaily_schedulenew) constructor.
  - `hourly_schedule` (`list[obj]`): Hourly schedule policy. When `null`, the `hourly_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.snapshot_policy.hourly_schedule.new](#fn-snapshot_policyhourly_schedulenew) constructor.
  - `monthly_schedule` (`list[obj]`): Monthly schedule policy. When `null`, the `monthly_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.snapshot_policy.monthly_schedule.new](#fn-snapshot_policymonthly_schedulenew) constructor.
  - `weekly_schedule` (`list[obj]`): Weekly schedule policy. When `null`, the `weekly_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_volume.snapshot_policy.weekly_schedule.new](#fn-snapshot_policyweekly_schedulenew) constructor.

**Returns**:
  - An attribute object that represents the `snapshot_policy` sub block.


## obj snapshot_policy.daily_schedule



### fn snapshot_policy.daily_schedule.new

```ts
new()
```


`google.netapp_volume.snapshot_policy.daily_schedule.new` constructs a new object with attributes and blocks configured for the `daily_schedule`
Terraform sub block.



**Args**:
  - `hour` (`number`): Set the hour to create the snapshot (0-23), defaults to midnight (0). When `null`, the `hour` field will be omitted from the resulting object.
  - `minute` (`number`): Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). When `null`, the `minute` field will be omitted from the resulting object.
  - `snapshots_to_keep` (`number`): The maximum number of snapshots to keep for the daily schedule.

**Returns**:
  - An attribute object that represents the `daily_schedule` sub block.


## obj snapshot_policy.hourly_schedule



### fn snapshot_policy.hourly_schedule.new

```ts
new()
```


`google.netapp_volume.snapshot_policy.hourly_schedule.new` constructs a new object with attributes and blocks configured for the `hourly_schedule`
Terraform sub block.



**Args**:
  - `minute` (`number`): Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). When `null`, the `minute` field will be omitted from the resulting object.
  - `snapshots_to_keep` (`number`): The maximum number of snapshots to keep for the hourly schedule.

**Returns**:
  - An attribute object that represents the `hourly_schedule` sub block.


## obj snapshot_policy.monthly_schedule



### fn snapshot_policy.monthly_schedule.new

```ts
new()
```


`google.netapp_volume.snapshot_policy.monthly_schedule.new` constructs a new object with attributes and blocks configured for the `monthly_schedule`
Terraform sub block.



**Args**:
  - `days_of_month` (`string`): Set the day or days of the month to make a snapshot (1-31). Accepts a comma separated number of days. Defaults to &#39;1&#39;. When `null`, the `days_of_month` field will be omitted from the resulting object.
  - `hour` (`number`): Set the hour to create the snapshot (0-23), defaults to midnight (0). When `null`, the `hour` field will be omitted from the resulting object.
  - `minute` (`number`): Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). When `null`, the `minute` field will be omitted from the resulting object.
  - `snapshots_to_keep` (`number`): The maximum number of snapshots to keep for the monthly schedule

**Returns**:
  - An attribute object that represents the `monthly_schedule` sub block.


## obj snapshot_policy.weekly_schedule



### fn snapshot_policy.weekly_schedule.new

```ts
new()
```


`google.netapp_volume.snapshot_policy.weekly_schedule.new` constructs a new object with attributes and blocks configured for the `weekly_schedule`
Terraform sub block.



**Args**:
  - `day` (`string`): Set the day or days of the week to make a snapshot. Accepts a comma separated days of the week. Defaults to &#39;Sunday&#39;. When `null`, the `day` field will be omitted from the resulting object.
  - `hour` (`number`): Set the hour to create the snapshot (0-23), defaults to midnight (0). When `null`, the `hour` field will be omitted from the resulting object.
  - `minute` (`number`): Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0). When `null`, the `minute` field will be omitted from the resulting object.
  - `snapshots_to_keep` (`number`): The maximum number of snapshots to keep for the weekly schedule.

**Returns**:
  - An attribute object that represents the `weekly_schedule` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.netapp_volume.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
