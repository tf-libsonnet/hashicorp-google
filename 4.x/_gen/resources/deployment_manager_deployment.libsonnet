local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='deployment_manager_deployment', url='', help='`deployment_manager_deployment` represents the `google_deployment_manager_deployment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  labels:: {
    '#new':: d.fn(help='\n`google.deployment_manager_deployment.labels.new` constructs a new object with attributes and blocks configured for the `labels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): Key for label. When `null`, the `key` field will be omitted from the resulting object.\n  - `value` (`string`): Value of label. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `labels` sub block.\n', args=[]),
    new(
      key=null,
      value=null
    ):: std.prune(a={
      key: key,
      value: value,
    }),
  },
  '#new':: d.fn(help="\n`google.deployment_manager_deployment.new` injects a new `google_deployment_manager_deployment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.deployment_manager_deployment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.deployment_manager_deployment` using the reference:\n\n    $._ref.google_deployment_manager_deployment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_deployment_manager_deployment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `create_policy` (`string`): Set the policy to use for creating new resources. Only used on\ncreate and update. Valid values are \u0026#39;CREATE_OR_ACQUIRE\u0026#39; (default) or\n\u0026#39;ACQUIRE\u0026#39;. If set to \u0026#39;ACQUIRE\u0026#39; and resources do not already exist,\nthe deployment will fail. Note that updating this field does not\nactually affect the deployment, just how it is updated. Default value: \u0026#34;CREATE_OR_ACQUIRE\u0026#34; Possible values: [\u0026#34;ACQUIRE\u0026#34;, \u0026#34;CREATE_OR_ACQUIRE\u0026#34;] When `null`, the `create_policy` field will be omitted from the resulting object.\n  - `delete_policy` (`string`): Set the policy to use for deleting new resources on update/delete.\nValid values are \u0026#39;DELETE\u0026#39; (default) or \u0026#39;ABANDON\u0026#39;. If \u0026#39;DELETE\u0026#39;,\nresource is deleted after removal from Deployment Manager. If\n\u0026#39;ABANDON\u0026#39;, the resource is only removed from Deployment Manager\nand is not actually deleted. Note that updating this field does not\nactually change the deployment, just how it is updated. Default value: \u0026#34;DELETE\u0026#34; Possible values: [\u0026#34;ABANDON\u0026#34;, \u0026#34;DELETE\u0026#34;] When `null`, the `delete_policy` field will be omitted from the resulting object.\n  - `description` (`string`): Optional user-provided description of deployment. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Unique name for the deployment\n  - `preview` (`bool`): If set to true, a deployment is created with \u0026#34;shell\u0026#34; resources\nthat are not actually instantiated. This allows you to preview a\ndeployment. It can be updated to false to actually deploy\nwith real resources.\n ~\u0026gt;**NOTE:** Deployment Manager does not allow update\nof a deployment in preview (unless updating to preview=false). Thus,\nTerraform will force-recreate deployments if either preview is updated\nto true or if other fields are updated while preview is true. When `null`, the `preview` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `labels` (`list[obj]`): Key-value pairs to apply to this labels. When `null`, the `labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.labels.new](#fn-labelsnew) constructor.\n  - `target` (`list[obj]`): Parameters that define your deployment, including the deployment\nconfiguration and relevant templates. When `null`, the `target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.target.new](#fn-targetnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    create_policy=null,
    delete_policy=null,
    description=null,
    labels=null,
    preview=null,
    project=null,
    target=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_deployment_manager_deployment',
    label=resourceLabel,
    attrs=self.newAttrs(
      create_policy=create_policy,
      delete_policy=delete_policy,
      description=description,
      labels=labels,
      name=name,
      preview=preview,
      project=project,
      target=target,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.deployment_manager_deployment.newAttrs` constructs a new object with attributes and blocks configured for the `deployment_manager_deployment`\nTerraform resource.\n\nUnlike [google.deployment_manager_deployment.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `create_policy` (`string`): Set the policy to use for creating new resources. Only used on\ncreate and update. Valid values are &#39;CREATE_OR_ACQUIRE&#39; (default) or\n&#39;ACQUIRE&#39;. If set to &#39;ACQUIRE&#39; and resources do not already exist,\nthe deployment will fail. Note that updating this field does not\nactually affect the deployment, just how it is updated. Default value: &#34;CREATE_OR_ACQUIRE&#34; Possible values: [&#34;ACQUIRE&#34;, &#34;CREATE_OR_ACQUIRE&#34;] When `null`, the `create_policy` field will be omitted from the resulting object.\n  - `delete_policy` (`string`): Set the policy to use for deleting new resources on update/delete.\nValid values are &#39;DELETE&#39; (default) or &#39;ABANDON&#39;. If &#39;DELETE&#39;,\nresource is deleted after removal from Deployment Manager. If\n&#39;ABANDON&#39;, the resource is only removed from Deployment Manager\nand is not actually deleted. Note that updating this field does not\nactually change the deployment, just how it is updated. Default value: &#34;DELETE&#34; Possible values: [&#34;ABANDON&#34;, &#34;DELETE&#34;] When `null`, the `delete_policy` field will be omitted from the resulting object.\n  - `description` (`string`): Optional user-provided description of deployment. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Unique name for the deployment\n  - `preview` (`bool`): If set to true, a deployment is created with &#34;shell&#34; resources\nthat are not actually instantiated. This allows you to preview a\ndeployment. It can be updated to false to actually deploy\nwith real resources.\n ~&gt;**NOTE:** Deployment Manager does not allow update\nof a deployment in preview (unless updating to preview=false). Thus,\nTerraform will force-recreate deployments if either preview is updated\nto true or if other fields are updated while preview is true. When `null`, the `preview` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `labels` (`list[obj]`): Key-value pairs to apply to this labels. When `null`, the `labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.labels.new](#fn-labelsnew) constructor.\n  - `target` (`list[obj]`): Parameters that define your deployment, including the deployment\nconfiguration and relevant templates. When `null`, the `target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.target.new](#fn-targetnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `deployment_manager_deployment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    create_policy=null,
    delete_policy=null,
    description=null,
    labels=null,
    preview=null,
    project=null,
    target=null,
    timeouts=null
  ):: std.prune(a={
    create_policy: create_policy,
    delete_policy: delete_policy,
    description: description,
    labels: labels,
    name: name,
    preview: preview,
    project: project,
    target: target,
    timeouts: timeouts,
  }),
  target:: {
    config:: {
      '#new':: d.fn(help='\n`google.deployment_manager_deployment.target.config.new` constructs a new object with attributes and blocks configured for the `config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `content` (`string`): The full YAML contents of your configuration file.\n\n**Returns**:\n  - An attribute object that represents the `config` sub block.\n', args=[]),
      new(
        content
      ):: std.prune(a={
        content: content,
      }),
    },
    imports:: {
      '#new':: d.fn(help='\n`google.deployment_manager_deployment.target.imports.new` constructs a new object with attributes and blocks configured for the `imports`\nTerraform sub block.\n\n\n\n**Args**:\n  - `content` (`string`): The full contents of the template that you want to import. When `null`, the `content` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the template to import, as declared in the YAML\nconfiguration. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `imports` sub block.\n', args=[]),
      new(
        content=null,
        name=null
      ):: std.prune(a={
        content: content,
        name: name,
      }),
    },
    '#new':: d.fn(help='\n`google.deployment_manager_deployment.target.new` constructs a new object with attributes and blocks configured for the `target`\nTerraform sub block.\n\n\n\n**Args**:\n  - `config` (`list[obj]`): The root configuration file to use for this deployment. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.target.config.new](#fn-deployment_manager_deploymentconfignew) constructor.\n  - `imports` (`list[obj]`): Specifies import files for this configuration. This can be\nused to import templates or other files. For example, you might\nimport a text file in order to use the file in a template. When `null`, the `imports` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.target.imports.new](#fn-deployment_manager_deploymentimportsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `target` sub block.\n', args=[]),
    new(
      config=null,
      imports=null
    ):: std.prune(a={
      config: config,
      imports: imports,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.deployment_manager_deployment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCreatePolicy':: d.fn(help='`google.string.withCreatePolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the create_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `create_policy` field.\n', args=[]),
  withCreatePolicy(resourceLabel, value): {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          create_policy: value,
        },
      },
    },
  },
  '#withDeletePolicy':: d.fn(help='`google.string.withDeletePolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the delete_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `delete_policy` field.\n', args=[]),
  withDeletePolicy(resourceLabel, value): {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          delete_policy: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.list[obj].withLabels` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the labels field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLabelsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLabelsMixin':: d.fn(help='`google.list[obj].withLabelsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the labels field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLabels](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `labels` field.\n', args=[]),
  withLabelsMixin(resourceLabel, value): {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          labels+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPreview':: d.fn(help='`google.bool.withPreview` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the preview field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `preview` field.\n', args=[]),
  withPreview(resourceLabel, value): {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          preview: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTarget':: d.fn(help='`google.list[obj].withTarget` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the target field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTargetMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `target` field.\n', args=[]),
  withTarget(resourceLabel, value): {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          target: value,
        },
      },
    },
  },
  '#withTargetMixin':: d.fn(help='`google.list[obj].withTargetMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the target field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTarget](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `target` field.\n', args=[]),
  withTargetMixin(resourceLabel, value): {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          target+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
