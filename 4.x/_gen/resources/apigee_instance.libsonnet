local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_instance', url='', help='`apigee_instance` represents the `google_apigee_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.apigee_instance.new` injects a new `google_apigee_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_instance` using the reference:\n\n    $._ref.google_apigee_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `consumer_accept_list` (`list`): Optional. Customer accept list represents the list of projects (id/number) on customer\nside that can privately connect to the service attachment. It is an optional field\nwhich the customers can provide during the instance creation. By default, the customer\nproject associated with the Apigee organization will be included to the list. When `null`, the `consumer_accept_list` field will be omitted from the resulting object.\n  - `description` (`string`): Description of the instance. When `null`, the `description` field will be omitted from the resulting object.\n  - `disk_encryption_key_name` (`string`): Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.\nUse the following format: \u0026#39;projects/([^/]\u0026#43;)/locations/([^/]\u0026#43;)/keyRings/([^/]\u0026#43;)/cryptoKeys/([^/]\u0026#43;)\u0026#39; When `null`, the `disk_encryption_key_name` field will be omitted from the resulting object.\n  - `display_name` (`string`): Display name of the instance. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `ip_range` (`string`): IP range represents the customer-provided CIDR block of length 22 that will be used for\nthe Apigee instance creation. This optional range, if provided, should be freely\navailable as part of larger named range the customer has allocated to the Service\nNetworking peering. If this is not provided, Apigee will automatically request for any\navailable /22 CIDR block from Service Networking. The customer should use this CIDR block\nfor configuring their firewall needs to allow traffic from Apigee.\nInput format: \u0026#34;a.b.c.d/22\u0026#34; When `null`, the `ip_range` field will be omitted from the resulting object.\n  - `location` (`string`): Required. Compute Engine location where the instance resides.\n  - `name` (`string`): Resource ID of the instance.\n  - `org_id` (`string`): The Apigee Organization associated with the Apigee instance,\nin the format \u0026#39;organizations/{{org_name}}\u0026#39;.\n  - `peering_cidr_range` (`string`): The size of the CIDR block range that will be reserved by the instance. For valid values,\nsee [CidrRange](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances#CidrRange) on the documentation. When `null`, the `peering_cidr_range` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_instance.timeouts.new](#fn-apigeeinstancetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    org_id,
    consumer_accept_list=null,
    description=null,
    disk_encryption_key_name=null,
    display_name=null,
    ip_range=null,
    peering_cidr_range=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      consumer_accept_list=consumer_accept_list,
      description=description,
      disk_encryption_key_name=disk_encryption_key_name,
      display_name=display_name,
      ip_range=ip_range,
      location=location,
      name=name,
      org_id=org_id,
      peering_cidr_range=peering_cidr_range,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_instance.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_instance`\nTerraform resource.\n\nUnlike [google.apigee_instance.new](#fn-apigeeinstancenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `consumer_accept_list` (`list`): Optional. Customer accept list represents the list of projects (id/number) on customer\nside that can privately connect to the service attachment. It is an optional field\nwhich the customers can provide during the instance creation. By default, the customer\nproject associated with the Apigee organization will be included to the list. When `null`, the `consumer_accept_list` field will be omitted from the resulting object.\n  - `description` (`string`): Description of the instance. When `null`, the `description` field will be omitted from the resulting object.\n  - `disk_encryption_key_name` (`string`): Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.\nUse the following format: &#39;projects/([^/]&#43;)/locations/([^/]&#43;)/keyRings/([^/]&#43;)/cryptoKeys/([^/]&#43;)&#39; When `null`, the `disk_encryption_key_name` field will be omitted from the resulting object.\n  - `display_name` (`string`): Display name of the instance. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `ip_range` (`string`): IP range represents the customer-provided CIDR block of length 22 that will be used for\nthe Apigee instance creation. This optional range, if provided, should be freely\navailable as part of larger named range the customer has allocated to the Service\nNetworking peering. If this is not provided, Apigee will automatically request for any\navailable /22 CIDR block from Service Networking. The customer should use this CIDR block\nfor configuring their firewall needs to allow traffic from Apigee.\nInput format: &#34;a.b.c.d/22&#34; When `null`, the `ip_range` field will be omitted from the resulting object.\n  - `location` (`string`): Required. Compute Engine location where the instance resides.\n  - `name` (`string`): Resource ID of the instance.\n  - `org_id` (`string`): The Apigee Organization associated with the Apigee instance,\nin the format &#39;organizations/{{org_name}}&#39;.\n  - `peering_cidr_range` (`string`): The size of the CIDR block range that will be reserved by the instance. For valid values,\nsee [CidrRange](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances#CidrRange) on the documentation. When `null`, the `peering_cidr_range` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_instance.timeouts.new](#fn-apigeeinstancetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    org_id,
    consumer_accept_list=null,
    description=null,
    disk_encryption_key_name=null,
    display_name=null,
    ip_range=null,
    peering_cidr_range=null,
    timeouts=null
  ):: std.prune(a={
    consumer_accept_list: consumer_accept_list,
    description: description,
    disk_encryption_key_name: disk_encryption_key_name,
    display_name: display_name,
    ip_range: ip_range,
    location: location,
    name: name,
    org_id: org_id,
    peering_cidr_range: peering_cidr_range,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withConsumerAcceptList':: d.fn(help='`google.apigee_instance.withConsumerAcceptList` constructs a mixin object that can be merged into the `apigee_instance`\nTerraform resource block to set or update the consumer_accept_list field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `consumer_accept_list` field.\n', args=[]),
  withConsumerAcceptList(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          consumer_accept_list: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.apigee_instance.withDescription` constructs a mixin object that can be merged into the `apigee_instance`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDiskEncryptionKeyName':: d.fn(help='`google.apigee_instance.withDiskEncryptionKeyName` constructs a mixin object that can be merged into the `apigee_instance`\nTerraform resource block to set or update the disk_encryption_key_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `disk_encryption_key_name` field.\n', args=[]),
  withDiskEncryptionKeyName(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          disk_encryption_key_name: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.apigee_instance.withDisplayName` constructs a mixin object that can be merged into the `apigee_instance`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withIpRange':: d.fn(help='`google.apigee_instance.withIpRange` constructs a mixin object that can be merged into the `apigee_instance`\nTerraform resource block to set or update the ip_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `ip_range` field.\n', args=[]),
  withIpRange(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          ip_range: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.apigee_instance.withLocation` constructs a mixin object that can be merged into the `apigee_instance`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.apigee_instance.withName` constructs a mixin object that can be merged into the `apigee_instance`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withOrgId':: d.fn(help='`google.apigee_instance.withOrgId` constructs a mixin object that can be merged into the `apigee_instance`\nTerraform resource block to set or update the org_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `org_id` field.\n', args=[]),
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  '#withPeeringCidrRange':: d.fn(help='`google.apigee_instance.withPeeringCidrRange` constructs a mixin object that can be merged into the `apigee_instance`\nTerraform resource block to set or update the peering_cidr_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `peering_cidr_range` field.\n', args=[]),
  withPeeringCidrRange(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          peering_cidr_range: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.apigee_instance.withTimeouts` constructs a mixin object that can be merged into the `apigee_instance`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.apigee_instance.withTimeoutsMixin` constructs a mixin object that can be merged into the `apigee_instance`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.apigee_instance.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
