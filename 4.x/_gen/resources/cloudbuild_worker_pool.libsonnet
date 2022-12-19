local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloudbuild_worker_pool', url='', help='`cloudbuild_worker_pool` represents the `google_cloudbuild_worker_pool` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  network_config:: {
    '#new':: d.fn(help='\n`google.cloudbuild_worker_pool.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `peered_network` (`string`): Required. Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See [Understanding network configuration options](https://cloud.google.com/cloud-build/docs/custom-workers/set-up-custom-worker-pool-environment#understanding_the_network_configuration_options)\n\n**Returns**:\n  - An attribute object that represents the `network_config` sub block.\n', args=[]),
    new(
      peered_network
    ):: std.prune(a={
      peered_network: peered_network,
    }),
  },
  '#new':: d.fn(help="\n`google.cloudbuild_worker_pool.new` injects a new `google_cloudbuild_worker_pool` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.cloudbuild_worker_pool.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.cloudbuild_worker_pool` using the reference:\n\n    $._ref.google_cloudbuild_worker_pool.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_cloudbuild_worker_pool.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `display_name` (`string`): A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): User-defined name of the `WorkerPool`.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `network_config` (`list[obj]`): Network configuration for the `WorkerPool`. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_worker_pool.network_config.new](#fn-network_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_worker_pool.timeouts.new](#fn-timeoutsnew) constructor.\n  - `worker_config` (`list[obj]`): Configuration to be used for a creating workers in the `WorkerPool`. When `null`, the `worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_worker_pool.worker_config.new](#fn-worker_confignew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    annotations=null,
    display_name=null,
    network_config=null,
    project=null,
    timeouts=null,
    worker_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudbuild_worker_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      display_name=display_name,
      location=location,
      name=name,
      network_config=network_config,
      project=project,
      timeouts=timeouts,
      worker_config=worker_config
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.cloudbuild_worker_pool.newAttrs` constructs a new object with attributes and blocks configured for the `cloudbuild_worker_pool`\nTerraform resource.\n\nUnlike [google.cloudbuild_worker_pool.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `display_name` (`string`): A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): User-defined name of the `WorkerPool`.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `network_config` (`list[obj]`): Network configuration for the `WorkerPool`. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_worker_pool.network_config.new](#fn-network_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_worker_pool.timeouts.new](#fn-timeoutsnew) constructor.\n  - `worker_config` (`list[obj]`): Configuration to be used for a creating workers in the `WorkerPool`. When `null`, the `worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_worker_pool.worker_config.new](#fn-worker_confignew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudbuild_worker_pool` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    annotations=null,
    display_name=null,
    network_config=null,
    project=null,
    timeouts=null,
    worker_config=null
  ):: std.prune(a={
    annotations: annotations,
    display_name: display_name,
    location: location,
    name: name,
    network_config: network_config,
    project: project,
    timeouts: timeouts,
    worker_config: worker_config,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.cloudbuild_worker_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetworkConfig':: d.fn(help='`google.list[obj].withNetworkConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfig(resourceLabel, value): {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          network_config: value,
        },
      },
    },
  },
  '#withNetworkConfigMixin':: d.fn(help='`google.list[obj].withNetworkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfigMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          network_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withWorkerConfig':: d.fn(help='`google.list[obj].withWorkerConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the worker_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withWorkerConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `worker_config` field.\n', args=[]),
  withWorkerConfig(resourceLabel, value): {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          worker_config: value,
        },
      },
    },
  },
  '#withWorkerConfigMixin':: d.fn(help='`google.list[obj].withWorkerConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the worker_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withWorkerConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `worker_config` field.\n', args=[]),
  withWorkerConfigMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          worker_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  worker_config:: {
    '#new':: d.fn(help='\n`google.cloudbuild_worker_pool.worker_config.new` constructs a new object with attributes and blocks configured for the `worker_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disk_size_gb` (`number`): Size of the disk attached to the worker, in GB. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). Specify a value of up to 1000. If `0` is specified, Cloud Build will use a standard disk size. When `null`, the `disk_size_gb` field will be omitted from the resulting object.\n  - `machine_type` (`string`): Machine type of a worker, such as `n1-standard-1`. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). If left blank, Cloud Build will use `n1-standard-1`. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `no_external_ip` (`bool`): If true, workers are created without any public address, which prevents network egress to public IPs. When `null`, the `no_external_ip` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `worker_config` sub block.\n', args=[]),
    new(
      disk_size_gb=null,
      machine_type=null,
      no_external_ip=null
    ):: std.prune(a={
      disk_size_gb: disk_size_gb,
      machine_type: machine_type,
      no_external_ip: no_external_ip,
    }),
  },
}
