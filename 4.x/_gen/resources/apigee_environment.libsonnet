local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_environment', url='', help='`apigee_environment` represents the `google_apigee_environment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.apigee_environment.new` injects a new `google_apigee_environment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_environment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_environment` using the reference:\n\n    $._ref.google_apigee_environment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_environment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `api_proxy_type` (`string`): Optional. API Proxy type supported by the environment. The type can be set when creating\nthe Environment and cannot be changed. Possible values: [\u0026#34;API_PROXY_TYPE_UNSPECIFIED\u0026#34;, \u0026#34;PROGRAMMABLE\u0026#34;, \u0026#34;CONFIGURABLE\u0026#34;] When `null`, the `api_proxy_type` field will be omitted from the resulting object.\n  - `deployment_type` (`string`): Optional. Deployment type supported by the environment. The deployment type can be\nset when creating the environment and cannot be changed. When you enable archive\ndeployment, you will be prevented from performing a subset of actions within the\nenvironment, including:\nManaging the deployment of API proxy or shared flow revisions;\nCreating, updating, or deleting resource files;\nCreating, updating, or deleting target servers. Possible values: [\u0026#34;DEPLOYMENT_TYPE_UNSPECIFIED\u0026#34;, \u0026#34;PROXY\u0026#34;, \u0026#34;ARCHIVE\u0026#34;] When `null`, the `deployment_type` field will be omitted from the resulting object.\n  - `description` (`string`): Description of the environment. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Display name of the environment. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `name` (`string`): The resource ID of the environment.\n  - `org_id` (`string`): The Apigee Organization associated with the Apigee environment,\nin the format \u0026#39;organizations/{{org_name}}\u0026#39;.\n  - `node_config` (`list[obj]`): NodeConfig for setting the min/max number of nodes associated with the environment. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_environment.node_config.new](#fn-apigee_environmentnode_confignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_environment.timeouts.new](#fn-apigee_environmenttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    org_id,
    api_proxy_type=null,
    deployment_type=null,
    description=null,
    display_name=null,
    node_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_environment',
    label=resourceLabel,
    attrs=self.newAttrs(
      api_proxy_type=api_proxy_type,
      deployment_type=deployment_type,
      description=description,
      display_name=display_name,
      name=name,
      node_config=node_config,
      org_id=org_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_environment.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_environment`\nTerraform resource.\n\nUnlike [google.apigee_environment.new](#fn-apigee_environmentnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `api_proxy_type` (`string`): Optional. API Proxy type supported by the environment. The type can be set when creating\nthe Environment and cannot be changed. Possible values: [&#34;API_PROXY_TYPE_UNSPECIFIED&#34;, &#34;PROGRAMMABLE&#34;, &#34;CONFIGURABLE&#34;] When `null`, the `api_proxy_type` field will be omitted from the resulting object.\n  - `deployment_type` (`string`): Optional. Deployment type supported by the environment. The deployment type can be\nset when creating the environment and cannot be changed. When you enable archive\ndeployment, you will be prevented from performing a subset of actions within the\nenvironment, including:\nManaging the deployment of API proxy or shared flow revisions;\nCreating, updating, or deleting resource files;\nCreating, updating, or deleting target servers. Possible values: [&#34;DEPLOYMENT_TYPE_UNSPECIFIED&#34;, &#34;PROXY&#34;, &#34;ARCHIVE&#34;] When `null`, the `deployment_type` field will be omitted from the resulting object.\n  - `description` (`string`): Description of the environment. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Display name of the environment. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `name` (`string`): The resource ID of the environment.\n  - `org_id` (`string`): The Apigee Organization associated with the Apigee environment,\nin the format &#39;organizations/{{org_name}}&#39;.\n  - `node_config` (`list[obj]`): NodeConfig for setting the min/max number of nodes associated with the environment. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_environment.node_config.new](#fn-apigee_environmentnode_confignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_environment.timeouts.new](#fn-apigee_environmenttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_environment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    org_id,
    api_proxy_type=null,
    deployment_type=null,
    description=null,
    display_name=null,
    node_config=null,
    timeouts=null
  ):: std.prune(a={
    api_proxy_type: api_proxy_type,
    deployment_type: deployment_type,
    description: description,
    display_name: display_name,
    name: name,
    node_config: node_config,
    org_id: org_id,
    timeouts: timeouts,
  }),
  node_config:: {
    '#new':: d.fn(help='\n`google.apigee_environment.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_node_count` (`string`): The maximum total number of gateway nodes that the is reserved for all instances that\nhas the specified environment. If not specified, the default is determined by the\nrecommended maximum number of nodes for that gateway. When `null`, the `max_node_count` field will be omitted from the resulting object.\n  - `min_node_count` (`string`): The minimum total number of gateway nodes that the is reserved for all instances that\nhas the specified environment. If not specified, the default is determined by the\nrecommended minimum number of nodes for that gateway. When `null`, the `min_node_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_config` sub block.\n', args=[]),
    new(
      max_node_count=null,
      min_node_count=null
    ):: std.prune(a={
      max_node_count: max_node_count,
      min_node_count: min_node_count,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_environment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withApiProxyType':: d.fn(help='`google.string.withApiProxyType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the api_proxy_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `api_proxy_type` field.\n', args=[]),
  withApiProxyType(resourceLabel, value): {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          api_proxy_type: value,
        },
      },
    },
  },
  '#withDeploymentType':: d.fn(help='`google.string.withDeploymentType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the deployment_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `deployment_type` field.\n', args=[]),
  withDeploymentType(resourceLabel, value): {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          deployment_type: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNodeConfig':: d.fn(help='`google.list[obj].withNodeConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNodeConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_config` field.\n', args=[]),
  withNodeConfig(resourceLabel, value): {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          node_config: value,
        },
      },
    },
  },
  '#withNodeConfigMixin':: d.fn(help='`google.list[obj].withNodeConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNodeConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_config` field.\n', args=[]),
  withNodeConfigMixin(resourceLabel, value): {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          node_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withOrgId':: d.fn(help='`google.string.withOrgId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the org_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `org_id` field.\n', args=[]),
  withOrgId(resourceLabel, value): {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
