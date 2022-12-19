local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='active_directory_domain', url='', help='`active_directory_domain` represents the `google_active_directory_domain` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.active_directory_domain.new` injects a new `google_active_directory_domain` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.active_directory_domain.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.active_directory_domain` using the reference:\n\n    $._ref.google_active_directory_domain.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_active_directory_domain.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `admin` (`string`): The name of delegated administrator account used to perform Active Directory operations. \nIf not specified, setupadmin will be used. When `null`, the `admin` field will be omitted from the resulting object.\n  - `authorized_networks` (`list`): The full names of the Google Compute Engine networks the domain instance is connected to. The domain is only available on networks listed in authorizedNetworks.\nIf CIDR subnets overlap between networks, domain creation will fail. When `null`, the `authorized_networks` field will be omitted from the resulting object.\n  - `domain_name` (`string`): The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions, \nhttps://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.\n  - `labels` (`obj`): Resource labels that can contain user-provided metadata When `null`, the `labels` field will be omitted from the resulting object.\n  - `locations` (`list`): Locations where domain needs to be provisioned. [regions][compute/docs/regions-zones/] \ne.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `reserved_ip_range` (`string`): The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. \nRanges must be unique and non-overlapping with existing subnets in authorizedNetworks\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.active_directory_domain.timeouts.new](#fn-active_directory_domaintimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    domain_name,
    locations,
    reserved_ip_range,
    admin=null,
    authorized_networks=null,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_active_directory_domain',
    label=resourceLabel,
    attrs=self.newAttrs(
      admin=admin,
      authorized_networks=authorized_networks,
      domain_name=domain_name,
      labels=labels,
      locations=locations,
      project=project,
      reserved_ip_range=reserved_ip_range,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.active_directory_domain.newAttrs` constructs a new object with attributes and blocks configured for the `active_directory_domain`\nTerraform resource.\n\nUnlike [google.active_directory_domain.new](#fn-active_directory_domainnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `admin` (`string`): The name of delegated administrator account used to perform Active Directory operations. \nIf not specified, setupadmin will be used. When `null`, the `admin` field will be omitted from the resulting object.\n  - `authorized_networks` (`list`): The full names of the Google Compute Engine networks the domain instance is connected to. The domain is only available on networks listed in authorizedNetworks.\nIf CIDR subnets overlap between networks, domain creation will fail. When `null`, the `authorized_networks` field will be omitted from the resulting object.\n  - `domain_name` (`string`): The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions, \nhttps://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.\n  - `labels` (`obj`): Resource labels that can contain user-provided metadata When `null`, the `labels` field will be omitted from the resulting object.\n  - `locations` (`list`): Locations where domain needs to be provisioned. [regions][compute/docs/regions-zones/] \ne.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `reserved_ip_range` (`string`): The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. \nRanges must be unique and non-overlapping with existing subnets in authorizedNetworks\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.active_directory_domain.timeouts.new](#fn-active_directory_domaintimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `active_directory_domain` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    domain_name,
    locations,
    reserved_ip_range,
    admin=null,
    authorized_networks=null,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    admin: admin,
    authorized_networks: authorized_networks,
    domain_name: domain_name,
    labels: labels,
    locations: locations,
    project: project,
    reserved_ip_range: reserved_ip_range,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.active_directory_domain.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAdmin':: d.fn(help='`google.string.withAdmin` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the admin field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `admin` field.\n', args=[]),
  withAdmin(resourceLabel, value): {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          admin: value,
        },
      },
    },
  },
  '#withAuthorizedNetworks':: d.fn(help='`google.list.withAuthorizedNetworks` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the authorized_networks field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `authorized_networks` field.\n', args=[]),
  withAuthorizedNetworks(resourceLabel, value): {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          authorized_networks: value,
        },
      },
    },
  },
  '#withDomainName':: d.fn(help='`google.string.withDomainName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the domain_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `domain_name` field.\n', args=[]),
  withDomainName(resourceLabel, value): {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          domain_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocations':: d.fn(help='`google.list.withLocations` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the locations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `locations` field.\n', args=[]),
  withLocations(resourceLabel, value): {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          locations: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withReservedIpRange':: d.fn(help='`google.string.withReservedIpRange` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the reserved_ip_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `reserved_ip_range` field.\n', args=[]),
  withReservedIpRange(resourceLabel, value): {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          reserved_ip_range: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_active_directory_domain+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
