local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_keystores_aliases_self_signed_cert', url='', help='`apigee_keystores_aliases_self_signed_cert` represents the `google_apigee_keystores_aliases_self_signed_cert` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.apigee_keystores_aliases_self_signed_cert.new` injects a new `google_apigee_keystores_aliases_self_signed_cert` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_keystores_aliases_self_signed_cert.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_keystores_aliases_self_signed_cert` using the reference:\n\n    $._ref.google_apigee_keystores_aliases_self_signed_cert.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_keystores_aliases_self_signed_cert.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `alias` (`string`): Alias for the key/certificate pair. Values must match the regular expression [\\w\\s-.]{1,255}. \nThis must be provided for all formats except selfsignedcert; self-signed certs may specify the alias in either \nthis parameter or the JSON body.\n  - `cert_validity_in_days` (`number`): Validity duration of certificate, in days. Accepts positive non-zero value. Defaults to 365. When `null`, the `cert_validity_in_days` field will be omitted from the resulting object.\n  - `environment` (`string`): The Apigee environment name\n  - `key_size` (`string`): Key size. Default and maximum value is 2048 bits. When `null`, the `key_size` field will be omitted from the resulting object.\n  - `keystore` (`string`): The Apigee keystore name associated in an Apigee environment\n  - `org_id` (`string`): The Apigee Organization name associated with the Apigee environment\n  - `sig_alg` (`string`): Signature algorithm to generate private key. Valid values are SHA512withRSA, SHA384withRSA, and SHA256withRSA\n  - `subject` (`list[obj]`): Subject details. When `null`, the `subject` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_self_signed_cert.subject.new](#fn-subjectnew) constructor.\n  - `subject_alternative_dns_names` (`list[obj]`): List of alternative host names. Maximum length is 255 characters for each value. When `null`, the `subject_alternative_dns_names` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_self_signed_cert.subject_alternative_dns_names.new](#fn-subject_alternative_dns_namesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_self_signed_cert.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    alias,
    environment,
    keystore,
    org_id,
    sig_alg,
    cert_validity_in_days=null,
    key_size=null,
    subject=null,
    subject_alternative_dns_names=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_keystores_aliases_self_signed_cert',
    label=resourceLabel,
    attrs=self.newAttrs(
      alias=alias,
      cert_validity_in_days=cert_validity_in_days,
      environment=environment,
      key_size=key_size,
      keystore=keystore,
      org_id=org_id,
      sig_alg=sig_alg,
      subject=subject,
      subject_alternative_dns_names=subject_alternative_dns_names,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_keystores_aliases_self_signed_cert.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_keystores_aliases_self_signed_cert`\nTerraform resource.\n\nUnlike [google.apigee_keystores_aliases_self_signed_cert.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `alias` (`string`): Alias for the key/certificate pair. Values must match the regular expression [\\w\\s-.]{1,255}. \nThis must be provided for all formats except selfsignedcert; self-signed certs may specify the alias in either \nthis parameter or the JSON body.\n  - `cert_validity_in_days` (`number`): Validity duration of certificate, in days. Accepts positive non-zero value. Defaults to 365. When `null`, the `cert_validity_in_days` field will be omitted from the resulting object.\n  - `environment` (`string`): The Apigee environment name\n  - `key_size` (`string`): Key size. Default and maximum value is 2048 bits. When `null`, the `key_size` field will be omitted from the resulting object.\n  - `keystore` (`string`): The Apigee keystore name associated in an Apigee environment\n  - `org_id` (`string`): The Apigee Organization name associated with the Apigee environment\n  - `sig_alg` (`string`): Signature algorithm to generate private key. Valid values are SHA512withRSA, SHA384withRSA, and SHA256withRSA\n  - `subject` (`list[obj]`): Subject details. When `null`, the `subject` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_self_signed_cert.subject.new](#fn-subjectnew) constructor.\n  - `subject_alternative_dns_names` (`list[obj]`): List of alternative host names. Maximum length is 255 characters for each value. When `null`, the `subject_alternative_dns_names` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_self_signed_cert.subject_alternative_dns_names.new](#fn-subject_alternative_dns_namesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_keystores_aliases_self_signed_cert.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_keystores_aliases_self_signed_cert` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    alias,
    environment,
    keystore,
    org_id,
    sig_alg,
    cert_validity_in_days=null,
    key_size=null,
    subject=null,
    subject_alternative_dns_names=null,
    timeouts=null
  ):: std.prune(a={
    alias: alias,
    cert_validity_in_days: cert_validity_in_days,
    environment: environment,
    key_size: key_size,
    keystore: keystore,
    org_id: org_id,
    sig_alg: sig_alg,
    subject: subject,
    subject_alternative_dns_names: subject_alternative_dns_names,
    timeouts: timeouts,
  }),
  subject:: {
    '#new':: d.fn(help='\n`google.apigee_keystores_aliases_self_signed_cert.subject.new` constructs a new object with attributes and blocks configured for the `subject`\nTerraform sub block.\n\n\n\n**Args**:\n  - `common_name` (`string`): Common name of the organization. Maximum length is 64 characters. When `null`, the `common_name` field will be omitted from the resulting object.\n  - `country_code` (`string`): Two-letter country code. Example, IN for India, US for United States of America. When `null`, the `country_code` field will be omitted from the resulting object.\n  - `email` (`string`): Email address. Max 255 characters. When `null`, the `email` field will be omitted from the resulting object.\n  - `locality` (`string`): City or town name. Maximum length is 128 characters. When `null`, the `locality` field will be omitted from the resulting object.\n  - `org` (`string`): Organization name. Maximum length is 64 characters. When `null`, the `org` field will be omitted from the resulting object.\n  - `org_unit` (`string`): Organization team name. Maximum length is 64 characters. When `null`, the `org_unit` field will be omitted from the resulting object.\n  - `state` (`string`): State or district name. Maximum length is 128 characters. When `null`, the `state` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `subject` sub block.\n', args=[]),
    new(
      common_name=null,
      country_code=null,
      email=null,
      locality=null,
      org=null,
      org_unit=null,
      state=null
    ):: std.prune(a={
      common_name: common_name,
      country_code: country_code,
      email: email,
      locality: locality,
      org: org,
      org_unit: org_unit,
      state: state,
    }),
  },
  subject_alternative_dns_names:: {
    '#new':: d.fn(help='\n`google.apigee_keystores_aliases_self_signed_cert.subject_alternative_dns_names.new` constructs a new object with attributes and blocks configured for the `subject_alternative_dns_names`\nTerraform sub block.\n\n\n\n**Args**:\n  - `subject_alternative_name` (`string`): Subject Alternative Name When `null`, the `subject_alternative_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `subject_alternative_dns_names` sub block.\n', args=[]),
    new(
      subject_alternative_name=null
    ):: std.prune(a={
      subject_alternative_name: subject_alternative_name,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_keystores_aliases_self_signed_cert.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_apigee_keystores_aliases_self_signed_cert+: {
        [resourceLabel]+: {
          alias: value,
        },
      },
    },
  },
  '#withCertValidityInDays':: d.fn(help='`google.number.withCertValidityInDays` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the cert_validity_in_days field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `cert_validity_in_days` field.\n', args=[]),
  withCertValidityInDays(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_self_signed_cert+: {
        [resourceLabel]+: {
          cert_validity_in_days: value,
        },
      },
    },
  },
  '#withEnvironment':: d.fn(help='`google.string.withEnvironment` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the environment field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `environment` field.\n', args=[]),
  withEnvironment(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_self_signed_cert+: {
        [resourceLabel]+: {
          environment: value,
        },
      },
    },
  },
  '#withKeySize':: d.fn(help='`google.string.withKeySize` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the key_size field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `key_size` field.\n', args=[]),
  withKeySize(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_self_signed_cert+: {
        [resourceLabel]+: {
          key_size: value,
        },
      },
    },
  },
  '#withKeystore':: d.fn(help='`google.string.withKeystore` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the keystore field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `keystore` field.\n', args=[]),
  withKeystore(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_self_signed_cert+: {
        [resourceLabel]+: {
          keystore: value,
        },
      },
    },
  },
  '#withOrgId':: d.fn(help='`google.string.withOrgId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the org_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `org_id` field.\n', args=[]),
  withOrgId(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_self_signed_cert+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  '#withSigAlg':: d.fn(help='`google.string.withSigAlg` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the sig_alg field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `sig_alg` field.\n', args=[]),
  withSigAlg(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_self_signed_cert+: {
        [resourceLabel]+: {
          sig_alg: value,
        },
      },
    },
  },
  '#withSubject':: d.fn(help='`google.list[obj].withSubject` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the subject field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSubjectMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `subject` field.\n', args=[]),
  withSubject(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_self_signed_cert+: {
        [resourceLabel]+: {
          subject: value,
        },
      },
    },
  },
  '#withSubjectAlternativeDnsNames':: d.fn(help='`google.list[obj].withSubjectAlternativeDnsNames` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the subject_alternative_dns_names field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSubjectAlternativeDnsNamesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `subject_alternative_dns_names` field.\n', args=[]),
  withSubjectAlternativeDnsNames(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_self_signed_cert+: {
        [resourceLabel]+: {
          subject_alternative_dns_names: value,
        },
      },
    },
  },
  '#withSubjectAlternativeDnsNamesMixin':: d.fn(help='`google.list[obj].withSubjectAlternativeDnsNamesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the subject_alternative_dns_names field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSubjectAlternativeDnsNames](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `subject_alternative_dns_names` field.\n', args=[]),
  withSubjectAlternativeDnsNamesMixin(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_self_signed_cert+: {
        [resourceLabel]+: {
          subject_alternative_dns_names+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSubjectMixin':: d.fn(help='`google.list[obj].withSubjectMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the subject field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSubject](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `subject` field.\n', args=[]),
  withSubjectMixin(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_self_signed_cert+: {
        [resourceLabel]+: {
          subject+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_self_signed_cert+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_apigee_keystores_aliases_self_signed_cert+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
