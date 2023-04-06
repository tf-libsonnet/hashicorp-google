local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_keystores_aliases_key_cert_file', url='', help='`apigee_keystores_aliases_key_cert_file` represents the `google_apigee_keystores_aliases_key_cert_file` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  certs_info:: {
    cert_info:: {
      '#new':: d.fn(help='\n`google.apigee_keystores_aliases_key_cert_file.certs_info.cert_info.new` constructs a new object with attributes and blocks configured for the `cert_info`\nTerraform sub block.\n\n\n\n**Args**:\n  - `basic_constraints` (`string`): X.509 basic constraints extension. When `null`, the `basic_constraints` field will be omitted from the resulting object.\n  - `expiry_date` (`string`): X.509 notAfter validity period in milliseconds since epoch. When `null`, the `expiry_date` field will be omitted from the resulting object.\n  - `is_valid` (`string`): Flag that specifies whether the certificate is valid. \nFlag is set to Yes if the certificate is valid, No if expired, or Not yet if not yet valid. When `null`, the `is_valid` field will be omitted from the resulting object.\n  - `issuer` (`string`): X.509 issuer. When `null`, the `issuer` field will be omitted from the resulting object.\n  - `public_key` (`string`): Public key component of the X.509 subject public key info. When `null`, the `public_key` field will be omitted from the resulting object.\n  - `serial_number` (`string`): X.509 serial number. When `null`, the `serial_number` field will be omitted from the resulting object.\n  - `sig_alg_name` (`string`): X.509 signatureAlgorithm. When `null`, the `sig_alg_name` field will be omitted from the resulting object.\n  - `subject` (`string`): X.509 subject. When `null`, the `subject` field will be omitted from the resulting object.\n  - `subject_alternative_names` (`list`): X.509 subject alternative names (SANs) extension. When `null`, the `subject_alternative_names` field will be omitted from the resulting object.\n  - `valid_from` (`string`): X.509 notBefore validity period in milliseconds since epoch. When `null`, the `valid_from` field will be omitted from the resulting object.\n  - `version` (`number`): X.509 version. When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cert_info` sub block.\n', args=[]),
      new(
        basic_constraints=null,
        expiry_date=null,
        is_valid=null,
        issuer=null,
        public_key=null,
        serial_number=null,
        sig_alg_name=null,
        subject=null,
        subject_alternative_names=null,
        valid_from=null,
        version=null
      ):: std.prune(a={
        basic_constraints: basic_constraints,
        expiry_date: expiry_date,
        is_valid: is_valid,
        issuer: issuer,
        public_key: public_key,
        serial_number: serial_number,
        sig_alg_name: sig_alg_name,
        subject: subject,
        subject_alternative_names: subject_alternative_names,
        valid_from: valid_from,
        version: version,
      }),
    },
    '#new':: d.fn(help='\n`google.apigee_keystores_aliases_key_cert_file.certs_info.new` constructs a new object with attributes and blocks configured for the `certs_info`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cert_info` (`list[obj]`): List of all properties in the object. When `null`, the `cert_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_key_cert_file.certs_info.cert_info.new](#fn-certs_infocert_infonew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `certs_info` sub block.\n', args=[]),
    new(
      cert_info=null
    ):: std.prune(a={
      cert_info: cert_info,
    }),
  },
  '#new':: d.fn(help="\n`google.apigee_keystores_aliases_key_cert_file.new` injects a new `google_apigee_keystores_aliases_key_cert_file` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_keystores_aliases_key_cert_file.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_keystores_aliases_key_cert_file` using the reference:\n\n    $._ref.google_apigee_keystores_aliases_key_cert_file.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_keystores_aliases_key_cert_file.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `alias` (`string`): Alias Name\n  - `cert` (`string`): Cert content\n  - `environment` (`string`): Environment associated with the alias\n  - `key` (`string`): Private Key content, omit if uploading to truststore When `null`, the `key` field will be omitted from the resulting object.\n  - `keystore` (`string`): Keystore Name\n  - `org_id` (`string`): Organization ID associated with the alias\n  - `password` (`string`): Password for the Private Key if it\u0026#39;s encrypted When `null`, the `password` field will be omitted from the resulting object.\n  - `certs_info` (`list[obj]`): Chain of certificates under this alias. When `null`, the `certs_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_key_cert_file.certs_info.new](#fn-certs_infonew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_key_cert_file.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    alias,
    cert,
    environment,
    keystore,
    org_id,
    certs_info=null,
    key=null,
    password=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_keystores_aliases_key_cert_file',
    label=resourceLabel,
    attrs=self.newAttrs(
      alias=alias,
      cert=cert,
      certs_info=certs_info,
      environment=environment,
      key=key,
      keystore=keystore,
      org_id=org_id,
      password=password,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_keystores_aliases_key_cert_file.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_keystores_aliases_key_cert_file`\nTerraform resource.\n\nUnlike [google.apigee_keystores_aliases_key_cert_file.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `alias` (`string`): Alias Name\n  - `cert` (`string`): Cert content\n  - `environment` (`string`): Environment associated with the alias\n  - `key` (`string`): Private Key content, omit if uploading to truststore When `null`, the `key` field will be omitted from the resulting object.\n  - `keystore` (`string`): Keystore Name\n  - `org_id` (`string`): Organization ID associated with the alias\n  - `password` (`string`): Password for the Private Key if it&#39;s encrypted When `null`, the `password` field will be omitted from the resulting object.\n  - `certs_info` (`list[obj]`): Chain of certificates under this alias. When `null`, the `certs_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_key_cert_file.certs_info.new](#fn-certs_infonew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_key_cert_file.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_keystores_aliases_key_cert_file` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    alias,
    cert,
    environment,
    keystore,
    org_id,
    certs_info=null,
    key=null,
    password=null,
    timeouts=null
  ):: std.prune(a={
    alias: alias,
    cert: cert,
    certs_info: certs_info,
    environment: environment,
    key: key,
    keystore: keystore,
    org_id: org_id,
    password: password,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_keystores_aliases_key_cert_file.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `read` (`string`): Set the `read` field on the resulting object. When `null`, the `read` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      read=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
      update: update,
    }),
  },
  '#withAlias':: d.fn(help='`google.string.withAlias` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the alias field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `alias` field.\n', args=[]),
  withAlias(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_key_cert_file+: {
        [resourceLabel]+: {
          alias: value,
        },
      },
    },
  },
  '#withCert':: d.fn(help='`google.string.withCert` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cert field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cert` field.\n', args=[]),
  withCert(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_key_cert_file+: {
        [resourceLabel]+: {
          cert: value,
        },
      },
    },
  },
  '#withCertsInfo':: d.fn(help='`google.list[obj].withCertsInfo` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the certs_info field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCertsInfoMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `certs_info` field.\n', args=[]),
  withCertsInfo(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_key_cert_file+: {
        [resourceLabel]+: {
          certs_info: value,
        },
      },
    },
  },
  '#withCertsInfoMixin':: d.fn(help='`google.list[obj].withCertsInfoMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the certs_info field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCertsInfo](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `certs_info` field.\n', args=[]),
  withCertsInfoMixin(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_key_cert_file+: {
        [resourceLabel]+: {
          certs_info+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEnvironment':: d.fn(help='`google.string.withEnvironment` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the environment field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `environment` field.\n', args=[]),
  withEnvironment(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_key_cert_file+: {
        [resourceLabel]+: {
          environment: value,
        },
      },
    },
  },
  '#withKey':: d.fn(help='`google.string.withKey` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the key field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `key` field.\n', args=[]),
  withKey(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_key_cert_file+: {
        [resourceLabel]+: {
          key: value,
        },
      },
    },
  },
  '#withKeystore':: d.fn(help='`google.string.withKeystore` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the keystore field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `keystore` field.\n', args=[]),
  withKeystore(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_key_cert_file+: {
        [resourceLabel]+: {
          keystore: value,
        },
      },
    },
  },
  '#withOrgId':: d.fn(help='`google.string.withOrgId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the org_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `org_id` field.\n', args=[]),
  withOrgId(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_key_cert_file+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  '#withPassword':: d.fn(help='`google.string.withPassword` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the password field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `password` field.\n', args=[]),
  withPassword(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_key_cert_file+: {
        [resourceLabel]+: {
          password: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_key_cert_file+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_key_cert_file+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
