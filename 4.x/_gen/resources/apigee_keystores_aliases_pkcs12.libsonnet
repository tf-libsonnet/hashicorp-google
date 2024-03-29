local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_keystores_aliases_pkcs12', url='', help='`apigee_keystores_aliases_pkcs12` represents the `google_apigee_keystores_aliases_pkcs12` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.apigee_keystores_aliases_pkcs12.new` injects a new `google_apigee_keystores_aliases_pkcs12` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_keystores_aliases_pkcs12.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_keystores_aliases_pkcs12` using the reference:\n\n    $._ref.google_apigee_keystores_aliases_pkcs12.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_keystores_aliases_pkcs12.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `alias` (`string`): Alias Name\n  - `environment` (`string`): Environment associated with the alias\n  - `file` (`string`): Cert content\n  - `filehash` (`string`): Hash of the pkcs file\n  - `keystore` (`string`): Keystore Name\n  - `org_id` (`string`): Organization ID associated with the alias\n  - `password` (`string`): Password for the Private Key if it\u0026#39;s encrypted When `null`, the `password` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_pkcs12.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    alias,
    environment,
    file,
    filehash,
    keystore,
    org_id,
    password=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_keystores_aliases_pkcs12',
    label=resourceLabel,
    attrs=self.newAttrs(
      alias=alias,
      environment=environment,
      file=file,
      filehash=filehash,
      keystore=keystore,
      org_id=org_id,
      password=password,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_keystores_aliases_pkcs12.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_keystores_aliases_pkcs12`\nTerraform resource.\n\nUnlike [google.apigee_keystores_aliases_pkcs12.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `alias` (`string`): Alias Name\n  - `environment` (`string`): Environment associated with the alias\n  - `file` (`string`): Cert content\n  - `filehash` (`string`): Hash of the pkcs file\n  - `keystore` (`string`): Keystore Name\n  - `org_id` (`string`): Organization ID associated with the alias\n  - `password` (`string`): Password for the Private Key if it&#39;s encrypted When `null`, the `password` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_pkcs12.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_keystores_aliases_pkcs12` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    alias,
    environment,
    file,
    filehash,
    keystore,
    org_id,
    password=null,
    timeouts=null
  ):: std.prune(a={
    alias: alias,
    environment: environment,
    file: file,
    filehash: filehash,
    keystore: keystore,
    org_id: org_id,
    password: password,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_keystores_aliases_pkcs12.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withAlias':: d.fn(help='`google.string.withAlias` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the alias field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `alias` field.\n', args=[]),
  withAlias(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_pkcs12+: {
        [resourceLabel]+: {
          alias: value,
        },
      },
    },
  },
  '#withEnvironment':: d.fn(help='`google.string.withEnvironment` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the environment field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `environment` field.\n', args=[]),
  withEnvironment(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_pkcs12+: {
        [resourceLabel]+: {
          environment: value,
        },
      },
    },
  },
  '#withFile':: d.fn(help='`google.string.withFile` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the file field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `file` field.\n', args=[]),
  withFile(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_pkcs12+: {
        [resourceLabel]+: {
          file: value,
        },
      },
    },
  },
  '#withFilehash':: d.fn(help='`google.string.withFilehash` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the filehash field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `filehash` field.\n', args=[]),
  withFilehash(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_pkcs12+: {
        [resourceLabel]+: {
          filehash: value,
        },
      },
    },
  },
  '#withKeystore':: d.fn(help='`google.string.withKeystore` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the keystore field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `keystore` field.\n', args=[]),
  withKeystore(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_pkcs12+: {
        [resourceLabel]+: {
          keystore: value,
        },
      },
    },
  },
  '#withOrgId':: d.fn(help='`google.string.withOrgId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the org_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `org_id` field.\n', args=[]),
  withOrgId(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_pkcs12+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  '#withPassword':: d.fn(help='`google.string.withPassword` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the password field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `password` field.\n', args=[]),
  withPassword(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_pkcs12+: {
        [resourceLabel]+: {
          password: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_pkcs12+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_pkcs12+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
