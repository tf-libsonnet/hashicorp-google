local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dns_response_policy', url='', help='`dns_response_policy` represents the `google_dns_response_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  gke_clusters:: {
    '#new':: d.fn(help='\n`google.dns_response_policy.gke_clusters.new` constructs a new object with attributes and blocks configured for the `gke_clusters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gke_cluster_name` (`string`): The resource name of the cluster to bind this ManagedZone to.\nThis should be specified in the format like\n&#39;projects/*/locations/*/clusters/*&#39;\n\n**Returns**:\n  - An attribute object that represents the `gke_clusters` sub block.\n', args=[]),
    new(
      gke_cluster_name
    ):: std.prune(a={
      gke_cluster_name: gke_cluster_name,
    }),
  },
  networks:: {
    '#new':: d.fn(help='\n`google.dns_response_policy.networks.new` constructs a new object with attributes and blocks configured for the `networks`\nTerraform sub block.\n\n\n\n**Args**:\n  - `network_url` (`string`): The fully qualified URL of the VPC network to bind to.\nThis should be formatted like\n&#39;https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}&#39;\n\n**Returns**:\n  - An attribute object that represents the `networks` sub block.\n', args=[]),
    new(
      network_url
    ):: std.prune(a={
      network_url: network_url,
    }),
  },
  '#new':: d.fn(help="\n`google.dns_response_policy.new` injects a new `google_dns_response_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dns_response_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dns_response_policy` using the reference:\n\n    $._ref.google_dns_response_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dns_response_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): The description of the response policy, such as \u0026#39;My new response policy\u0026#39;. When `null`, the `description` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `response_policy_name` (`string`): The user assigned name for this Response Policy, such as \u0026#39;myresponsepolicy\u0026#39;.\n  - `gke_clusters` (`list[obj]`): The list of Google Kubernetes Engine clusters that can see this zone. When `null`, the `gke_clusters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy.gke_clusters.new](#fn-gke_clustersnew) constructor.\n  - `networks` (`list[obj]`): The list of network names specifying networks to which this policy is applied. When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy.networks.new](#fn-networksnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    response_policy_name,
    description=null,
    gke_clusters=null,
    networks=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dns_response_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      gke_clusters=gke_clusters,
      networks=networks,
      project=project,
      response_policy_name=response_policy_name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dns_response_policy.newAttrs` constructs a new object with attributes and blocks configured for the `dns_response_policy`\nTerraform resource.\n\nUnlike [google.dns_response_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): The description of the response policy, such as &#39;My new response policy&#39;. When `null`, the `description` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `response_policy_name` (`string`): The user assigned name for this Response Policy, such as &#39;myresponsepolicy&#39;.\n  - `gke_clusters` (`list[obj]`): The list of Google Kubernetes Engine clusters that can see this zone. When `null`, the `gke_clusters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy.gke_clusters.new](#fn-gke_clustersnew) constructor.\n  - `networks` (`list[obj]`): The list of network names specifying networks to which this policy is applied. When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy.networks.new](#fn-networksnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dns_response_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    response_policy_name,
    description=null,
    gke_clusters=null,
    networks=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    gke_clusters: gke_clusters,
    networks: networks,
    project: project,
    response_policy_name: response_policy_name,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.dns_response_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withGkeClusters':: d.fn(help='`google.list[obj].withGkeClusters` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gke_clusters field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGkeClustersMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gke_clusters` field.\n', args=[]),
  withGkeClusters(resourceLabel, value): {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          gke_clusters: value,
        },
      },
    },
  },
  '#withGkeClustersMixin':: d.fn(help='`google.list[obj].withGkeClustersMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gke_clusters field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGkeClusters](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gke_clusters` field.\n', args=[]),
  withGkeClustersMixin(resourceLabel, value): {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          gke_clusters+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNetworks':: d.fn(help='`google.list[obj].withNetworks` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the networks field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworksMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `networks` field.\n', args=[]),
  withNetworks(resourceLabel, value): {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          networks: value,
        },
      },
    },
  },
  '#withNetworksMixin':: d.fn(help='`google.list[obj].withNetworksMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the networks field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworks](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `networks` field.\n', args=[]),
  withNetworksMixin(resourceLabel, value): {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          networks+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withResponsePolicyName':: d.fn(help='`google.string.withResponsePolicyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the response_policy_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `response_policy_name` field.\n', args=[]),
  withResponsePolicyName(resourceLabel, value): {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          response_policy_name: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dns_response_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
