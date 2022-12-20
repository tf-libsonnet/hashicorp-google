local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='clouddeploy_target', url='', help='`clouddeploy_target` represents the `google_clouddeploy_target` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  anthos_cluster:: {
    '#new':: d.fn(help='\n`google.clouddeploy_target.anthos_cluster.new` constructs a new object with attributes and blocks configured for the `anthos_cluster`\nTerraform sub block.\n\n\n\n**Args**:\n  - `membership` (`string`): Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`. When `null`, the `membership` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `anthos_cluster` sub block.\n', args=[]),
    new(
      membership=null
    ):: std.prune(a={
      membership: membership,
    }),
  },
  execution_configs:: {
    '#new':: d.fn(help='\n`google.clouddeploy_target.execution_configs.new` constructs a new object with attributes and blocks configured for the `execution_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `artifact_storage` (`string`): Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket (&#34;gs://my-bucket&#34;) or a path within a bucket (&#34;gs://my-bucket/my-dir&#34;). If unspecified, a default bucket located in the same region will be used. When `null`, the `artifact_storage` field will be omitted from the resulting object.\n  - `execution_timeout` (`string`): Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used. When `null`, the `execution_timeout` field will be omitted from the resulting object.\n  - `service_account` (`string`): Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `usages` (`list`): Required. Usages when this configuration should be applied.\n  - `worker_pool` (`string`): Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used. When `null`, the `worker_pool` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `execution_configs` sub block.\n', args=[]),
    new(
      usages,
      artifact_storage=null,
      execution_timeout=null,
      service_account=null,
      worker_pool=null
    ):: std.prune(a={
      artifact_storage: artifact_storage,
      execution_timeout: execution_timeout,
      service_account: service_account,
      usages: usages,
      worker_pool: worker_pool,
    }),
  },
  gke:: {
    '#new':: d.fn(help='\n`google.clouddeploy_target.gke.new` constructs a new object with attributes and blocks configured for the `gke`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster` (`string`): Information specifying a GKE Cluster. Format is `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}. When `null`, the `cluster` field will be omitted from the resulting object.\n  - `internal_ip` (`bool`): Optional. If true, `cluster` is accessed using the private IP address of the control plane endpoint. Otherwise, the default IP address of the control plane endpoint is used. The default IP address is the private IP address for clusters with private control-plane endpoints and the public IP address otherwise. Only specify this option when `cluster` is a [private GKE cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-concept). When `null`, the `internal_ip` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `gke` sub block.\n', args=[]),
    new(
      cluster=null,
      internal_ip=null
    ):: std.prune(a={
      cluster: cluster,
      internal_ip: internal_ip,
    }),
  },
  '#new':: d.fn(help="\n`google.clouddeploy_target.new` injects a new `google_clouddeploy_target` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.clouddeploy_target.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.clouddeploy_target` using the reference:\n\n    $._ref.google_clouddeploy_target.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_clouddeploy_target.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Optional. User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `description` (`string`): Optional. Description of the `Target`. Max length is 255 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be \u0026lt;= 128 bytes. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Name of the `Target`. Format is [a-z][a-z0-9\\-]{0,62}.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `require_approval` (`bool`): Optional. Whether or not the `Target` requires approval. When `null`, the `require_approval` field will be omitted from the resulting object.\n  - `anthos_cluster` (`list[obj]`): Information specifying an Anthos Cluster. When `null`, the `anthos_cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.anthos_cluster.new](#fn-anthos_clusternew) constructor.\n  - `execution_configs` (`list[obj]`): Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`. When `null`, the `execution_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.execution_configs.new](#fn-execution_configsnew) constructor.\n  - `gke` (`list[obj]`): Information specifying a GKE Cluster. When `null`, the `gke` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.gke.new](#fn-gkenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    annotations=null,
    anthos_cluster=null,
    description=null,
    execution_configs=null,
    gke=null,
    labels=null,
    project=null,
    require_approval=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_clouddeploy_target',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      anthos_cluster=anthos_cluster,
      description=description,
      execution_configs=execution_configs,
      gke=gke,
      labels=labels,
      location=location,
      name=name,
      project=project,
      require_approval=require_approval,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.clouddeploy_target.newAttrs` constructs a new object with attributes and blocks configured for the `clouddeploy_target`\nTerraform resource.\n\nUnlike [google.clouddeploy_target.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Optional. User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `description` (`string`): Optional. Description of the `Target`. Max length is 255 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Name of the `Target`. Format is [a-z][a-z0-9\\-]{0,62}.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `require_approval` (`bool`): Optional. Whether or not the `Target` requires approval. When `null`, the `require_approval` field will be omitted from the resulting object.\n  - `anthos_cluster` (`list[obj]`): Information specifying an Anthos Cluster. When `null`, the `anthos_cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.anthos_cluster.new](#fn-anthos_clusternew) constructor.\n  - `execution_configs` (`list[obj]`): Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`. When `null`, the `execution_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.execution_configs.new](#fn-execution_configsnew) constructor.\n  - `gke` (`list[obj]`): Information specifying a GKE Cluster. When `null`, the `gke` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.gke.new](#fn-gkenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_target.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `clouddeploy_target` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    annotations=null,
    anthos_cluster=null,
    description=null,
    execution_configs=null,
    gke=null,
    labels=null,
    project=null,
    require_approval=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    anthos_cluster: anthos_cluster,
    description: description,
    execution_configs: execution_configs,
    gke: gke,
    labels: labels,
    location: location,
    name: name,
    project: project,
    require_approval: require_approval,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.clouddeploy_target.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAnnotations':: d.fn(help='`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withAnthosCluster':: d.fn(help='`google.list[obj].withAnthosCluster` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the anthos_cluster field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAnthosClusterMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `anthos_cluster` field.\n', args=[]),
  withAnthosCluster(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          anthos_cluster: value,
        },
      },
    },
  },
  '#withAnthosClusterMixin':: d.fn(help='`google.list[obj].withAnthosClusterMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the anthos_cluster field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAnthosCluster](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `anthos_cluster` field.\n', args=[]),
  withAnthosClusterMixin(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          anthos_cluster+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withExecutionConfigs':: d.fn(help='`google.list[obj].withExecutionConfigs` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the execution_configs field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withExecutionConfigsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `execution_configs` field.\n', args=[]),
  withExecutionConfigs(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          execution_configs: value,
        },
      },
    },
  },
  '#withExecutionConfigsMixin':: d.fn(help='`google.list[obj].withExecutionConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the execution_configs field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withExecutionConfigs](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `execution_configs` field.\n', args=[]),
  withExecutionConfigsMixin(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          execution_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withGke':: d.fn(help='`google.list[obj].withGke` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gke field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGkeMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gke` field.\n', args=[]),
  withGke(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          gke: value,
        },
      },
    },
  },
  '#withGkeMixin':: d.fn(help='`google.list[obj].withGkeMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gke field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGke](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gke` field.\n', args=[]),
  withGkeMixin(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          gke+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRequireApproval':: d.fn(help='`google.bool.withRequireApproval` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the require_approval field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `require_approval` field.\n', args=[]),
  withRequireApproval(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          require_approval: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
