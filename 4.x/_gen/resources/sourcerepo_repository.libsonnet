local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='sourcerepo_repository', url='', help='`sourcerepo_repository` represents the `google_sourcerepo_repository` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.sourcerepo_repository.new` injects a new `google_sourcerepo_repository` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.sourcerepo_repository.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.sourcerepo_repository` using the reference:\n\n    $._ref.google_sourcerepo_repository.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_sourcerepo_repository.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `name` (`string`): Resource name of the repository, of the form \u0026#39;{{repo}}\u0026#39;.\nThe repo name may contain slashes. eg, \u0026#39;name/with/slash\u0026#39;\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `pubsub_configs` (`list[obj]`): How this repository publishes a change in the repository through Cloud Pub/Sub.\nKeyed by the topic names. When `null`, the `pubsub_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sourcerepo_repository.pubsub_configs.new](#fn-pubsub_configsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sourcerepo_repository.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    project=null,
    pubsub_configs=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_sourcerepo_repository',
    label=resourceLabel,
    attrs=self.newAttrs(
      name=name,
      project=project,
      pubsub_configs=pubsub_configs,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.sourcerepo_repository.newAttrs` constructs a new object with attributes and blocks configured for the `sourcerepo_repository`\nTerraform resource.\n\nUnlike [google.sourcerepo_repository.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `name` (`string`): Resource name of the repository, of the form &#39;{{repo}}&#39;.\nThe repo name may contain slashes. eg, &#39;name/with/slash&#39;\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `pubsub_configs` (`list[obj]`): How this repository publishes a change in the repository through Cloud Pub/Sub.\nKeyed by the topic names. When `null`, the `pubsub_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sourcerepo_repository.pubsub_configs.new](#fn-pubsub_configsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sourcerepo_repository.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `sourcerepo_repository` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    project=null,
    pubsub_configs=null,
    timeouts=null
  ):: std.prune(a={
    name: name,
    project: project,
    pubsub_configs: pubsub_configs,
    timeouts: timeouts,
  }),
  pubsub_configs:: {
    '#new':: d.fn(help='\n`google.sourcerepo_repository.pubsub_configs.new` constructs a new object with attributes and blocks configured for the `pubsub_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `message_format` (`string`): The format of the Cloud Pub/Sub messages.\n- PROTOBUF: The message payload is a serialized protocol buffer of SourceRepoEvent.\n- JSON: The message payload is a JSON string of SourceRepoEvent. Possible values: [&#34;PROTOBUF&#34;, &#34;JSON&#34;]\n  - `service_account_email` (`string`): Email address of the service account used for publishing Cloud Pub/Sub messages.\nThis service account needs to be in the same project as the PubsubConfig. When added,\nthe caller needs to have iam.serviceAccounts.actAs permission on this service account.\nIf unspecified, it defaults to the compute engine default service account. When `null`, the `service_account_email` field will be omitted from the resulting object.\n  - `topic` (`string`): Set the `topic` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `pubsub_configs` sub block.\n', args=[]),
    new(
      message_format,
      topic,
      service_account_email=null
    ):: std.prune(a={
      message_format: message_format,
      service_account_email: service_account_email,
      topic: topic,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.sourcerepo_repository.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_sourcerepo_repository+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_sourcerepo_repository+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPubsubConfigs':: d.fn(help='`google.list[obj].withPubsubConfigs` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the pubsub_configs field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPubsubConfigsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `pubsub_configs` field.\n', args=[]),
  withPubsubConfigs(resourceLabel, value): {
    resource+: {
      google_sourcerepo_repository+: {
        [resourceLabel]+: {
          pubsub_configs: value,
        },
      },
    },
  },
  '#withPubsubConfigsMixin':: d.fn(help='`google.list[obj].withPubsubConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the pubsub_configs field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPubsubConfigs](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `pubsub_configs` field.\n', args=[]),
  withPubsubConfigsMixin(resourceLabel, value): {
    resource+: {
      google_sourcerepo_repository+: {
        [resourceLabel]+: {
          pubsub_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_sourcerepo_repository+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_sourcerepo_repository+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
