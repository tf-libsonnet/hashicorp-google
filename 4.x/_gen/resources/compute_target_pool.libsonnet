local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_target_pool', url='', help='`compute_target_pool` represents the `google_compute_target_pool` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_target_pool.new` injects a new `google_compute_target_pool` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_target_pool.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_target_pool` using the reference:\n\n    $._ref.google_compute_target_pool.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_target_pool.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `backup_pool` (`string`): URL to the backup target pool. Must also set failover_ratio. When `null`, the `backup_pool` field will be omitted from the resulting object.\n  - `description` (`string`): Textual description field. When `null`, the `description` field will be omitted from the resulting object.\n  - `failover_ratio` (`number`): Ratio (0 to 1) of failed nodes before using the backup pool (which must also be set). When `null`, the `failover_ratio` field will be omitted from the resulting object.\n  - `health_checks` (`list`): List of zero or one health check name or self_link. Only legacy google_compute_http_health_check is supported. When `null`, the `health_checks` field will be omitted from the resulting object.\n  - `instances` (`list`): List of instances in the pool. They can be given as URLs, or in the form of \u0026#34;zone/name\u0026#34;. Note that the instances need not exist at the time of target pool creation, so there is no need to use the Terraform interpolators to create a dependency on the instances from the target pool. When `null`, the `instances` field will be omitted from the resulting object.\n  - `name` (`string`): A unique name for the resource, required by GCE. Changing this forces a new resource to be created.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Where the target pool resides. Defaults to project region. When `null`, the `region` field will be omitted from the resulting object.\n  - `session_affinity` (`string`): How to distribute load. Options are \u0026#34;NONE\u0026#34; (no affinity). \u0026#34;CLIENT_IP\u0026#34; (hash of the source/dest addresses / ports), and \u0026#34;CLIENT_IP_PROTO\u0026#34; also includes the protocol (default \u0026#34;NONE\u0026#34;). When `null`, the `session_affinity` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_target_pool.timeouts.new](#fn-computetargetpooltimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    backup_pool=null,
    description=null,
    failover_ratio=null,
    health_checks=null,
    instances=null,
    project=null,
    region=null,
    session_affinity=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_target_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      backup_pool=backup_pool,
      description=description,
      failover_ratio=failover_ratio,
      health_checks=health_checks,
      instances=instances,
      name=name,
      project=project,
      region=region,
      session_affinity=session_affinity,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_target_pool.newAttrs` constructs a new object with attributes and blocks configured for the `compute_target_pool`\nTerraform resource.\n\nUnlike [google.compute_target_pool.new](#fn-computetargetpoolnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `backup_pool` (`string`): URL to the backup target pool. Must also set failover_ratio. When `null`, the `backup_pool` field will be omitted from the resulting object.\n  - `description` (`string`): Textual description field. When `null`, the `description` field will be omitted from the resulting object.\n  - `failover_ratio` (`number`): Ratio (0 to 1) of failed nodes before using the backup pool (which must also be set). When `null`, the `failover_ratio` field will be omitted from the resulting object.\n  - `health_checks` (`list`): List of zero or one health check name or self_link. Only legacy google_compute_http_health_check is supported. When `null`, the `health_checks` field will be omitted from the resulting object.\n  - `instances` (`list`): List of instances in the pool. They can be given as URLs, or in the form of &#34;zone/name&#34;. Note that the instances need not exist at the time of target pool creation, so there is no need to use the Terraform interpolators to create a dependency on the instances from the target pool. When `null`, the `instances` field will be omitted from the resulting object.\n  - `name` (`string`): A unique name for the resource, required by GCE. Changing this forces a new resource to be created.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Where the target pool resides. Defaults to project region. When `null`, the `region` field will be omitted from the resulting object.\n  - `session_affinity` (`string`): How to distribute load. Options are &#34;NONE&#34; (no affinity). &#34;CLIENT_IP&#34; (hash of the source/dest addresses / ports), and &#34;CLIENT_IP_PROTO&#34; also includes the protocol (default &#34;NONE&#34;). When `null`, the `session_affinity` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_target_pool.timeouts.new](#fn-computetargetpooltimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_target_pool` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    backup_pool=null,
    description=null,
    failover_ratio=null,
    health_checks=null,
    instances=null,
    project=null,
    region=null,
    session_affinity=null,
    timeouts=null
  ):: std.prune(a={
    backup_pool: backup_pool,
    description: description,
    failover_ratio: failover_ratio,
    health_checks: health_checks,
    instances: instances,
    name: name,
    project: project,
    region: region,
    session_affinity: session_affinity,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_target_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBackupPool':: d.fn(help='`google.compute_target_pool.withBackupPool` constructs a mixin object that can be merged into the `compute_target_pool`\nTerraform resource block to set or update the backup_pool field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `backup_pool` field.\n', args=[]),
  withBackupPool(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          backup_pool: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.compute_target_pool.withDescription` constructs a mixin object that can be merged into the `compute_target_pool`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFailoverRatio':: d.fn(help='`google.compute_target_pool.withFailoverRatio` constructs a mixin object that can be merged into the `compute_target_pool`\nTerraform resource block to set or update the failover_ratio field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `failover_ratio` field.\n', args=[]),
  withFailoverRatio(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          failover_ratio: value,
        },
      },
    },
  },
  '#withHealthChecks':: d.fn(help='`google.compute_target_pool.withHealthChecks` constructs a mixin object that can be merged into the `compute_target_pool`\nTerraform resource block to set or update the health_checks field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `health_checks` field.\n', args=[]),
  withHealthChecks(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          health_checks: value,
        },
      },
    },
  },
  '#withInstances':: d.fn(help='`google.compute_target_pool.withInstances` constructs a mixin object that can be merged into the `compute_target_pool`\nTerraform resource block to set or update the instances field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `instances` field.\n', args=[]),
  withInstances(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          instances: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.compute_target_pool.withName` constructs a mixin object that can be merged into the `compute_target_pool`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.compute_target_pool.withProject` constructs a mixin object that can be merged into the `compute_target_pool`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.compute_target_pool.withRegion` constructs a mixin object that can be merged into the `compute_target_pool`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withSessionAffinity':: d.fn(help='`google.compute_target_pool.withSessionAffinity` constructs a mixin object that can be merged into the `compute_target_pool`\nTerraform resource block to set or update the session_affinity field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `session_affinity` field.\n', args=[]),
  withSessionAffinity(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          session_affinity: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.compute_target_pool.withTimeouts` constructs a mixin object that can be merged into the `compute_target_pool`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.compute_target_pool.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_target_pool`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.compute_target_pool.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_target_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
