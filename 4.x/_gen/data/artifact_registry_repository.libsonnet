local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='artifact_registry_repository', url='', help='`artifact_registry_repository` represents the `google_artifact_registry_repository` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.artifact_registry_repository.new` injects a new `data_google_artifact_registry_repository` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.artifact_registry_repository.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.artifact_registry_repository` using the reference:\n\n    $._ref.data_google_artifact_registry_repository.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_artifact_registry_repository.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `location` (`string`): The name of the location this repository is located in.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `repository_id` (`string`): The last part of the repository name, for example:\n\u0026#34;repo1\u0026#34;\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    location,
    repository_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_artifact_registry_repository',
    label=dataSrcLabel,
    attrs=self.newAttrs(location=location, project=project, repository_id=repository_id),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.artifact_registry_repository.newAttrs` constructs a new object with attributes and blocks configured for the `artifact_registry_repository`\nTerraform data source.\n\nUnlike [google.data.artifact_registry_repository.new](#fn-artifactregistryrepositorynew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): The name of the location this repository is located in.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `repository_id` (`string`): The last part of the repository name, for example:\n&#34;repo1&#34;\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `artifact_registry_repository` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    repository_id,
    project=null
  ):: std.prune(a={
    location: location,
    project: project,
    repository_id: repository_id,
  }),
  '#withLocation':: d.fn(help='`google.artifact_registry_repository.withLocation` constructs a mixin object that can be merged into the `artifact_registry_repository`\nTerraform data source block to set or update the location field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `location` field.\n', args=[]),
  withLocation(dataSrcLabel, value):: {
    data+: {
      google_artifact_registry_repository+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.artifact_registry_repository.withProject` constructs a mixin object that can be merged into the `artifact_registry_repository`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_artifact_registry_repository+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRepositoryId':: d.fn(help='`google.artifact_registry_repository.withRepositoryId` constructs a mixin object that can be merged into the `artifact_registry_repository`\nTerraform data source block to set or update the repository_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `repository_id` field.\n', args=[]),
  withRepositoryId(dataSrcLabel, value):: {
    data+: {
      google_artifact_registry_repository+: {
        [dataSrcLabel]+: {
          repository_id: value,
        },
      },
    },
  },
}
