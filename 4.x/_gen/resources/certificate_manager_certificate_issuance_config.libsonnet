local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='certificate_manager_certificate_issuance_config', url='', help='`certificate_manager_certificate_issuance_config` represents the `google_certificate_manager_certificate_issuance_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  certificate_authority_config:: {
    certificate_authority_service_config:: {
      '#new':: d.fn(help='\n`google.certificate_manager_certificate_issuance_config.certificate_authority_config.certificate_authority_service_config.new` constructs a new object with attributes and blocks configured for the `certificate_authority_service_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ca_pool` (`string`): A CA pool resource used to issue a certificate.\nThe CA pool string has a relative resource path following the form\n&#34;projects/{project}/locations/{location}/caPools/{caPool}&#34;.\n\n**Returns**:\n  - An attribute object that represents the `certificate_authority_service_config` sub block.\n', args=[]),
      new(
        ca_pool
      ):: std.prune(a={
        ca_pool: ca_pool,
      }),
    },
    '#new':: d.fn(help='\n`google.certificate_manager_certificate_issuance_config.certificate_authority_config.new` constructs a new object with attributes and blocks configured for the `certificate_authority_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `certificate_authority_service_config` (`list[obj]`): Defines a CertificateAuthorityServiceConfig. When `null`, the `certificate_authority_service_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_issuance_config.certificate_authority_config.certificate_authority_service_config.new](#fn-certificate_authority_configcertificate_authority_service_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `certificate_authority_config` sub block.\n', args=[]),
    new(
      certificate_authority_service_config=null
    ):: std.prune(a={
      certificate_authority_service_config: certificate_authority_service_config,
    }),
  },
  '#new':: d.fn(help="\n`google.certificate_manager_certificate_issuance_config.new` injects a new `google_certificate_manager_certificate_issuance_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.certificate_manager_certificate_issuance_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.certificate_manager_certificate_issuance_config` using the reference:\n\n    $._ref.google_certificate_manager_certificate_issuance_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_certificate_manager_certificate_issuance_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): One or more paragraphs of text description of a CertificateIssuanceConfig. When `null`, the `description` field will be omitted from the resulting object.\n  - `key_algorithm` (`string`): Key algorithm to use when generating the private key. Possible values: [\u0026#34;RSA_2048\u0026#34;, \u0026#34;ECDSA_P256\u0026#34;]\n  - `labels` (`obj`): \u0026#39;Set of label tags associated with the CertificateIssuanceConfig resource.\n An object containing a list of \u0026#34;key\u0026#34;: value pairs. Example: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `lifetime` (`string`): Lifetime of issued certificates. A duration in seconds with up to nine fractional digits, ending with \u0026#39;s\u0026#39;.\nExample: \u0026#34;1814400s\u0026#34;. Valid values are from 21 days (1814400s) to 30 days (2592000s)\n  - `location` (`string`): The Certificate Manager location. If not specified, \u0026#34;global\u0026#34; is used. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): A user-defined name of the certificate issuance config.\nCertificateIssuanceConfig names must be unique globally.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `rotation_window_percentage` (`number`): It specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate.\nMust be a number between 1-99, inclusive.\nYou must set the rotation window percentage in relation to the certificate lifetime so that certificate renewal occurs at least 7 days after\nthe certificate has been issued and at least 7 days before it expires.\n  - `certificate_authority_config` (`list[obj]`): The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc. When `null`, the `certificate_authority_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_issuance_config.certificate_authority_config.new](#fn-certificate_authority_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_issuance_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    key_algorithm,
    lifetime,
    name,
    rotation_window_percentage,
    certificate_authority_config=null,
    description=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_certificate_manager_certificate_issuance_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      certificate_authority_config=certificate_authority_config,
      description=description,
      key_algorithm=key_algorithm,
      labels=labels,
      lifetime=lifetime,
      location=location,
      name=name,
      project=project,
      rotation_window_percentage=rotation_window_percentage,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.certificate_manager_certificate_issuance_config.newAttrs` constructs a new object with attributes and blocks configured for the `certificate_manager_certificate_issuance_config`\nTerraform resource.\n\nUnlike [google.certificate_manager_certificate_issuance_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): One or more paragraphs of text description of a CertificateIssuanceConfig. When `null`, the `description` field will be omitted from the resulting object.\n  - `key_algorithm` (`string`): Key algorithm to use when generating the private key. Possible values: [&#34;RSA_2048&#34;, &#34;ECDSA_P256&#34;]\n  - `labels` (`obj`): &#39;Set of label tags associated with the CertificateIssuanceConfig resource.\n An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;count&#34;: &#34;3&#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `lifetime` (`string`): Lifetime of issued certificates. A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;.\nExample: &#34;1814400s&#34;. Valid values are from 21 days (1814400s) to 30 days (2592000s)\n  - `location` (`string`): The Certificate Manager location. If not specified, &#34;global&#34; is used. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): A user-defined name of the certificate issuance config.\nCertificateIssuanceConfig names must be unique globally.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `rotation_window_percentage` (`number`): It specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate.\nMust be a number between 1-99, inclusive.\nYou must set the rotation window percentage in relation to the certificate lifetime so that certificate renewal occurs at least 7 days after\nthe certificate has been issued and at least 7 days before it expires.\n  - `certificate_authority_config` (`list[obj]`): The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc. When `null`, the `certificate_authority_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_issuance_config.certificate_authority_config.new](#fn-certificate_authority_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_issuance_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `certificate_manager_certificate_issuance_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    key_algorithm,
    lifetime,
    name,
    rotation_window_percentage,
    certificate_authority_config=null,
    description=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    certificate_authority_config: certificate_authority_config,
    description: description,
    key_algorithm: key_algorithm,
    labels: labels,
    lifetime: lifetime,
    location: location,
    name: name,
    project: project,
    rotation_window_percentage: rotation_window_percentage,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.certificate_manager_certificate_issuance_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withCertificateAuthorityConfig':: d.fn(help='`google.list[obj].withCertificateAuthorityConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the certificate_authority_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCertificateAuthorityConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `certificate_authority_config` field.\n', args=[]),
  withCertificateAuthorityConfig(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate_issuance_config+: {
        [resourceLabel]+: {
          certificate_authority_config: value,
        },
      },
    },
  },
  '#withCertificateAuthorityConfigMixin':: d.fn(help='`google.list[obj].withCertificateAuthorityConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the certificate_authority_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCertificateAuthorityConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `certificate_authority_config` field.\n', args=[]),
  withCertificateAuthorityConfigMixin(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate_issuance_config+: {
        [resourceLabel]+: {
          certificate_authority_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate_issuance_config+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withKeyAlgorithm':: d.fn(help='`google.string.withKeyAlgorithm` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the key_algorithm field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `key_algorithm` field.\n', args=[]),
  withKeyAlgorithm(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate_issuance_config+: {
        [resourceLabel]+: {
          key_algorithm: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate_issuance_config+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLifetime':: d.fn(help='`google.string.withLifetime` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the lifetime field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `lifetime` field.\n', args=[]),
  withLifetime(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate_issuance_config+: {
        [resourceLabel]+: {
          lifetime: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate_issuance_config+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate_issuance_config+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate_issuance_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRotationWindowPercentage':: d.fn(help='`google.number.withRotationWindowPercentage` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the rotation_window_percentage field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `rotation_window_percentage` field.\n', args=[]),
  withRotationWindowPercentage(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate_issuance_config+: {
        [resourceLabel]+: {
          rotation_window_percentage: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate_issuance_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate_issuance_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
