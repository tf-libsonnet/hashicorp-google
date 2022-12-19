local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='project_iam_custom_role', url='', help='`project_iam_custom_role` represents the `google_project_iam_custom_role` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.project_iam_custom_role.new` injects a new `google_project_iam_custom_role` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.project_iam_custom_role.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.project_iam_custom_role` using the reference:\n\n    $._ref.google_project_iam_custom_role.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_project_iam_custom_role.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A human-readable description for the role. When `null`, the `description` field will be omitted from the resulting object.\n  - `permissions` (`list`): The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.\n  - `project` (`string`): The project that the service account will be created in. Defaults to the provider project configuration. When `null`, the `project` field will be omitted from the resulting object.\n  - `role_id` (`string`): The camel case role id to use for this role. Cannot contain - characters.\n  - `stage` (`string`): The current launch stage of the role. Defaults to GA. When `null`, the `stage` field will be omitted from the resulting object.\n  - `title` (`string`): A human-readable title for the role.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    permissions,
    role_id,
    title,
    description=null,
    project=null,
    stage=null,
    _meta={}
  ):: tf.withResource(
    type='google_project_iam_custom_role',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      permissions=permissions,
      project=project,
      role_id=role_id,
      stage=stage,
      title=title
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.project_iam_custom_role.newAttrs` constructs a new object with attributes and blocks configured for the `project_iam_custom_role`\nTerraform resource.\n\nUnlike [google.project_iam_custom_role.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A human-readable description for the role. When `null`, the `description` field will be omitted from the resulting object.\n  - `permissions` (`list`): The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.\n  - `project` (`string`): The project that the service account will be created in. Defaults to the provider project configuration. When `null`, the `project` field will be omitted from the resulting object.\n  - `role_id` (`string`): The camel case role id to use for this role. Cannot contain - characters.\n  - `stage` (`string`): The current launch stage of the role. Defaults to GA. When `null`, the `stage` field will be omitted from the resulting object.\n  - `title` (`string`): A human-readable title for the role.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project_iam_custom_role` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    permissions,
    role_id,
    title,
    description=null,
    project=null,
    stage=null
  ):: std.prune(a={
    description: description,
    permissions: permissions,
    project: project,
    role_id: role_id,
    stage: stage,
    title: title,
  }),
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_project_iam_custom_role+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withPermissions':: d.fn(help='`google.list.withPermissions` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the permissions field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `permissions` field.\n', args=[]),
  withPermissions(resourceLabel, value): {
    resource+: {
      google_project_iam_custom_role+: {
        [resourceLabel]+: {
          permissions: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_project_iam_custom_role+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRoleId':: d.fn(help='`google.string.withRoleId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the role_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `role_id` field.\n', args=[]),
  withRoleId(resourceLabel, value): {
    resource+: {
      google_project_iam_custom_role+: {
        [resourceLabel]+: {
          role_id: value,
        },
      },
    },
  },
  '#withStage':: d.fn(help='`google.string.withStage` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the stage field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `stage` field.\n', args=[]),
  withStage(resourceLabel, value): {
    resource+: {
      google_project_iam_custom_role+: {
        [resourceLabel]+: {
          stage: value,
        },
      },
    },
  },
  '#withTitle':: d.fn(help='`google.string.withTitle` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the title field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `title` field.\n', args=[]),
  withTitle(resourceLabel, value): {
    resource+: {
      google_project_iam_custom_role+: {
        [resourceLabel]+: {
          title: value,
        },
      },
    },
  },
}
