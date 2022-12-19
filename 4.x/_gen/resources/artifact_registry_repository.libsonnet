local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='artifact_registry_repository', url='', help='`artifact_registry_repository` represents the `google_artifact_registry_repository` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  maven_config:: {
    '#new':: d.fn(help='\n`google.artifact_registry_repository.maven_config.new` constructs a new object with attributes and blocks configured for the `maven_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_snapshot_overwrites` (`bool`): The repository with this flag will allow publishing the same\nsnapshot versions. When `null`, the `allow_snapshot_overwrites` field will be omitted from the resulting object.\n  - `version_policy` (`string`): Version policy defines the versions that the registry will accept. Default value: &#34;VERSION_POLICY_UNSPECIFIED&#34; Possible values: [&#34;VERSION_POLICY_UNSPECIFIED&#34;, &#34;RELEASE&#34;, &#34;SNAPSHOT&#34;] When `null`, the `version_policy` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `maven_config` sub block.\n', args=[]),
    new(
      allow_snapshot_overwrites=null,
      version_policy=null
    ):: std.prune(a={
      allow_snapshot_overwrites: allow_snapshot_overwrites,
      version_policy: version_policy,
    }),
  },
  '#new':: d.fn(help="\n`google.artifact_registry_repository.new` injects a new `google_artifact_registry_repository` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.artifact_registry_repository.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.artifact_registry_repository` using the reference:\n\n    $._ref.google_artifact_registry_repository.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_artifact_registry_repository.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): The user-provided description of the repository. When `null`, the `description` field will be omitted from the resulting object.\n  - `format` (`string`): The format of packages that are stored in the repository. Supported formats\ncan be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).\nYou can only create alpha formats if you are a member of the\n[alpha user group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access).\n  - `kms_key_name` (`string`): The Cloud KMS resource name of the customer managed encryption key that’s\nused to encrypt the contents of the Repository. Has the form:\n\u0026#39;projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key\u0026#39;.\nThis value may not be changed after the Repository has been created. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels with user-defined metadata.\nThis field may contain up to 64 entries. Label keys and values may be no\nlonger than 63 characters. Label keys must begin with a lowercase letter\nand may only contain lowercase letters, numeric characters, underscores,\nand dashes. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location this repository is located in. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `repository_id` (`string`): The last part of the repository name, for example:\n\u0026#34;repo1\u0026#34;\n  - `maven_config` (`list[obj]`): MavenRepositoryConfig is maven related repository details.\nProvides additional configuration details for repositories of the maven\nformat type. When `null`, the `maven_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.maven_config.new](#fn-artifactregistryrepositorymavenconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.timeouts.new](#fn-artifactregistryrepositorytimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    format,
    repository_id,
    description=null,
    kms_key_name=null,
    labels=null,
    location=null,
    maven_config=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_artifact_registry_repository',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      format=format,
      kms_key_name=kms_key_name,
      labels=labels,
      location=location,
      maven_config=maven_config,
      project=project,
      repository_id=repository_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.artifact_registry_repository.newAttrs` constructs a new object with attributes and blocks configured for the `artifact_registry_repository`\nTerraform resource.\n\nUnlike [google.artifact_registry_repository.new](#fn-artifactregistryrepositorynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): The user-provided description of the repository. When `null`, the `description` field will be omitted from the resulting object.\n  - `format` (`string`): The format of packages that are stored in the repository. Supported formats\ncan be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).\nYou can only create alpha formats if you are a member of the\n[alpha user group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access).\n  - `kms_key_name` (`string`): The Cloud KMS resource name of the customer managed encryption key that’s\nused to encrypt the contents of the Repository. Has the form:\n&#39;projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key&#39;.\nThis value may not be changed after the Repository has been created. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels with user-defined metadata.\nThis field may contain up to 64 entries. Label keys and values may be no\nlonger than 63 characters. Label keys must begin with a lowercase letter\nand may only contain lowercase letters, numeric characters, underscores,\nand dashes. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location this repository is located in. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `repository_id` (`string`): The last part of the repository name, for example:\n&#34;repo1&#34;\n  - `maven_config` (`list[obj]`): MavenRepositoryConfig is maven related repository details.\nProvides additional configuration details for repositories of the maven\nformat type. When `null`, the `maven_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.maven_config.new](#fn-artifactregistryrepositorymavenconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.timeouts.new](#fn-artifactregistryrepositorytimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `artifact_registry_repository` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    format,
    repository_id,
    description=null,
    kms_key_name=null,
    labels=null,
    location=null,
    maven_config=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    format: format,
    kms_key_name: kms_key_name,
    labels: labels,
    location: location,
    maven_config: maven_config,
    project: project,
    repository_id: repository_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.artifact_registry_repository.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.artifact_registry_repository.withDescription` constructs a mixin object that can be merged into the `artifact_registry_repository`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFormat':: d.fn(help='`google.artifact_registry_repository.withFormat` constructs a mixin object that can be merged into the `artifact_registry_repository`\nTerraform resource block to set or update the format field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `format` field.\n', args=[]),
  withFormat(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          format: value,
        },
      },
    },
  },
  '#withKmsKeyName':: d.fn(help='`google.artifact_registry_repository.withKmsKeyName` constructs a mixin object that can be merged into the `artifact_registry_repository`\nTerraform resource block to set or update the kms_key_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `kms_key_name` field.\n', args=[]),
  withKmsKeyName(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.artifact_registry_repository.withLabels` constructs a mixin object that can be merged into the `artifact_registry_repository`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.artifact_registry_repository.withLocation` constructs a mixin object that can be merged into the `artifact_registry_repository`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMavenConfig':: d.fn(help='`google.artifact_registry_repository.withMavenConfig` constructs a mixin object that can be merged into the `artifact_registry_repository`\nTerraform resource block to set or update the maven_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `maven_config` field.\n', args=[]),
  withMavenConfig(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          maven_config: value,
        },
      },
    },
  },
  '#withMavenConfigMixin':: d.fn(help='`google.artifact_registry_repository.withMavenConfigMixin` constructs a mixin object that can be merged into the `artifact_registry_repository`\nTerraform resource block to set or update the maven_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.artifact_registry_repository.withMavenConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `maven_config` field.\n', args=[]),
  withMavenConfigMixin(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          maven_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.artifact_registry_repository.withProject` constructs a mixin object that can be merged into the `artifact_registry_repository`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRepositoryId':: d.fn(help='`google.artifact_registry_repository.withRepositoryId` constructs a mixin object that can be merged into the `artifact_registry_repository`\nTerraform resource block to set or update the repository_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `repository_id` field.\n', args=[]),
  withRepositoryId(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          repository_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.artifact_registry_repository.withTimeouts` constructs a mixin object that can be merged into the `artifact_registry_repository`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.artifact_registry_repository.withTimeoutsMixin` constructs a mixin object that can be merged into the `artifact_registry_repository`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.artifact_registry_repository.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
