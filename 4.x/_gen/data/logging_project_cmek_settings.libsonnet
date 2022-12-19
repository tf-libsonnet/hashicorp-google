local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='logging_project_cmek_settings', url='', help='`logging_project_cmek_settings` represents the `google_logging_project_cmek_settings` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.logging_project_cmek_settings.new` injects a new `data_google_logging_project_cmek_settings` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.logging_project_cmek_settings.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.logging_project_cmek_settings` using the reference:\n\n    $._ref.data_google_logging_project_cmek_settings.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_logging_project_cmek_settings.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `kms_key_name` (`string`): The resource name for the configured Cloud KMS key.\n\t\t\t\tKMS key name format:\n\t\t\t\t\u0026#34;projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]\u0026#34;\n\t\t\t\tTo enable CMEK for the bucket, set this field to a valid kmsKeyName for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.\n\t\t\t\tThe Cloud KMS key used by the bucket can be updated by changing the kmsKeyName to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.\n\t\t\t\tSee [Enabling CMEK for Logging Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage) for more information. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `project` (`string`): \n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    project,
    kms_key_name=null,
    _meta={}
  ):: tf.withData(
    type='google_logging_project_cmek_settings',
    label=dataSrcLabel,
    attrs=self.newAttrs(kms_key_name=kms_key_name, project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.logging_project_cmek_settings.newAttrs` constructs a new object with attributes and blocks configured for the `logging_project_cmek_settings`\nTerraform data source.\n\nUnlike [google.data.logging_project_cmek_settings.new](#fn-loggingprojectcmeksettingsnew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `kms_key_name` (`string`): The resource name for the configured Cloud KMS key.\n\t\t\t\tKMS key name format:\n\t\t\t\t&#34;projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]&#34;\n\t\t\t\tTo enable CMEK for the bucket, set this field to a valid kmsKeyName for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.\n\t\t\t\tThe Cloud KMS key used by the bucket can be updated by changing the kmsKeyName to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.\n\t\t\t\tSee [Enabling CMEK for Logging Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage) for more information. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `project` (`string`): \n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `logging_project_cmek_settings` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    project,
    kms_key_name=null
  ):: std.prune(a={
    kms_key_name: kms_key_name,
    project: project,
  }),
  '#withKmsKeyName':: d.fn(help='`google.logging_project_cmek_settings.withKmsKeyName` constructs a mixin object that can be merged into the `logging_project_cmek_settings`\nTerraform data source block to set or update the kms_key_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `kms_key_name` field.\n', args=[]),
  withKmsKeyName(dataSrcLabel, value):: {
    data+: {
      google_logging_project_cmek_settings+: {
        [dataSrcLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.logging_project_cmek_settings.withProject` constructs a mixin object that can be merged into the `logging_project_cmek_settings`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_logging_project_cmek_settings+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
