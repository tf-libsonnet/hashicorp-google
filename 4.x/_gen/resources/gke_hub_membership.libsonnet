local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='gke_hub_membership', url='', help='`gke_hub_membership` represents the `google_gke_hub_membership` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  authority:: {
    '#new':: d.fn(help='\n`google.gke_hub_membership.authority.new` constructs a new object with attributes and blocks configured for the `authority`\nTerraform sub block.\n\n\n\n**Args**:\n  - `issuer` (`string`): A JSON Web Token (JWT) issuer URI. &#39;issuer&#39; must start with &#39;https://&#39; and // be a valid \nwith length &lt;2000 characters. For example: &#39;https://container.googleapis.com/v1/projects/my-project/locations/us-west1/clusters/my-cluster&#39; (must be &#39;locations&#39; rather than &#39;zones&#39;). If the cluster is provisioned with Terraform, this is &#39;&#34;https://container.googleapis.com/v1/${google_container_cluster.my-cluster.id}&#34;&#39;.\n\n**Returns**:\n  - An attribute object that represents the `authority` sub block.\n', args=[]),
    new(
      issuer
    ):: std.prune(a={
      issuer: issuer,
    }),
  },
  endpoint:: {
    gke_cluster:: {
      '#new':: d.fn(help='\n`google.gke_hub_membership.endpoint.gke_cluster.new` constructs a new object with attributes and blocks configured for the `gke_cluster`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resource_link` (`string`): Self-link of the GCP resource for the GKE cluster.\nFor example: &#39;//container.googleapis.com/projects/my-project/zones/us-west1-a/clusters/my-cluster&#39;.\nIt can be at the most 1000 characters in length. If the cluster is provisioned with Terraform,\nthis can be &#39;&#34;//container.googleapis.com/${google_container_cluster.my-cluster.id}&#34;&#39; or\n&#39;google_container_cluster.my-cluster.id&#39;.\n\n**Returns**:\n  - An attribute object that represents the `gke_cluster` sub block.\n', args=[]),
      new(
        resource_link
      ):: std.prune(a={
        resource_link: resource_link,
      }),
    },
    '#new':: d.fn(help='\n`google.gke_hub_membership.endpoint.new` constructs a new object with attributes and blocks configured for the `endpoint`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gke_cluster` (`list[obj]`): If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource. When `null`, the `gke_cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership.endpoint.gke_cluster.new](#fn-endpointgkeclusternew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `endpoint` sub block.\n', args=[]),
    new(
      gke_cluster=null
    ):: std.prune(a={
      gke_cluster: gke_cluster,
    }),
  },
  '#new':: d.fn(help="\n`google.gke_hub_membership.new` injects a new `google_gke_hub_membership` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.gke_hub_membership.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.gke_hub_membership` using the reference:\n\n    $._ref.google_gke_hub_membership.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_gke_hub_membership.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `labels` (`obj`): Labels to apply to this membership. When `null`, the `labels` field will be omitted from the resulting object.\n  - `membership_id` (`string`): The client-provided identifier of the membership.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `authority` (`list[obj]`): Authority encodes how Google will recognize identities from this Membership.\nSee the workload identity documentation for more details:\nhttps://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity When `null`, the `authority` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership.authority.new](#fn-gkehubmembershipauthoritynew) constructor.\n  - `endpoint` (`list[obj]`): If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource. When `null`, the `endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership.endpoint.new](#fn-gkehubmembershipendpointnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership.timeouts.new](#fn-gkehubmembershiptimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    membership_id,
    authority=null,
    endpoint=null,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_membership',
    label=resourceLabel,
    attrs=self.newAttrs(
      authority=authority,
      endpoint=endpoint,
      labels=labels,
      membership_id=membership_id,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.gke_hub_membership.newAttrs` constructs a new object with attributes and blocks configured for the `gke_hub_membership`\nTerraform resource.\n\nUnlike [google.gke_hub_membership.new](#fn-gkehubmembershipnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `labels` (`obj`): Labels to apply to this membership. When `null`, the `labels` field will be omitted from the resulting object.\n  - `membership_id` (`string`): The client-provided identifier of the membership.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `authority` (`list[obj]`): Authority encodes how Google will recognize identities from this Membership.\nSee the workload identity documentation for more details:\nhttps://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity When `null`, the `authority` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership.authority.new](#fn-gkehubmembershipauthoritynew) constructor.\n  - `endpoint` (`list[obj]`): If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource. When `null`, the `endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership.endpoint.new](#fn-gkehubmembershipendpointnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership.timeouts.new](#fn-gkehubmembershiptimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_hub_membership` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    membership_id,
    authority=null,
    endpoint=null,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    authority: authority,
    endpoint: endpoint,
    labels: labels,
    membership_id: membership_id,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.gke_hub_membership.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAuthority':: d.fn(help='`google.gke_hub_membership.withAuthority` constructs a mixin object that can be merged into the `gke_hub_membership`\nTerraform resource block to set or update the authority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `authority` field.\n', args=[]),
  withAuthority(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          authority: value,
        },
      },
    },
  },
  '#withAuthorityMixin':: d.fn(help='`google.gke_hub_membership.withAuthorityMixin` constructs a mixin object that can be merged into the `gke_hub_membership`\nTerraform resource block to set or update the authority field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.gke_hub_membership.withAuthority](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `authority` field.\n', args=[]),
  withAuthorityMixin(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          authority+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEndpoint':: d.fn(help='`google.gke_hub_membership.withEndpoint` constructs a mixin object that can be merged into the `gke_hub_membership`\nTerraform resource block to set or update the endpoint field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `endpoint` field.\n', args=[]),
  withEndpoint(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          endpoint: value,
        },
      },
    },
  },
  '#withEndpointMixin':: d.fn(help='`google.gke_hub_membership.withEndpointMixin` constructs a mixin object that can be merged into the `gke_hub_membership`\nTerraform resource block to set or update the endpoint field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.gke_hub_membership.withEndpoint](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `endpoint` field.\n', args=[]),
  withEndpointMixin(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          endpoint+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.gke_hub_membership.withLabels` constructs a mixin object that can be merged into the `gke_hub_membership`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMembershipId':: d.fn(help='`google.gke_hub_membership.withMembershipId` constructs a mixin object that can be merged into the `gke_hub_membership`\nTerraform resource block to set or update the membership_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `membership_id` field.\n', args=[]),
  withMembershipId(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          membership_id: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.gke_hub_membership.withProject` constructs a mixin object that can be merged into the `gke_hub_membership`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.gke_hub_membership.withTimeouts` constructs a mixin object that can be merged into the `gke_hub_membership`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.gke_hub_membership.withTimeoutsMixin` constructs a mixin object that can be merged into the `gke_hub_membership`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.gke_hub_membership.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
