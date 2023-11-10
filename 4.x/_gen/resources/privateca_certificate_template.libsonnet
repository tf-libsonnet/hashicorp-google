local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='privateca_certificate_template', url='', help='`privateca_certificate_template` represents the `google_privateca_certificate_template` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  identity_constraints:: {
    cel_expression:: {
      '#new':: d.fn(help='\n`google.privateca_certificate_template.identity_constraints.cel_expression.new` constructs a new object with attributes and blocks configured for the `cel_expression`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax. When `null`, the `expression` field will be omitted from the resulting object.\n  - `location` (`string`): Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.\n  - `title` (`string`): Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cel_expression` sub block.\n', args=[]),
      new(
        description=null,
        expression=null,
        location=null,
        title=null
      ):: std.prune(a={
        description: description,
        expression: expression,
        location: location,
        title: title,
      }),
    },
    '#new':: d.fn(help='\n`google.privateca_certificate_template.identity_constraints.new` constructs a new object with attributes and blocks configured for the `identity_constraints`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_subject_alt_names_passthrough` (`bool`): Required. If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded.\n  - `allow_subject_passthrough` (`bool`): Required. If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded.\n  - `cel_expression` (`list[obj]`): Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel When `null`, the `cel_expression` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.identity_constraints.cel_expression.new](#fn-identity_constraintscel_expressionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `identity_constraints` sub block.\n', args=[]),
    new(
      allow_subject_alt_names_passthrough,
      allow_subject_passthrough,
      cel_expression=null
    ):: std.prune(a={
      allow_subject_alt_names_passthrough: allow_subject_alt_names_passthrough,
      allow_subject_passthrough: allow_subject_passthrough,
      cel_expression: cel_expression,
    }),
  },
  '#new':: d.fn(help="\n`google.privateca_certificate_template.new` injects a new `google_privateca_certificate_template` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.privateca_certificate_template.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.privateca_certificate_template` using the reference:\n\n    $._ref.google_privateca_certificate_template.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_privateca_certificate_template.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Optional. A human-readable description of scenarios this template is intended for. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. Labels with user-defined metadata.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field `effective_labels` for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `identity_constraints` (`list[obj]`): Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate\u0026#39;s identity. When `null`, the `identity_constraints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.identity_constraints.new](#fn-identity_constraintsnew) constructor.\n  - `passthrough_extensions` (`list[obj]`): Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don\u0026#39;t appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool\u0026#39;s IssuancePolicy defines baseline_values that don\u0026#39;t appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate\u0026#39;s X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate\u0026#39;s predefined_values. When `null`, the `passthrough_extensions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.passthrough_extensions.new](#fn-passthrough_extensionsnew) constructor.\n  - `predefined_values` (`list[obj]`): Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool\u0026#39;s IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail. When `null`, the `predefined_values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.new](#fn-predefined_valuesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    description=null,
    identity_constraints=null,
    labels=null,
    passthrough_extensions=null,
    predefined_values=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_privateca_certificate_template',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      identity_constraints=identity_constraints,
      labels=labels,
      location=location,
      name=name,
      passthrough_extensions=passthrough_extensions,
      predefined_values=predefined_values,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.privateca_certificate_template.newAttrs` constructs a new object with attributes and blocks configured for the `privateca_certificate_template`\nTerraform resource.\n\nUnlike [google.privateca_certificate_template.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Optional. A human-readable description of scenarios this template is intended for. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. Labels with user-defined metadata.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field `effective_labels` for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `identity_constraints` (`list[obj]`): Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate&#39;s identity. When `null`, the `identity_constraints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.identity_constraints.new](#fn-identity_constraintsnew) constructor.\n  - `passthrough_extensions` (`list[obj]`): Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don&#39;t appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool&#39;s IssuancePolicy defines baseline_values that don&#39;t appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate&#39;s X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate&#39;s predefined_values. When `null`, the `passthrough_extensions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.passthrough_extensions.new](#fn-passthrough_extensionsnew) constructor.\n  - `predefined_values` (`list[obj]`): Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool&#39;s IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail. When `null`, the `predefined_values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.new](#fn-predefined_valuesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `privateca_certificate_template` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    description=null,
    identity_constraints=null,
    labels=null,
    passthrough_extensions=null,
    predefined_values=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    identity_constraints: identity_constraints,
    labels: labels,
    location: location,
    name: name,
    passthrough_extensions: passthrough_extensions,
    predefined_values: predefined_values,
    project: project,
    timeouts: timeouts,
  }),
  passthrough_extensions:: {
    additional_extensions:: {
      '#new':: d.fn(help='\n`google.privateca_certificate_template.passthrough_extensions.additional_extensions.new` constructs a new object with attributes and blocks configured for the `additional_extensions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `object_id_path` (`list`): Required. The parts of an OID path. The most significant parts of the path come first.\n\n**Returns**:\n  - An attribute object that represents the `additional_extensions` sub block.\n', args=[]),
      new(
        object_id_path
      ):: std.prune(a={
        object_id_path: object_id_path,
      }),
    },
    '#new':: d.fn(help='\n`google.privateca_certificate_template.passthrough_extensions.new` constructs a new object with attributes and blocks configured for the `passthrough_extensions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `known_extensions` (`list`): Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions. When `null`, the `known_extensions` field will be omitted from the resulting object.\n  - `additional_extensions` (`list[obj]`): Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions. When `null`, the `additional_extensions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.passthrough_extensions.additional_extensions.new](#fn-passthrough_extensionsadditional_extensionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `passthrough_extensions` sub block.\n', args=[]),
    new(
      additional_extensions=null,
      known_extensions=null
    ):: std.prune(a={
      additional_extensions: additional_extensions,
      known_extensions: known_extensions,
    }),
  },
  predefined_values:: {
    additional_extensions:: {
      '#new':: d.fn(help='\n`google.privateca_certificate_template.predefined_values.additional_extensions.new` constructs a new object with attributes and blocks configured for the `additional_extensions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `critical` (`bool`): Optional. Indicates whether or not this extension is critical (i.e., if the client does not know how to handle this extension, the client should consider this to be an error). When `null`, the `critical` field will be omitted from the resulting object.\n  - `value` (`string`): Required. The value of this X.509 extension.\n  - `object_id` (`list[obj]`): Required. The OID for this X.509 extension. When `null`, the `object_id` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.additional_extensions.object_id.new](#fn-predefined_valuespredefined_valuesobject_idnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `additional_extensions` sub block.\n', args=[]),
      new(
        value,
        critical=null,
        object_id=null
      ):: std.prune(a={
        critical: critical,
        object_id: object_id,
        value: value,
      }),
      object_id:: {
        '#new':: d.fn(help='\n`google.privateca_certificate_template.predefined_values.additional_extensions.object_id.new` constructs a new object with attributes and blocks configured for the `object_id`\nTerraform sub block.\n\n\n\n**Args**:\n  - `object_id_path` (`list`): Required. The parts of an OID path. The most significant parts of the path come first.\n\n**Returns**:\n  - An attribute object that represents the `object_id` sub block.\n', args=[]),
        new(
          object_id_path
        ):: std.prune(a={
          object_id_path: object_id_path,
        }),
      },
    },
    ca_options:: {
      '#new':: d.fn(help='\n`google.privateca_certificate_template.predefined_values.ca_options.new` constructs a new object with attributes and blocks configured for the `ca_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `is_ca` (`bool`): Optional. Refers to the &#34;CA&#34; X.509 extension, which is a boolean value. When this value is missing, the extension will be omitted from the CA certificate. When `null`, the `is_ca` field will be omitted from the resulting object.\n  - `max_issuer_path_length` (`number`): Optional. Refers to the path length restriction X.509 extension. For a CA certificate, this value describes the depth of subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. If this value is missing, the max path length will be omitted from the CA certificate. When `null`, the `max_issuer_path_length` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ca_options` sub block.\n', args=[]),
      new(
        is_ca=null,
        max_issuer_path_length=null
      ):: std.prune(a={
        is_ca: is_ca,
        max_issuer_path_length: max_issuer_path_length,
      }),
    },
    key_usage:: {
      base_key_usage:: {
        '#new':: d.fn(help='\n`google.privateca_certificate_template.predefined_values.key_usage.base_key_usage.new` constructs a new object with attributes and blocks configured for the `base_key_usage`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cert_sign` (`bool`): The key may be used to sign certificates. When `null`, the `cert_sign` field will be omitted from the resulting object.\n  - `content_commitment` (`bool`): The key may be used for cryptographic commitments. Note that this may also be referred to as &#34;non-repudiation&#34;. When `null`, the `content_commitment` field will be omitted from the resulting object.\n  - `crl_sign` (`bool`): The key may be used sign certificate revocation lists. When `null`, the `crl_sign` field will be omitted from the resulting object.\n  - `data_encipherment` (`bool`): The key may be used to encipher data. When `null`, the `data_encipherment` field will be omitted from the resulting object.\n  - `decipher_only` (`bool`): The key may be used to decipher only. When `null`, the `decipher_only` field will be omitted from the resulting object.\n  - `digital_signature` (`bool`): The key may be used for digital signatures. When `null`, the `digital_signature` field will be omitted from the resulting object.\n  - `encipher_only` (`bool`): The key may be used to encipher only. When `null`, the `encipher_only` field will be omitted from the resulting object.\n  - `key_agreement` (`bool`): The key may be used in a key agreement protocol. When `null`, the `key_agreement` field will be omitted from the resulting object.\n  - `key_encipherment` (`bool`): The key may be used to encipher other keys. When `null`, the `key_encipherment` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `base_key_usage` sub block.\n', args=[]),
        new(
          cert_sign=null,
          content_commitment=null,
          crl_sign=null,
          data_encipherment=null,
          decipher_only=null,
          digital_signature=null,
          encipher_only=null,
          key_agreement=null,
          key_encipherment=null
        ):: std.prune(a={
          cert_sign: cert_sign,
          content_commitment: content_commitment,
          crl_sign: crl_sign,
          data_encipherment: data_encipherment,
          decipher_only: decipher_only,
          digital_signature: digital_signature,
          encipher_only: encipher_only,
          key_agreement: key_agreement,
          key_encipherment: key_encipherment,
        }),
      },
      extended_key_usage:: {
        '#new':: d.fn(help='\n`google.privateca_certificate_template.predefined_values.key_usage.extended_key_usage.new` constructs a new object with attributes and blocks configured for the `extended_key_usage`\nTerraform sub block.\n\n\n\n**Args**:\n  - `client_auth` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as &#34;TLS WWW client authentication&#34;, though regularly used for non-WWW TLS. When `null`, the `client_auth` field will be omitted from the resulting object.\n  - `code_signing` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as &#34;Signing of downloadable executable code client authentication&#34;. When `null`, the `code_signing` field will be omitted from the resulting object.\n  - `email_protection` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as &#34;Email protection&#34;. When `null`, the `email_protection` field will be omitted from the resulting object.\n  - `ocsp_signing` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as &#34;Signing OCSP responses&#34;. When `null`, the `ocsp_signing` field will be omitted from the resulting object.\n  - `server_auth` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as &#34;TLS WWW server authentication&#34;, though regularly used for non-WWW TLS. When `null`, the `server_auth` field will be omitted from the resulting object.\n  - `time_stamping` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as &#34;Binding the hash of an object to a time&#34;. When `null`, the `time_stamping` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `extended_key_usage` sub block.\n', args=[]),
        new(
          client_auth=null,
          code_signing=null,
          email_protection=null,
          ocsp_signing=null,
          server_auth=null,
          time_stamping=null
        ):: std.prune(a={
          client_auth: client_auth,
          code_signing: code_signing,
          email_protection: email_protection,
          ocsp_signing: ocsp_signing,
          server_auth: server_auth,
          time_stamping: time_stamping,
        }),
      },
      '#new':: d.fn(help='\n`google.privateca_certificate_template.predefined_values.key_usage.new` constructs a new object with attributes and blocks configured for the `key_usage`\nTerraform sub block.\n\n\n\n**Args**:\n  - `base_key_usage` (`list[obj]`): Describes high-level ways in which a key may be used. When `null`, the `base_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.key_usage.base_key_usage.new](#fn-predefined_valuespredefined_valuesbase_key_usagenew) constructor.\n  - `extended_key_usage` (`list[obj]`): Detailed scenarios in which a key may be used. When `null`, the `extended_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.key_usage.extended_key_usage.new](#fn-predefined_valuespredefined_valuesextended_key_usagenew) constructor.\n  - `unknown_extended_key_usages` (`list[obj]`): Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message. When `null`, the `unknown_extended_key_usages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.key_usage.unknown_extended_key_usages.new](#fn-predefined_valuespredefined_valuesunknown_extended_key_usagesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `key_usage` sub block.\n', args=[]),
      new(
        base_key_usage=null,
        extended_key_usage=null,
        unknown_extended_key_usages=null
      ):: std.prune(a={
        base_key_usage: base_key_usage,
        extended_key_usage: extended_key_usage,
        unknown_extended_key_usages: unknown_extended_key_usages,
      }),
      unknown_extended_key_usages:: {
        '#new':: d.fn(help='\n`google.privateca_certificate_template.predefined_values.key_usage.unknown_extended_key_usages.new` constructs a new object with attributes and blocks configured for the `unknown_extended_key_usages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `object_id_path` (`list`): Required. The parts of an OID path. The most significant parts of the path come first.\n\n**Returns**:\n  - An attribute object that represents the `unknown_extended_key_usages` sub block.\n', args=[]),
        new(
          object_id_path
        ):: std.prune(a={
          object_id_path: object_id_path,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.privateca_certificate_template.predefined_values.new` constructs a new object with attributes and blocks configured for the `predefined_values`\nTerraform sub block.\n\n\n\n**Args**:\n  - `aia_ocsp_servers` (`list`): Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the &#34;Authority Information Access&#34; extension in the certificate. When `null`, the `aia_ocsp_servers` field will be omitted from the resulting object.\n  - `additional_extensions` (`list[obj]`): Optional. Describes custom X.509 extensions. When `null`, the `additional_extensions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.additional_extensions.new](#fn-predefined_valuesadditional_extensionsnew) constructor.\n  - `ca_options` (`list[obj]`): Optional. Describes options in this X509Parameters that are relevant in a CA certificate. When `null`, the `ca_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.ca_options.new](#fn-predefined_valuesca_optionsnew) constructor.\n  - `key_usage` (`list[obj]`): Optional. Indicates the intended use for keys that correspond to a certificate. When `null`, the `key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.key_usage.new](#fn-predefined_valueskey_usagenew) constructor.\n  - `policy_ids` (`list[obj]`): Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4. When `null`, the `policy_ids` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_template.predefined_values.policy_ids.new](#fn-predefined_valuespolicy_idsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `predefined_values` sub block.\n', args=[]),
    new(
      additional_extensions=null,
      aia_ocsp_servers=null,
      ca_options=null,
      key_usage=null,
      policy_ids=null
    ):: std.prune(a={
      additional_extensions: additional_extensions,
      aia_ocsp_servers: aia_ocsp_servers,
      ca_options: ca_options,
      key_usage: key_usage,
      policy_ids: policy_ids,
    }),
    policy_ids:: {
      '#new':: d.fn(help='\n`google.privateca_certificate_template.predefined_values.policy_ids.new` constructs a new object with attributes and blocks configured for the `policy_ids`\nTerraform sub block.\n\n\n\n**Args**:\n  - `object_id_path` (`list`): Required. The parts of an OID path. The most significant parts of the path come first.\n\n**Returns**:\n  - An attribute object that represents the `policy_ids` sub block.\n', args=[]),
      new(
        object_id_path
      ):: std.prune(a={
        object_id_path: object_id_path,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.privateca_certificate_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withIdentityConstraints':: d.fn(help='`google.list[obj].withIdentityConstraints` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the identity_constraints field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withIdentityConstraintsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `identity_constraints` field.\n', args=[]),
  withIdentityConstraints(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          identity_constraints: value,
        },
      },
    },
  },
  '#withIdentityConstraintsMixin':: d.fn(help='`google.list[obj].withIdentityConstraintsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the identity_constraints field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withIdentityConstraints](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `identity_constraints` field.\n', args=[]),
  withIdentityConstraintsMixin(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          identity_constraints+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPassthroughExtensions':: d.fn(help='`google.list[obj].withPassthroughExtensions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the passthrough_extensions field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPassthroughExtensionsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `passthrough_extensions` field.\n', args=[]),
  withPassthroughExtensions(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          passthrough_extensions: value,
        },
      },
    },
  },
  '#withPassthroughExtensionsMixin':: d.fn(help='`google.list[obj].withPassthroughExtensionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the passthrough_extensions field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPassthroughExtensions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `passthrough_extensions` field.\n', args=[]),
  withPassthroughExtensionsMixin(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          passthrough_extensions+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPredefinedValues':: d.fn(help='`google.list[obj].withPredefinedValues` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the predefined_values field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPredefinedValuesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `predefined_values` field.\n', args=[]),
  withPredefinedValues(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          predefined_values: value,
        },
      },
    },
  },
  '#withPredefinedValuesMixin':: d.fn(help='`google.list[obj].withPredefinedValuesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the predefined_values field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPredefinedValues](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `predefined_values` field.\n', args=[]),
  withPredefinedValuesMixin(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          predefined_values+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
