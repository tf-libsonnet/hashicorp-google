local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='netapp_storage_pool', url='', help='`netapp_storage_pool` represents the `google_netapp_storage_pool` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.netapp_storage_pool.new` injects a new `google_netapp_storage_pool` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.netapp_storage_pool.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.netapp_storage_pool` using the reference:\n\n    $._ref.google_netapp_storage_pool.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_netapp_storage_pool.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `active_directory` (`string`): Specifies the Active Directory policy to be used. Format: \u0026#39;projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}\u0026#39;.\nThe policy needs to be in the same location as the storage pool. When `null`, the `active_directory` field will be omitted from the resulting object.\n  - `capacity_gib` (`string`): Capacity of the storage pool (in GiB).\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `kms_config` (`string`): Specifies the CMEK policy to be used for volume encryption. Format: \u0026#39;projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}\u0026#39;.\nThe policy needs to be in the same location as the storage pool. When `null`, the `kms_config` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels as key value pairs. Example: \u0026#39;{ \u0026#34;owner\u0026#34;: \u0026#34;Bob\u0026#34;, \u0026#34;department\u0026#34;: \u0026#34;finance\u0026#34;, \u0026#34;purpose\u0026#34;: \u0026#34;testing\u0026#34; }\u0026#39;.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `ldap_enabled` (`bool`): When enabled, the volumes uses Active Directory as LDAP name service for UID/GID lookups. Required to enable extended group support for NFSv3,\nusing security identifiers for NFSv4.1 or principal names for kerberized NFSv4.1. When `null`, the `ldap_enabled` field will be omitted from the resulting object.\n  - `location` (`string`): Name of the location. Usually a region name, expect for some STANDARD service level pools which require a zone name.\n  - `name` (`string`): The resource name of the storage pool. Needs to be unique per location.\n  - `network` (`string`): VPC network name with format: \u0026#39;projects/{{project}}/global/networks/{{network}}\u0026#39;\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `service_level` (`string`): Service level of the storage pool. Possible values: [\u0026#34;PREMIUM\u0026#34;, \u0026#34;EXTREME\u0026#34;, \u0026#34;STANDARD\u0026#34;]\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_storage_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    capacity_gib,
    location,
    name,
    network,
    service_level,
    active_directory=null,
    description=null,
    kms_config=null,
    labels=null,
    ldap_enabled=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_netapp_storage_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      active_directory=active_directory,
      capacity_gib=capacity_gib,
      description=description,
      kms_config=kms_config,
      labels=labels,
      ldap_enabled=ldap_enabled,
      location=location,
      name=name,
      network=network,
      project=project,
      service_level=service_level,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.netapp_storage_pool.newAttrs` constructs a new object with attributes and blocks configured for the `netapp_storage_pool`\nTerraform resource.\n\nUnlike [google.netapp_storage_pool.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `active_directory` (`string`): Specifies the Active Directory policy to be used. Format: &#39;projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}&#39;.\nThe policy needs to be in the same location as the storage pool. When `null`, the `active_directory` field will be omitted from the resulting object.\n  - `capacity_gib` (`string`): Capacity of the storage pool (in GiB).\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `kms_config` (`string`): Specifies the CMEK policy to be used for volume encryption. Format: &#39;projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}&#39;.\nThe policy needs to be in the same location as the storage pool. When `null`, the `kms_config` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels as key value pairs. Example: &#39;{ &#34;owner&#34;: &#34;Bob&#34;, &#34;department&#34;: &#34;finance&#34;, &#34;purpose&#34;: &#34;testing&#34; }&#39;.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `ldap_enabled` (`bool`): When enabled, the volumes uses Active Directory as LDAP name service for UID/GID lookups. Required to enable extended group support for NFSv3,\nusing security identifiers for NFSv4.1 or principal names for kerberized NFSv4.1. When `null`, the `ldap_enabled` field will be omitted from the resulting object.\n  - `location` (`string`): Name of the location. Usually a region name, expect for some STANDARD service level pools which require a zone name.\n  - `name` (`string`): The resource name of the storage pool. Needs to be unique per location.\n  - `network` (`string`): VPC network name with format: &#39;projects/{{project}}/global/networks/{{network}}&#39;\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `service_level` (`string`): Service level of the storage pool. Possible values: [&#34;PREMIUM&#34;, &#34;EXTREME&#34;, &#34;STANDARD&#34;]\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_storage_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `netapp_storage_pool` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    capacity_gib,
    location,
    name,
    network,
    service_level,
    active_directory=null,
    description=null,
    kms_config=null,
    labels=null,
    ldap_enabled=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    active_directory: active_directory,
    capacity_gib: capacity_gib,
    description: description,
    kms_config: kms_config,
    labels: labels,
    ldap_enabled: ldap_enabled,
    location: location,
    name: name,
    network: network,
    project: project,
    service_level: service_level,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.netapp_storage_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withActiveDirectory':: d.fn(help='`google.string.withActiveDirectory` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the active_directory field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `active_directory` field.\n', args=[]),
  withActiveDirectory(resourceLabel, value): {
    resource+: {
      google_netapp_storage_pool+: {
        [resourceLabel]+: {
          active_directory: value,
        },
      },
    },
  },
  '#withCapacityGib':: d.fn(help='`google.string.withCapacityGib` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the capacity_gib field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `capacity_gib` field.\n', args=[]),
  withCapacityGib(resourceLabel, value): {
    resource+: {
      google_netapp_storage_pool+: {
        [resourceLabel]+: {
          capacity_gib: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_netapp_storage_pool+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withKmsConfig':: d.fn(help='`google.string.withKmsConfig` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the kms_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `kms_config` field.\n', args=[]),
  withKmsConfig(resourceLabel, value): {
    resource+: {
      google_netapp_storage_pool+: {
        [resourceLabel]+: {
          kms_config: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_netapp_storage_pool+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLdapEnabled':: d.fn(help='`google.bool.withLdapEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the ldap_enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `ldap_enabled` field.\n', args=[]),
  withLdapEnabled(resourceLabel, value): {
    resource+: {
      google_netapp_storage_pool+: {
        [resourceLabel]+: {
          ldap_enabled: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_netapp_storage_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_netapp_storage_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_netapp_storage_pool+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_netapp_storage_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withServiceLevel':: d.fn(help='`google.string.withServiceLevel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_level field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_level` field.\n', args=[]),
  withServiceLevel(resourceLabel, value): {
    resource+: {
      google_netapp_storage_pool+: {
        [resourceLabel]+: {
          service_level: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_netapp_storage_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_netapp_storage_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
