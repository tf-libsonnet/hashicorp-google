local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='netapp_active_directory', url='', help='`netapp_active_directory` represents the `google_netapp_active_directory` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.netapp_active_directory.new` injects a new `google_netapp_active_directory` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.netapp_active_directory.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.netapp_active_directory` using the reference:\n\n    $._ref.google_netapp_active_directory.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_netapp_active_directory.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `aes_encryption` (`bool`): Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory. When `null`, the `aes_encryption` field will be omitted from the resulting object.\n  - `backup_operators` (`list`): Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list. When `null`, the `backup_operators` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `dns` (`string`): Comma separated list of DNS server IP addresses for the Active Directory domain.\n  - `domain` (`string`): Fully qualified domain name for the Active Directory domain.\n  - `encrypt_dc_connections` (`bool`): If enabled, traffic between the SMB server to Domain Controller (DC) will be encrypted. When `null`, the `encrypt_dc_connections` field will be omitted from the resulting object.\n  - `kdc_hostname` (`string`): Hostname of the Active Directory server used as Kerberos Key Distribution Center. Only requried for volumes using kerberized NFSv4.1 When `null`, the `kdc_hostname` field will be omitted from the resulting object.\n  - `kdc_ip` (`string`): IP address of the Active Directory server used as Kerberos Key Distribution Center. When `null`, the `kdc_ip` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels as key value pairs. Example: \u0026#39;{ \u0026#34;owner\u0026#34;: \u0026#34;Bob\u0026#34;, \u0026#34;department\u0026#34;: \u0026#34;finance\u0026#34;, \u0026#34;purpose\u0026#34;: \u0026#34;testing\u0026#34; }\u0026#39;.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `ldap_signing` (`bool`): Specifies whether or not the LDAP traffic needs to be signed. When `null`, the `ldap_signing` field will be omitted from the resulting object.\n  - `location` (`string`): Name of the region for the policy to apply to.\n  - `name` (`string`): The resource name of the Active Directory pool. Needs to be unique per location.\n  - `net_bios_prefix` (`string`): NetBIOS name prefix of the server to be created.\nA five-character random ID is generated automatically, for example, -6f9a, and appended to the prefix. The full UNC share path will have the following format:\n\u0026#39;\\\\NetBIOS_PREFIX-ABCD.DOMAIN_NAME\\SHARE_NAME\u0026#39;\n  - `nfs_users_with_ldap` (`bool`): Local UNIX users on clients without valid user information in Active Directory are blocked from access to LDAP enabled volumes.\nThis option can be used to temporarily switch such volumes to AUTH_SYS authentication (user ID \u0026#43; 1-16 groups). When `null`, the `nfs_users_with_ldap` field will be omitted from the resulting object.\n  - `organizational_unit` (`string`): Name of the Organizational Unit where you intend to create the computer account for NetApp Volumes.\nDefaults to \u0026#39;CN=Computers\u0026#39; if left empty. When `null`, the `organizational_unit` field will be omitted from the resulting object.\n  - `password` (`string`): Password for specified username. Note - Manual changes done to the password will not be detected. Terraform will not re-apply the password, unless you use a new password in Terraform.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `security_operators` (`list`): Domain accounts that require elevated privileges such as \u0026#39;SeSecurityPrivilege\u0026#39; to manage security logs. Comma-separated list. When `null`, the `security_operators` field will be omitted from the resulting object.\n  - `site` (`string`): Specifies an Active Directory site to manage domain controller selection.\nUse when Active Directory domain controllers in multiple regions are configured. Defaults to \u0026#39;Default-First-Site-Name\u0026#39; if left empty. When `null`, the `site` field will be omitted from the resulting object.\n  - `username` (`string`): Username for the Active Directory account with permissions to create the compute account within the specified organizational unit.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_active_directory.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    dns,
    domain,
    location,
    name,
    net_bios_prefix,
    password,
    username,
    aes_encryption=null,
    backup_operators=null,
    description=null,
    encrypt_dc_connections=null,
    kdc_hostname=null,
    kdc_ip=null,
    labels=null,
    ldap_signing=null,
    nfs_users_with_ldap=null,
    organizational_unit=null,
    project=null,
    security_operators=null,
    site=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_netapp_active_directory',
    label=resourceLabel,
    attrs=self.newAttrs(
      aes_encryption=aes_encryption,
      backup_operators=backup_operators,
      description=description,
      dns=dns,
      domain=domain,
      encrypt_dc_connections=encrypt_dc_connections,
      kdc_hostname=kdc_hostname,
      kdc_ip=kdc_ip,
      labels=labels,
      ldap_signing=ldap_signing,
      location=location,
      name=name,
      net_bios_prefix=net_bios_prefix,
      nfs_users_with_ldap=nfs_users_with_ldap,
      organizational_unit=organizational_unit,
      password=password,
      project=project,
      security_operators=security_operators,
      site=site,
      timeouts=timeouts,
      username=username
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.netapp_active_directory.newAttrs` constructs a new object with attributes and blocks configured for the `netapp_active_directory`\nTerraform resource.\n\nUnlike [google.netapp_active_directory.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `aes_encryption` (`bool`): Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory. When `null`, the `aes_encryption` field will be omitted from the resulting object.\n  - `backup_operators` (`list`): Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list. When `null`, the `backup_operators` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `dns` (`string`): Comma separated list of DNS server IP addresses for the Active Directory domain.\n  - `domain` (`string`): Fully qualified domain name for the Active Directory domain.\n  - `encrypt_dc_connections` (`bool`): If enabled, traffic between the SMB server to Domain Controller (DC) will be encrypted. When `null`, the `encrypt_dc_connections` field will be omitted from the resulting object.\n  - `kdc_hostname` (`string`): Hostname of the Active Directory server used as Kerberos Key Distribution Center. Only requried for volumes using kerberized NFSv4.1 When `null`, the `kdc_hostname` field will be omitted from the resulting object.\n  - `kdc_ip` (`string`): IP address of the Active Directory server used as Kerberos Key Distribution Center. When `null`, the `kdc_ip` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels as key value pairs. Example: &#39;{ &#34;owner&#34;: &#34;Bob&#34;, &#34;department&#34;: &#34;finance&#34;, &#34;purpose&#34;: &#34;testing&#34; }&#39;.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `ldap_signing` (`bool`): Specifies whether or not the LDAP traffic needs to be signed. When `null`, the `ldap_signing` field will be omitted from the resulting object.\n  - `location` (`string`): Name of the region for the policy to apply to.\n  - `name` (`string`): The resource name of the Active Directory pool. Needs to be unique per location.\n  - `net_bios_prefix` (`string`): NetBIOS name prefix of the server to be created.\nA five-character random ID is generated automatically, for example, -6f9a, and appended to the prefix. The full UNC share path will have the following format:\n&#39;\\\\NetBIOS_PREFIX-ABCD.DOMAIN_NAME\\SHARE_NAME&#39;\n  - `nfs_users_with_ldap` (`bool`): Local UNIX users on clients without valid user information in Active Directory are blocked from access to LDAP enabled volumes.\nThis option can be used to temporarily switch such volumes to AUTH_SYS authentication (user ID &#43; 1-16 groups). When `null`, the `nfs_users_with_ldap` field will be omitted from the resulting object.\n  - `organizational_unit` (`string`): Name of the Organizational Unit where you intend to create the computer account for NetApp Volumes.\nDefaults to &#39;CN=Computers&#39; if left empty. When `null`, the `organizational_unit` field will be omitted from the resulting object.\n  - `password` (`string`): Password for specified username. Note - Manual changes done to the password will not be detected. Terraform will not re-apply the password, unless you use a new password in Terraform.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `security_operators` (`list`): Domain accounts that require elevated privileges such as &#39;SeSecurityPrivilege&#39; to manage security logs. Comma-separated list. When `null`, the `security_operators` field will be omitted from the resulting object.\n  - `site` (`string`): Specifies an Active Directory site to manage domain controller selection.\nUse when Active Directory domain controllers in multiple regions are configured. Defaults to &#39;Default-First-Site-Name&#39; if left empty. When `null`, the `site` field will be omitted from the resulting object.\n  - `username` (`string`): Username for the Active Directory account with permissions to create the compute account within the specified organizational unit.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_active_directory.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `netapp_active_directory` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dns,
    domain,
    location,
    name,
    net_bios_prefix,
    password,
    username,
    aes_encryption=null,
    backup_operators=null,
    description=null,
    encrypt_dc_connections=null,
    kdc_hostname=null,
    kdc_ip=null,
    labels=null,
    ldap_signing=null,
    nfs_users_with_ldap=null,
    organizational_unit=null,
    project=null,
    security_operators=null,
    site=null,
    timeouts=null
  ):: std.prune(a={
    aes_encryption: aes_encryption,
    backup_operators: backup_operators,
    description: description,
    dns: dns,
    domain: domain,
    encrypt_dc_connections: encrypt_dc_connections,
    kdc_hostname: kdc_hostname,
    kdc_ip: kdc_ip,
    labels: labels,
    ldap_signing: ldap_signing,
    location: location,
    name: name,
    net_bios_prefix: net_bios_prefix,
    nfs_users_with_ldap: nfs_users_with_ldap,
    organizational_unit: organizational_unit,
    password: password,
    project: project,
    security_operators: security_operators,
    site: site,
    timeouts: timeouts,
    username: username,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.netapp_active_directory.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withAesEncryption':: d.fn(help='`google.bool.withAesEncryption` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the aes_encryption field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `aes_encryption` field.\n', args=[]),
  withAesEncryption(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          aes_encryption: value,
        },
      },
    },
  },
  '#withBackupOperators':: d.fn(help='`google.list.withBackupOperators` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the backup_operators field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `backup_operators` field.\n', args=[]),
  withBackupOperators(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          backup_operators: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDns':: d.fn(help='`google.string.withDns` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dns field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dns` field.\n', args=[]),
  withDns(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          dns: value,
        },
      },
    },
  },
  '#withDomain':: d.fn(help='`google.string.withDomain` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the domain field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `domain` field.\n', args=[]),
  withDomain(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          domain: value,
        },
      },
    },
  },
  '#withEncryptDcConnections':: d.fn(help='`google.bool.withEncryptDcConnections` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the encrypt_dc_connections field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `encrypt_dc_connections` field.\n', args=[]),
  withEncryptDcConnections(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          encrypt_dc_connections: value,
        },
      },
    },
  },
  '#withKdcHostname':: d.fn(help='`google.string.withKdcHostname` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the kdc_hostname field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `kdc_hostname` field.\n', args=[]),
  withKdcHostname(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          kdc_hostname: value,
        },
      },
    },
  },
  '#withKdcIp':: d.fn(help='`google.string.withKdcIp` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the kdc_ip field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `kdc_ip` field.\n', args=[]),
  withKdcIp(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          kdc_ip: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLdapSigning':: d.fn(help='`google.bool.withLdapSigning` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the ldap_signing field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `ldap_signing` field.\n', args=[]),
  withLdapSigning(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          ldap_signing: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetBiosPrefix':: d.fn(help='`google.string.withNetBiosPrefix` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the net_bios_prefix field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `net_bios_prefix` field.\n', args=[]),
  withNetBiosPrefix(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          net_bios_prefix: value,
        },
      },
    },
  },
  '#withNfsUsersWithLdap':: d.fn(help='`google.bool.withNfsUsersWithLdap` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the nfs_users_with_ldap field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `nfs_users_with_ldap` field.\n', args=[]),
  withNfsUsersWithLdap(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          nfs_users_with_ldap: value,
        },
      },
    },
  },
  '#withOrganizationalUnit':: d.fn(help='`google.string.withOrganizationalUnit` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the organizational_unit field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `organizational_unit` field.\n', args=[]),
  withOrganizationalUnit(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          organizational_unit: value,
        },
      },
    },
  },
  '#withPassword':: d.fn(help='`google.string.withPassword` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the password field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `password` field.\n', args=[]),
  withPassword(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          password: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSecurityOperators':: d.fn(help='`google.list.withSecurityOperators` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the security_operators field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `security_operators` field.\n', args=[]),
  withSecurityOperators(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          security_operators: value,
        },
      },
    },
  },
  '#withSite':: d.fn(help='`google.string.withSite` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the site field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `site` field.\n', args=[]),
  withSite(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          site: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUsername':: d.fn(help='`google.string.withUsername` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the username field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `username` field.\n', args=[]),
  withUsername(resourceLabel, value): {
    resource+: {
      google_netapp_active_directory+: {
        [resourceLabel]+: {
          username: value,
        },
      },
    },
  },
}
