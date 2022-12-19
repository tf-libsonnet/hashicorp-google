local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='project_organization_policy', url='', help='`project_organization_policy` represents the `google_project_organization_policy` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.project_organization_policy.new` injects a new `data_google_project_organization_policy` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.project_organization_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.project_organization_policy` using the reference:\n\n    $._ref.data_google_project_organization_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_project_organization_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `constraint` (`string`): The name of the Constraint the Policy is configuring, for example, serviceuser.services.\n  - `project` (`string`): The project ID.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    constraint,
    project,
    _meta={}
  ):: tf.withData(
    type='google_project_organization_policy',
    label=dataSrcLabel,
    attrs=self.newAttrs(constraint=constraint, project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.project_organization_policy.newAttrs` constructs a new object with attributes and blocks configured for the `project_organization_policy`\nTerraform data source.\n\nUnlike [google.data.project_organization_policy.new](#fn-projectorganizationpolicynew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `constraint` (`string`): The name of the Constraint the Policy is configuring, for example, serviceuser.services.\n  - `project` (`string`): The project ID.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `project_organization_policy` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    constraint,
    project
  ):: std.prune(a={
    constraint: constraint,
    project: project,
  }),
  '#withConstraint':: d.fn(help='`google.project_organization_policy.withConstraint` constructs a mixin object that can be merged into the `project_organization_policy`\nTerraform data source block to set or update the constraint field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `constraint` field.\n', args=[]),
  withConstraint(dataSrcLabel, value):: {
    data+: {
      google_project_organization_policy+: {
        [dataSrcLabel]+: {
          constraint: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.project_organization_policy.withProject` constructs a mixin object that can be merged into the `project_organization_policy`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_project_organization_policy+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
