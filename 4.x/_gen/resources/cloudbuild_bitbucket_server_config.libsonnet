local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloudbuild_bitbucket_server_config', url='', help='`cloudbuild_bitbucket_server_config` represents the `google_cloudbuild_bitbucket_server_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  connected_repositories:: {
    '#new':: d.fn(help='\n`google.cloudbuild_bitbucket_server_config.connected_repositories.new` constructs a new object with attributes and blocks configured for the `connected_repositories`\nTerraform sub block.\n\n\n\n**Args**:\n  - `project_key` (`string`): Identifier for the project storing the repository.\n  - `repo_slug` (`string`): Identifier for the repository.\n\n**Returns**:\n  - An attribute object that represents the `connected_repositories` sub block.\n', args=[]),
    new(
      project_key,
      repo_slug
    ):: std.prune(a={
      project_key: project_key,
      repo_slug: repo_slug,
    }),
  },
  '#new':: d.fn(help="\n`google.cloudbuild_bitbucket_server_config.new` injects a new `google_cloudbuild_bitbucket_server_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.cloudbuild_bitbucket_server_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.cloudbuild_bitbucket_server_config` using the reference:\n\n    $._ref.google_cloudbuild_bitbucket_server_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_cloudbuild_bitbucket_server_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `api_key` (`string`): Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed.\nChanging this field will result in deleting/ recreating the resource.\n  - `config_id` (`string`): The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig\u0026#39;s resource name.\n  - `host_uri` (`string`): Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed.\nIf you need to change it, please create another BitbucketServerConfig.\n  - `location` (`string`): The location of this bitbucket server config.\n  - `peered_network` (`string`): The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection.\nThis should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty,\nno network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format\nprojects/{project}/global/networks/{network}, where {project} is a project number or id and {network} is the name of a VPC network in the project. When `null`, the `peered_network` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `ssl_ca` (`string`): SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt. When `null`, the `ssl_ca` field will be omitted from the resulting object.\n  - `username` (`string`): Username of the account Cloud Build will use on Bitbucket Server.\n  - `connected_repositories` (`list[obj]`): Connected Bitbucket Server repositories for this config. When `null`, the `connected_repositories` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_bitbucket_server_config.connected_repositories.new](#fn-connected_repositoriesnew) constructor.\n  - `secrets` (`list[obj]`): Secret Manager secrets needed by the config. When `null`, the `secrets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_bitbucket_server_config.secrets.new](#fn-secretsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_bitbucket_server_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    api_key,
    config_id,
    host_uri,
    location,
    username,
    connected_repositories=null,
    peered_network=null,
    project=null,
    secrets=null,
    ssl_ca=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudbuild_bitbucket_server_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      api_key=api_key,
      config_id=config_id,
      connected_repositories=connected_repositories,
      host_uri=host_uri,
      location=location,
      peered_network=peered_network,
      project=project,
      secrets=secrets,
      ssl_ca=ssl_ca,
      timeouts=timeouts,
      username=username
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.cloudbuild_bitbucket_server_config.newAttrs` constructs a new object with attributes and blocks configured for the `cloudbuild_bitbucket_server_config`\nTerraform resource.\n\nUnlike [google.cloudbuild_bitbucket_server_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `api_key` (`string`): Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed.\nChanging this field will result in deleting/ recreating the resource.\n  - `config_id` (`string`): The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig&#39;s resource name.\n  - `host_uri` (`string`): Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed.\nIf you need to change it, please create another BitbucketServerConfig.\n  - `location` (`string`): The location of this bitbucket server config.\n  - `peered_network` (`string`): The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection.\nThis should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty,\nno network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format\nprojects/{project}/global/networks/{network}, where {project} is a project number or id and {network} is the name of a VPC network in the project. When `null`, the `peered_network` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `ssl_ca` (`string`): SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt. When `null`, the `ssl_ca` field will be omitted from the resulting object.\n  - `username` (`string`): Username of the account Cloud Build will use on Bitbucket Server.\n  - `connected_repositories` (`list[obj]`): Connected Bitbucket Server repositories for this config. When `null`, the `connected_repositories` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_bitbucket_server_config.connected_repositories.new](#fn-connected_repositoriesnew) constructor.\n  - `secrets` (`list[obj]`): Secret Manager secrets needed by the config. When `null`, the `secrets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_bitbucket_server_config.secrets.new](#fn-secretsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_bitbucket_server_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudbuild_bitbucket_server_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    api_key,
    config_id,
    host_uri,
    location,
    username,
    connected_repositories=null,
    peered_network=null,
    project=null,
    secrets=null,
    ssl_ca=null,
    timeouts=null
  ):: std.prune(a={
    api_key: api_key,
    config_id: config_id,
    connected_repositories: connected_repositories,
    host_uri: host_uri,
    location: location,
    peered_network: peered_network,
    project: project,
    secrets: secrets,
    ssl_ca: ssl_ca,
    timeouts: timeouts,
    username: username,
  }),
  secrets:: {
    '#new':: d.fn(help='\n`google.cloudbuild_bitbucket_server_config.secrets.new` constructs a new object with attributes and blocks configured for the `secrets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `admin_access_token_version_name` (`string`): The resource name for the admin access token&#39;s secret version.\n  - `read_access_token_version_name` (`string`): The resource name for the read access token&#39;s secret version.\n  - `webhook_secret_version_name` (`string`): Immutable. The resource name for the webhook secret&#39;s secret version. Once this field has been set, it cannot be changed.\nChanging this field will result in deleting/ recreating the resource.\n\n**Returns**:\n  - An attribute object that represents the `secrets` sub block.\n', args=[]),
    new(
      admin_access_token_version_name,
      read_access_token_version_name,
      webhook_secret_version_name
    ):: std.prune(a={
      admin_access_token_version_name: admin_access_token_version_name,
      read_access_token_version_name: read_access_token_version_name,
      webhook_secret_version_name: webhook_secret_version_name,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.cloudbuild_bitbucket_server_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withApiKey':: d.fn(help='`google.string.withApiKey` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the api_key field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `api_key` field.\n', args=[]),
  withApiKey(resourceLabel, value): {
    resource+: {
      google_cloudbuild_bitbucket_server_config+: {
        [resourceLabel]+: {
          api_key: value,
        },
      },
    },
  },
  '#withConfigId':: d.fn(help='`google.string.withConfigId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the config_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `config_id` field.\n', args=[]),
  withConfigId(resourceLabel, value): {
    resource+: {
      google_cloudbuild_bitbucket_server_config+: {
        [resourceLabel]+: {
          config_id: value,
        },
      },
    },
  },
  '#withConnectedRepositories':: d.fn(help='`google.list[obj].withConnectedRepositories` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the connected_repositories field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withConnectedRepositoriesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `connected_repositories` field.\n', args=[]),
  withConnectedRepositories(resourceLabel, value): {
    resource+: {
      google_cloudbuild_bitbucket_server_config+: {
        [resourceLabel]+: {
          connected_repositories: value,
        },
      },
    },
  },
  '#withConnectedRepositoriesMixin':: d.fn(help='`google.list[obj].withConnectedRepositoriesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the connected_repositories field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withConnectedRepositories](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `connected_repositories` field.\n', args=[]),
  withConnectedRepositoriesMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_bitbucket_server_config+: {
        [resourceLabel]+: {
          connected_repositories+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withHostUri':: d.fn(help='`google.string.withHostUri` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the host_uri field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `host_uri` field.\n', args=[]),
  withHostUri(resourceLabel, value): {
    resource+: {
      google_cloudbuild_bitbucket_server_config+: {
        [resourceLabel]+: {
          host_uri: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_cloudbuild_bitbucket_server_config+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withPeeredNetwork':: d.fn(help='`google.string.withPeeredNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peered_network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peered_network` field.\n', args=[]),
  withPeeredNetwork(resourceLabel, value): {
    resource+: {
      google_cloudbuild_bitbucket_server_config+: {
        [resourceLabel]+: {
          peered_network: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_cloudbuild_bitbucket_server_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSecrets':: d.fn(help='`google.list[obj].withSecrets` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the secrets field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSecretsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `secrets` field.\n', args=[]),
  withSecrets(resourceLabel, value): {
    resource+: {
      google_cloudbuild_bitbucket_server_config+: {
        [resourceLabel]+: {
          secrets: value,
        },
      },
    },
  },
  '#withSecretsMixin':: d.fn(help='`google.list[obj].withSecretsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the secrets field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSecrets](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `secrets` field.\n', args=[]),
  withSecretsMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_bitbucket_server_config+: {
        [resourceLabel]+: {
          secrets+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSslCa':: d.fn(help='`google.string.withSslCa` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ssl_ca field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ssl_ca` field.\n', args=[]),
  withSslCa(resourceLabel, value): {
    resource+: {
      google_cloudbuild_bitbucket_server_config+: {
        [resourceLabel]+: {
          ssl_ca: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloudbuild_bitbucket_server_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_bitbucket_server_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUsername':: d.fn(help='`google.string.withUsername` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the username field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `username` field.\n', args=[]),
  withUsername(resourceLabel, value): {
    resource+: {
      google_cloudbuild_bitbucket_server_config+: {
        [resourceLabel]+: {
          username: value,
        },
      },
    },
  },
}
