local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigtable_instance', url='', help='`bigtable_instance` represents the `google_bigtable_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  cluster:: {
    autoscaling_config:: {
      '#new':: d.fn(help='\n`google.bigtable_instance.cluster.autoscaling_config.new` constructs a new object with attributes and blocks configured for the `autoscaling_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu_target` (`number`): The target CPU utilization for autoscaling. Value must be between 10 and 80.\n  - `max_nodes` (`number`): The maximum number of nodes for autoscaling.\n  - `min_nodes` (`number`): The minimum number of nodes for autoscaling.\n  - `storage_target` (`number`): The target storage utilization for autoscaling, in GB, for each node in a cluster. This number is limited between 2560 (2.5TiB) and 5120 (5TiB) for a SSD cluster and between 8192 (8TiB) and 16384 (16 TiB) for an HDD cluster. If not set, whatever is already set for the cluster will not change, or if the cluster is just being created, it will use the default value of 2560 for SSD clusters and 8192 for HDD clusters. When `null`, the `storage_target` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `autoscaling_config` sub block.\n', args=[]),
      new(
        cpu_target,
        max_nodes,
        min_nodes,
        storage_target=null
      ):: std.prune(a={
        cpu_target: cpu_target,
        max_nodes: max_nodes,
        min_nodes: min_nodes,
        storage_target: storage_target,
      }),
    },
    '#new':: d.fn(help='\n`google.bigtable_instance.cluster.new` constructs a new object with attributes and blocks configured for the `cluster`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster_id` (`string`): The ID of the Cloud Bigtable cluster. Must be 6-30 characters and must only contain hyphens, lowercase letters and numbers.\n  - `kms_key_name` (`string`): Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the cloudkms.cryptoKeyEncrypterDecrypter role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster. 3) All clusters within an instance must use the same CMEK key. Values are of the form projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key} When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `num_nodes` (`number`): The number of nodes in your Cloud Bigtable cluster. Required, with a minimum of 1 for each cluster in an instance. When `null`, the `num_nodes` field will be omitted from the resulting object.\n  - `storage_type` (`string`): The storage type to use. One of &#34;SSD&#34; or &#34;HDD&#34;. Defaults to &#34;SSD&#34;. When `null`, the `storage_type` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone to create the Cloud Bigtable cluster in. Each cluster must have a different zone in the same region. Zones that support Bigtable instances are noted on the Cloud Bigtable locations page. When `null`, the `zone` field will be omitted from the resulting object.\n  - `autoscaling_config` (`list[obj]`): A list of Autoscaling configurations. Only one element is used and allowed. When `null`, the `autoscaling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_instance.cluster.autoscaling_config.new](#fn-clusterautoscaling_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `cluster` sub block.\n', args=[]),
    new(
      cluster_id,
      autoscaling_config=null,
      kms_key_name=null,
      num_nodes=null,
      storage_type=null,
      zone=null
    ):: std.prune(a={
      autoscaling_config: autoscaling_config,
      cluster_id: cluster_id,
      kms_key_name: kms_key_name,
      num_nodes: num_nodes,
      storage_type: storage_type,
      zone: zone,
    }),
  },
  '#new':: d.fn(help="\n`google.bigtable_instance.new` injects a new `google_bigtable_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigtable_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigtable_instance` using the reference:\n\n    $._ref.google_bigtable_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigtable_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable display name of the Bigtable instance. Defaults to the instance name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `instance_type` (`string`): The instance type to create. One of \u0026#34;DEVELOPMENT\u0026#34; or \u0026#34;PRODUCTION\u0026#34;. Defaults to \u0026#34;PRODUCTION\u0026#34;. When `null`, the `instance_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): A mapping of labels to assign to the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name (also called Instance Id in the Cloud Console) of the Cloud Bigtable instance. Must be 6-33 characters and must only contain hyphens, lowercase letters and numbers.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `cluster` (`list[obj]`): A block of cluster configuration options. This can be specified at least once. When `null`, the `cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_instance.cluster.new](#fn-clusternew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    cluster=null,
    deletion_protection=null,
    display_name=null,
    instance_type=null,
    labels=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigtable_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      cluster=cluster,
      deletion_protection=deletion_protection,
      display_name=display_name,
      instance_type=instance_type,
      labels=labels,
      name=name,
      project=project
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigtable_instance.newAttrs` constructs a new object with attributes and blocks configured for the `bigtable_instance`\nTerraform resource.\n\nUnlike [google.bigtable_instance.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable display name of the Bigtable instance. Defaults to the instance name. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `instance_type` (`string`): The instance type to create. One of &#34;DEVELOPMENT&#34; or &#34;PRODUCTION&#34;. Defaults to &#34;PRODUCTION&#34;. When `null`, the `instance_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): A mapping of labels to assign to the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name (also called Instance Id in the Cloud Console) of the Cloud Bigtable instance. Must be 6-33 characters and must only contain hyphens, lowercase letters and numbers.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `cluster` (`list[obj]`): A block of cluster configuration options. This can be specified at least once. When `null`, the `cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_instance.cluster.new](#fn-clusternew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigtable_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    cluster=null,
    deletion_protection=null,
    display_name=null,
    instance_type=null,
    labels=null,
    project=null
  ):: std.prune(a={
    cluster: cluster,
    deletion_protection: deletion_protection,
    display_name: display_name,
    instance_type: instance_type,
    labels: labels,
    name: name,
    project: project,
  }),
  '#withCluster':: d.fn(help='`google.list[obj].withCluster` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cluster field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withClusterMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cluster` field.\n', args=[]),
  withCluster(resourceLabel, value): {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  '#withClusterMixin':: d.fn(help='`google.list[obj].withClusterMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cluster field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCluster](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cluster` field.\n', args=[]),
  withClusterMixin(resourceLabel, value): {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          cluster+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDeletionProtection':: d.fn(help='`google.bool.withDeletionProtection` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the deletion_protection field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `deletion_protection` field.\n', args=[]),
  withDeletionProtection(resourceLabel, value): {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          deletion_protection: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withInstanceType':: d.fn(help='`google.string.withInstanceType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance_type` field.\n', args=[]),
  withInstanceType(resourceLabel, value): {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          instance_type: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
