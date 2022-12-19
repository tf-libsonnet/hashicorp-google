local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='firebaserules_ruleset', url='', help='`firebaserules_ruleset` represents the `google_firebaserules_ruleset` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.firebaserules_ruleset.new` injects a new `google_firebaserules_ruleset` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.firebaserules_ruleset.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.firebaserules_ruleset` using the reference:\n\n    $._ref.google_firebaserules_ruleset.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_firebaserules_ruleset.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `source` (`list[obj]`): `Source` for the `Ruleset`. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firebaserules_ruleset.source.new](#fn-firebaserulesrulesetsourcenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firebaserules_ruleset.timeouts.new](#fn-firebaserulesrulesettimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    project=null,
    source=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebaserules_ruleset',
    label=resourceLabel,
    attrs=self.newAttrs(project=project, source=source, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.firebaserules_ruleset.newAttrs` constructs a new object with attributes and blocks configured for the `firebaserules_ruleset`\nTerraform resource.\n\nUnlike [google.firebaserules_ruleset.new](#fn-firebaserulesrulesetnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `source` (`list[obj]`): `Source` for the `Ruleset`. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firebaserules_ruleset.source.new](#fn-firebaserulesrulesetsourcenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firebaserules_ruleset.timeouts.new](#fn-firebaserulesrulesettimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `firebaserules_ruleset` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    project=null,
    source=null,
    timeouts=null
  ):: std.prune(a={
    project: project,
    source: source,
    timeouts: timeouts,
  }),
  source:: {
    files:: {
      '#new':: d.fn(help='\n`google.firebaserules_ruleset.source.files.new` constructs a new object with attributes and blocks configured for the `files`\nTerraform sub block.\n\n\n\n**Args**:\n  - `content` (`string`): Textual Content.\n  - `fingerprint` (`string`): Fingerprint (e.g. github sha) associated with the `File`. When `null`, the `fingerprint` field will be omitted from the resulting object.\n  - `name` (`string`): File name.\n\n**Returns**:\n  - An attribute object that represents the `files` sub block.\n', args=[]),
      new(
        content,
        name,
        fingerprint=null
      ):: std.prune(a={
        content: content,
        fingerprint: fingerprint,
        name: name,
      }),
    },
    '#new':: d.fn(help='\n`google.firebaserules_ruleset.source.new` constructs a new object with attributes and blocks configured for the `source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `language` (`string`): `Language` of the `Source` bundle. If unspecified, the language will default to `FIREBASE_RULES`. Possible values: LANGUAGE_UNSPECIFIED, FIREBASE_RULES, EVENT_FLOW_TRIGGERS When `null`, the `language` field will be omitted from the resulting object.\n  - `files` (`list[obj]`): `File` set constituting the `Source` bundle. When `null`, the `files` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firebaserules_ruleset.source.files.new](#fn-sourcefilesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `source` sub block.\n', args=[]),
    new(
      files=null,
      language=null
    ):: std.prune(a={
      files: files,
      language: language,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.firebaserules_ruleset.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_firebaserules_ruleset+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSource':: d.fn(help='`google.list[obj].withSource` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSourceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source` field.\n', args=[]),
  withSource(resourceLabel, value): {
    resource+: {
      google_firebaserules_ruleset+: {
        [resourceLabel]+: {
          source: value,
        },
      },
    },
  },
  '#withSourceMixin':: d.fn(help='`google.list[obj].withSourceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSource](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source` field.\n', args=[]),
  withSourceMixin(resourceLabel, value): {
    resource+: {
      google_firebaserules_ruleset+: {
        [resourceLabel]+: {
          source+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_firebaserules_ruleset+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_firebaserules_ruleset+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
