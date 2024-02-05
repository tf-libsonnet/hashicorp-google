---
permalink: /netapp_active_directory/
---

# netapp_active_directory

`netapp_active_directory` represents the `google_netapp_active_directory` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAesEncryption()`](#fn-withaesencryption)
* [`fn withBackupOperators()`](#fn-withbackupoperators)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDns()`](#fn-withdns)
* [`fn withDomain()`](#fn-withdomain)
* [`fn withEncryptDcConnections()`](#fn-withencryptdcconnections)
* [`fn withKdcHostname()`](#fn-withkdchostname)
* [`fn withKdcIp()`](#fn-withkdcip)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLdapSigning()`](#fn-withldapsigning)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withNetBiosPrefix()`](#fn-withnetbiosprefix)
* [`fn withNfsUsersWithLdap()`](#fn-withnfsuserswithldap)
* [`fn withOrganizationalUnit()`](#fn-withorganizationalunit)
* [`fn withPassword()`](#fn-withpassword)
* [`fn withProject()`](#fn-withproject)
* [`fn withSecurityOperators()`](#fn-withsecurityoperators)
* [`fn withSite()`](#fn-withsite)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUsername()`](#fn-withusername)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.netapp_active_directory.new` injects a new `google_netapp_active_directory` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.netapp_active_directory.new('some_id')

You can get the reference to the `id` field of the created `google.netapp_active_directory` using the reference:

    $._ref.google_netapp_active_directory.some_id.get('id')

This is the same as directly entering `"${ google_netapp_active_directory.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `aes_encryption` (`bool`): Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory. When `null`, the `aes_encryption` field will be omitted from the resulting object.
  - `backup_operators` (`list`): Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list. When `null`, the `backup_operators` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `dns` (`string`): Comma separated list of DNS server IP addresses for the Active Directory domain.
  - `domain` (`string`): Fully qualified domain name for the Active Directory domain.
  - `encrypt_dc_connections` (`bool`): If enabled, traffic between the SMB server to Domain Controller (DC) will be encrypted. When `null`, the `encrypt_dc_connections` field will be omitted from the resulting object.
  - `kdc_hostname` (`string`): Hostname of the Active Directory server used as Kerberos Key Distribution Center. Only requried for volumes using kerberized NFSv4.1 When `null`, the `kdc_hostname` field will be omitted from the resulting object.
  - `kdc_ip` (`string`): IP address of the Active Directory server used as Kerberos Key Distribution Center. When `null`, the `kdc_ip` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels as key value pairs. Example: &#39;{ &#34;owner&#34;: &#34;Bob&#34;, &#34;department&#34;: &#34;finance&#34;, &#34;purpose&#34;: &#34;testing&#34; }&#39;.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `ldap_signing` (`bool`): Specifies whether or not the LDAP traffic needs to be signed. When `null`, the `ldap_signing` field will be omitted from the resulting object.
  - `location` (`string`): Name of the region for the policy to apply to.
  - `name` (`string`): The resource name of the Active Directory pool. Needs to be unique per location.
  - `net_bios_prefix` (`string`): NetBIOS name prefix of the server to be created.
A five-character random ID is generated automatically, for example, -6f9a, and appended to the prefix. The full UNC share path will have the following format:
&#39;\\NetBIOS_PREFIX-ABCD.DOMAIN_NAME\SHARE_NAME&#39;
  - `nfs_users_with_ldap` (`bool`): Local UNIX users on clients without valid user information in Active Directory are blocked from access to LDAP enabled volumes.
This option can be used to temporarily switch such volumes to AUTH_SYS authentication (user ID &#43; 1-16 groups). When `null`, the `nfs_users_with_ldap` field will be omitted from the resulting object.
  - `organizational_unit` (`string`): Name of the Organizational Unit where you intend to create the computer account for NetApp Volumes.
Defaults to &#39;CN=Computers&#39; if left empty. When `null`, the `organizational_unit` field will be omitted from the resulting object.
  - `password` (`string`): Password for specified username. Note - Manual changes done to the password will not be detected. Terraform will not re-apply the password, unless you use a new password in Terraform.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `security_operators` (`list`): Domain accounts that require elevated privileges such as &#39;SeSecurityPrivilege&#39; to manage security logs. Comma-separated list. When `null`, the `security_operators` field will be omitted from the resulting object.
  - `site` (`string`): Specifies an Active Directory site to manage domain controller selection.
Use when Active Directory domain controllers in multiple regions are configured. Defaults to &#39;Default-First-Site-Name&#39; if left empty. When `null`, the `site` field will be omitted from the resulting object.
  - `username` (`string`): Username for the Active Directory account with permissions to create the compute account within the specified organizational unit.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_active_directory.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.netapp_active_directory.newAttrs` constructs a new object with attributes and blocks configured for the `netapp_active_directory`
Terraform resource.

Unlike [google.netapp_active_directory.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `aes_encryption` (`bool`): Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory. When `null`, the `aes_encryption` field will be omitted from the resulting object.
  - `backup_operators` (`list`): Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list. When `null`, the `backup_operators` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `dns` (`string`): Comma separated list of DNS server IP addresses for the Active Directory domain.
  - `domain` (`string`): Fully qualified domain name for the Active Directory domain.
  - `encrypt_dc_connections` (`bool`): If enabled, traffic between the SMB server to Domain Controller (DC) will be encrypted. When `null`, the `encrypt_dc_connections` field will be omitted from the resulting object.
  - `kdc_hostname` (`string`): Hostname of the Active Directory server used as Kerberos Key Distribution Center. Only requried for volumes using kerberized NFSv4.1 When `null`, the `kdc_hostname` field will be omitted from the resulting object.
  - `kdc_ip` (`string`): IP address of the Active Directory server used as Kerberos Key Distribution Center. When `null`, the `kdc_ip` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels as key value pairs. Example: &#39;{ &#34;owner&#34;: &#34;Bob&#34;, &#34;department&#34;: &#34;finance&#34;, &#34;purpose&#34;: &#34;testing&#34; }&#39;.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `ldap_signing` (`bool`): Specifies whether or not the LDAP traffic needs to be signed. When `null`, the `ldap_signing` field will be omitted from the resulting object.
  - `location` (`string`): Name of the region for the policy to apply to.
  - `name` (`string`): The resource name of the Active Directory pool. Needs to be unique per location.
  - `net_bios_prefix` (`string`): NetBIOS name prefix of the server to be created.
A five-character random ID is generated automatically, for example, -6f9a, and appended to the prefix. The full UNC share path will have the following format:
&#39;\\NetBIOS_PREFIX-ABCD.DOMAIN_NAME\SHARE_NAME&#39;
  - `nfs_users_with_ldap` (`bool`): Local UNIX users on clients without valid user information in Active Directory are blocked from access to LDAP enabled volumes.
This option can be used to temporarily switch such volumes to AUTH_SYS authentication (user ID &#43; 1-16 groups). When `null`, the `nfs_users_with_ldap` field will be omitted from the resulting object.
  - `organizational_unit` (`string`): Name of the Organizational Unit where you intend to create the computer account for NetApp Volumes.
Defaults to &#39;CN=Computers&#39; if left empty. When `null`, the `organizational_unit` field will be omitted from the resulting object.
  - `password` (`string`): Password for specified username. Note - Manual changes done to the password will not be detected. Terraform will not re-apply the password, unless you use a new password in Terraform.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `security_operators` (`list`): Domain accounts that require elevated privileges such as &#39;SeSecurityPrivilege&#39; to manage security logs. Comma-separated list. When `null`, the `security_operators` field will be omitted from the resulting object.
  - `site` (`string`): Specifies an Active Directory site to manage domain controller selection.
Use when Active Directory domain controllers in multiple regions are configured. Defaults to &#39;Default-First-Site-Name&#39; if left empty. When `null`, the `site` field will be omitted from the resulting object.
  - `username` (`string`): Username for the Active Directory account with permissions to create the compute account within the specified organizational unit.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_active_directory.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `netapp_active_directory` resource into the root Terraform configuration.


### fn withAesEncryption

```ts
withAesEncryption()
```

`google.bool.withAesEncryption` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the aes_encryption field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `aes_encryption` field.


### fn withBackupOperators

```ts
withBackupOperators()
```

`google.list.withBackupOperators` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the backup_operators field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `backup_operators` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDns

```ts
withDns()
```

`google.string.withDns` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dns field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dns` field.


### fn withDomain

```ts
withDomain()
```

`google.string.withDomain` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the domain field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `domain` field.


### fn withEncryptDcConnections

```ts
withEncryptDcConnections()
```

`google.bool.withEncryptDcConnections` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the encrypt_dc_connections field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `encrypt_dc_connections` field.


### fn withKdcHostname

```ts
withKdcHostname()
```

`google.string.withKdcHostname` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the kdc_hostname field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `kdc_hostname` field.


### fn withKdcIp

```ts
withKdcIp()
```

`google.string.withKdcIp` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the kdc_ip field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `kdc_ip` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLdapSigning

```ts
withLdapSigning()
```

`google.bool.withLdapSigning` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the ldap_signing field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `ldap_signing` field.


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


### fn withNetBiosPrefix

```ts
withNetBiosPrefix()
```

`google.string.withNetBiosPrefix` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the net_bios_prefix field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `net_bios_prefix` field.


### fn withNfsUsersWithLdap

```ts
withNfsUsersWithLdap()
```

`google.bool.withNfsUsersWithLdap` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the nfs_users_with_ldap field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `nfs_users_with_ldap` field.


### fn withOrganizationalUnit

```ts
withOrganizationalUnit()
```

`google.string.withOrganizationalUnit` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the organizational_unit field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `organizational_unit` field.


### fn withPassword

```ts
withPassword()
```

`google.string.withPassword` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the password field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `password` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSecurityOperators

```ts
withSecurityOperators()
```

`google.list.withSecurityOperators` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the security_operators field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `security_operators` field.


### fn withSite

```ts
withSite()
```

`google.string.withSite` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the site field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `site` field.


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


### fn withUsername

```ts
withUsername()
```

`google.string.withUsername` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the username field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `username` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.netapp_active_directory.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
