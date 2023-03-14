local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_env_references', url='', help='`apigee_env_references` represents the `google_apigee_env_references` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.apigee_env_references.new` injects a new `google_apigee_env_references` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_env_references.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_env_references` using the reference:\n\n    $._ref.google_apigee_env_references.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_env_references.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Optional. A human-readable description of this reference. When `null`, the `description` field will be omitted from the resulting object.\n  - `env_id` (`string`): The Apigee environment group associated with the Apigee environment,\nin the format \u0026#39;organizations/{{org_name}}/environments/{{env_name}}\u0026#39;.\n  - `name` (`string`): Required. The resource id of this reference. Values must match the regular expression [\\w\\s-.]\u0026#43;.\n  - `refers` (`string`): Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType.\n  - `resource_type` (`string`): The type of resource referred to by this reference. Valid values are \u0026#39;KeyStore\u0026#39; or \u0026#39;TrustStore\u0026#39;.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_env_references.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    env_id,
    name,
    refers,
    resource_type,
    description=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_env_references',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      env_id=env_id,
      name=name,
      refers=refers,
      resource_type=resource_type,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_env_references.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_env_references`\nTerraform resource.\n\nUnlike [google.apigee_env_references.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Optional. A human-readable description of this reference. When `null`, the `description` field will be omitted from the resulting object.\n  - `env_id` (`string`): The Apigee environment group associated with the Apigee environment,\nin the format &#39;organizations/{{org_name}}/environments/{{env_name}}&#39;.\n  - `name` (`string`): Required. The resource id of this reference. Values must match the regular expression [\\w\\s-.]&#43;.\n  - `refers` (`string`): Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType.\n  - `resource_type` (`string`): The type of resource referred to by this reference. Valid values are &#39;KeyStore&#39; or &#39;TrustStore&#39;.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_env_references.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_env_references` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    env_id,
    name,
    refers,
    resource_type,
    description=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    env_id: env_id,
    name: name,
    refers: refers,
    resource_type: resource_type,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_env_references.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_apigee_env_references+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEnvId':: d.fn(help='`google.string.withEnvId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the env_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `env_id` field.\n', args=[]),
  withEnvId(resourceLabel, value): {
    resource+: {
      google_apigee_env_references+: {
        [resourceLabel]+: {
          env_id: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_apigee_env_references+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withRefers':: d.fn(help='`google.string.withRefers` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the refers field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `refers` field.\n', args=[]),
  withRefers(resourceLabel, value): {
    resource+: {
      google_apigee_env_references+: {
        [resourceLabel]+: {
          refers: value,
        },
      },
    },
  },
  '#withResourceType':: d.fn(help='`google.string.withResourceType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the resource_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `resource_type` field.\n', args=[]),
  withResourceType(resourceLabel, value): {
    resource+: {
      google_apigee_env_references+: {
        [resourceLabel]+: {
          resource_type: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_apigee_env_references+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_apigee_env_references+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
