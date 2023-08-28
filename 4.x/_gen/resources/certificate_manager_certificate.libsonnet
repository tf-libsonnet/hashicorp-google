local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='certificate_manager_certificate', url='', help='`certificate_manager_certificate` represents the `google_certificate_manager_certificate` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  managed:: {
    '#new':: d.fn(help='\n`google.certificate_manager_certificate.managed.new` constructs a new object with attributes and blocks configured for the `managed`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dns_authorizations` (`list`): Authorizations that will be used for performing domain authorization. Either issuanceConfig or dnsAuthorizations should be specificed, but not both. When `null`, the `dns_authorizations` field will be omitted from the resulting object.\n  - `domains` (`list`): The domains for which a managed SSL certificate will be generated.\nWildcard domains are only supported with DNS challenge resolution When `null`, the `domains` field will be omitted from the resulting object.\n  - `issuance_config` (`string`): The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format projects/*/locations/*/certificateIssuanceConfigs/*.\nIf this field is not set, the certificates will instead be publicly signed as documented at https://cloud.google.com/load-balancing/docs/ssl-certificates/google-managed-certs#caa.\nEither issuanceConfig or dnsAuthorizations should be specificed, but not both. When `null`, the `issuance_config` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `managed` sub block.\n', args=[]),
    new(
      dns_authorizations=null,
      domains=null,
      issuance_config=null
    ):: std.prune(a={
      dns_authorizations: dns_authorizations,
      domains: domains,
      issuance_config: issuance_config,
    }),
  },
  '#new':: d.fn(help="\n`google.certificate_manager_certificate.new` injects a new `google_certificate_manager_certificate` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.certificate_manager_certificate.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.certificate_manager_certificate` using the reference:\n\n    $._ref.google_certificate_manager_certificate.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_certificate_manager_certificate.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the Certificate resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The Certificate Manager location. If not specified, \u0026#34;global\u0026#34; is used. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): A user-defined name of the certificate. Certificate names must be unique\nThe name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,\nand all following characters must be a dash, underscore, letter or digit.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `scope` (`string`): The scope of the certificate.\n\nDEFAULT: Certificates with default scope are served from core Google data centers.\nIf unsure, choose this option.\n\nEDGE_CACHE: Certificates with scope EDGE_CACHE are special-purposed certificates,\nserved from non-core Google data centers.\n\nALL_REGIONS: Certificates with ALL_REGIONS scope are served from all GCP regions (You can only use ALL_REGIONS with global certs).\nsee https://cloud.google.com/compute/docs/regions-zones When `null`, the `scope` field will be omitted from the resulting object.\n  - `managed` (`list[obj]`): Configuration and state of a Managed Certificate.\nCertificate Manager provisions and renews Managed Certificates\nautomatically, for as long as it\u0026#39;s authorized to do so. When `null`, the `managed` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate.managed.new](#fn-managednew) constructor.\n  - `self_managed` (`list[obj]`): Certificate data for a SelfManaged Certificate.\nSelfManaged Certificates are uploaded by the user. Updating such\ncertificates before they expire remains the user\u0026#39;s responsibility. When `null`, the `self_managed` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate.self_managed.new](#fn-self_managednew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    description=null,
    labels=null,
    location=null,
    managed=null,
    project=null,
    scope=null,
    self_managed=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_certificate_manager_certificate',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      labels=labels,
      location=location,
      managed=managed,
      name=name,
      project=project,
      scope=scope,
      self_managed=self_managed,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.certificate_manager_certificate.newAttrs` constructs a new object with attributes and blocks configured for the `certificate_manager_certificate`\nTerraform resource.\n\nUnlike [google.certificate_manager_certificate.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the Certificate resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The Certificate Manager location. If not specified, &#34;global&#34; is used. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): A user-defined name of the certificate. Certificate names must be unique\nThe name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,\nand all following characters must be a dash, underscore, letter or digit.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `scope` (`string`): The scope of the certificate.\n\nDEFAULT: Certificates with default scope are served from core Google data centers.\nIf unsure, choose this option.\n\nEDGE_CACHE: Certificates with scope EDGE_CACHE are special-purposed certificates,\nserved from non-core Google data centers.\n\nALL_REGIONS: Certificates with ALL_REGIONS scope are served from all GCP regions (You can only use ALL_REGIONS with global certs).\nsee https://cloud.google.com/compute/docs/regions-zones When `null`, the `scope` field will be omitted from the resulting object.\n  - `managed` (`list[obj]`): Configuration and state of a Managed Certificate.\nCertificate Manager provisions and renews Managed Certificates\nautomatically, for as long as it&#39;s authorized to do so. When `null`, the `managed` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate.managed.new](#fn-managednew) constructor.\n  - `self_managed` (`list[obj]`): Certificate data for a SelfManaged Certificate.\nSelfManaged Certificates are uploaded by the user. Updating such\ncertificates before they expire remains the user&#39;s responsibility. When `null`, the `self_managed` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate.self_managed.new](#fn-self_managednew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `certificate_manager_certificate` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    description=null,
    labels=null,
    location=null,
    managed=null,
    project=null,
    scope=null,
    self_managed=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    labels: labels,
    location: location,
    managed: managed,
    name: name,
    project: project,
    scope: scope,
    self_managed: self_managed,
    timeouts: timeouts,
  }),
  self_managed:: {
    '#new':: d.fn(help='\n`google.certificate_manager_certificate.self_managed.new` constructs a new object with attributes and blocks configured for the `self_managed`\nTerraform sub block.\n\n\n\n**Args**:\n  - `certificate_pem` (`string`): The certificate chain in PEM-encoded form.\n\nLeaf certificate comes first, followed by intermediate ones if any. When `null`, the `certificate_pem` field will be omitted from the resulting object.\n  - `pem_certificate` (`string`): The certificate chain in PEM-encoded form.\n\nLeaf certificate comes first, followed by intermediate ones if any. When `null`, the `pem_certificate` field will be omitted from the resulting object.\n  - `pem_private_key` (`string`): The private key of the leaf certificate in PEM-encoded form. When `null`, the `pem_private_key` field will be omitted from the resulting object.\n  - `private_key_pem` (`string`): The private key of the leaf certificate in PEM-encoded form. When `null`, the `private_key_pem` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `self_managed` sub block.\n', args=[]),
    new(
      certificate_pem=null,
      pem_certificate=null,
      pem_private_key=null,
      private_key_pem=null
    ):: std.prune(a={
      certificate_pem: certificate_pem,
      pem_certificate: pem_certificate,
      pem_private_key: pem_private_key,
      private_key_pem: private_key_pem,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.certificate_manager_certificate.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withManaged':: d.fn(help='`google.list[obj].withManaged` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the managed field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withManagedMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `managed` field.\n', args=[]),
  withManaged(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          managed: value,
        },
      },
    },
  },
  '#withManagedMixin':: d.fn(help='`google.list[obj].withManagedMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the managed field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withManaged](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `managed` field.\n', args=[]),
  withManagedMixin(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          managed+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withScope':: d.fn(help='`google.string.withScope` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the scope field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `scope` field.\n', args=[]),
  withScope(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          scope: value,
        },
      },
    },
  },
  '#withSelfManaged':: d.fn(help='`google.list[obj].withSelfManaged` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the self_managed field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSelfManagedMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `self_managed` field.\n', args=[]),
  withSelfManaged(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          self_managed: value,
        },
      },
    },
  },
  '#withSelfManagedMixin':: d.fn(help='`google.list[obj].withSelfManagedMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the self_managed field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSelfManaged](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `self_managed` field.\n', args=[]),
  withSelfManagedMixin(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          self_managed+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_certificate_manager_certificate+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
