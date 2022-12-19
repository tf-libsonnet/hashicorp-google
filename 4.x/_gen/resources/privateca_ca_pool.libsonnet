local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='privateca_ca_pool', url='', help='`privateca_ca_pool` represents the `google_privateca_ca_pool` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  issuance_policy:: {
    allowed_issuance_modes:: {
      '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.allowed_issuance_modes.new` constructs a new object with attributes and blocks configured for the `allowed_issuance_modes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_config_based_issuance` (`bool`): When true, allows callers to create Certificates by specifying a CertificateConfig.\n  - `allow_csr_based_issuance` (`bool`): When true, allows callers to create Certificates by specifying a CSR.\n\n**Returns**:\n  - An attribute object that represents the `allowed_issuance_modes` sub block.\n', args=[]),
      new(
        allow_config_based_issuance,
        allow_csr_based_issuance
      ):: std.prune(a={
        allow_config_based_issuance: allow_config_based_issuance,
        allow_csr_based_issuance: allow_csr_based_issuance,
      }),
    },
    allowed_key_types:: {
      elliptic_curve:: {
        '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.allowed_key_types.elliptic_curve.new` constructs a new object with attributes and blocks configured for the `elliptic_curve`\nTerraform sub block.\n\n\n\n**Args**:\n  - `signature_algorithm` (`string`): The algorithm used. Possible values: [&#34;ECDSA_P256&#34;, &#34;ECDSA_P384&#34;, &#34;EDDSA_25519&#34;]\n\n**Returns**:\n  - An attribute object that represents the `elliptic_curve` sub block.\n', args=[]),
        new(
          signature_algorithm
        ):: std.prune(a={
          signature_algorithm: signature_algorithm,
        }),
      },
      '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.allowed_key_types.new` constructs a new object with attributes and blocks configured for the `allowed_key_types`\nTerraform sub block.\n\n\n\n**Args**:\n  - `elliptic_curve` (`list[obj]`): Represents an allowed Elliptic Curve key type. When `null`, the `elliptic_curve` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.allowed_key_types.elliptic_curve.new](#fn-privateca_ca_poolissuance_policyelliptic_curvenew) constructor.\n  - `rsa` (`list[obj]`): Describes an RSA key that may be used in a Certificate issued from a CaPool. When `null`, the `rsa` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.allowed_key_types.rsa.new](#fn-privateca_ca_poolissuance_policyrsanew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `allowed_key_types` sub block.\n', args=[]),
      new(
        elliptic_curve=null,
        rsa=null
      ):: std.prune(a={
        elliptic_curve: elliptic_curve,
        rsa: rsa,
      }),
      rsa:: {
        '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.allowed_key_types.rsa.new` constructs a new object with attributes and blocks configured for the `rsa`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_modulus_size` (`string`): The maximum allowed RSA modulus size, in bits. If this is not set, or if set to zero, the\nservice will not enforce an explicit upper bound on RSA modulus sizes. When `null`, the `max_modulus_size` field will be omitted from the resulting object.\n  - `min_modulus_size` (`string`): The minimum allowed RSA modulus size, in bits. If this is not set, or if set to zero, the\nservice-level min RSA modulus size will continue to apply. When `null`, the `min_modulus_size` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `rsa` sub block.\n', args=[]),
        new(
          max_modulus_size=null,
          min_modulus_size=null
        ):: std.prune(a={
          max_modulus_size: max_modulus_size,
          min_modulus_size: min_modulus_size,
        }),
      },
    },
    baseline_values:: {
      additional_extensions:: {
        '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.baseline_values.additional_extensions.new` constructs a new object with attributes and blocks configured for the `additional_extensions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `critical` (`bool`): Indicates whether or not this extension is critical (i.e., if the client does not know how to\nhandle this extension, the client should consider this to be an error).\n  - `value` (`string`): The value of this X.509 extension. A base64-encoded string.\n  - `object_id` (`list[obj]`): Describes values that are relevant in a CA certificate. When `null`, the `object_id` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.additional_extensions.object_id.new](#fn-privateca_ca_poolissuance_policybaseline_valuesobject_idnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `additional_extensions` sub block.\n', args=[]),
        new(
          critical,
          value,
          object_id=null
        ):: std.prune(a={
          critical: critical,
          object_id: object_id,
          value: value,
        }),
        object_id:: {
          '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.baseline_values.additional_extensions.object_id.new` constructs a new object with attributes and blocks configured for the `object_id`\nTerraform sub block.\n\n\n\n**Args**:\n  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.\n\n**Returns**:\n  - An attribute object that represents the `object_id` sub block.\n', args=[]),
          new(
            object_id_path
          ):: std.prune(a={
            object_id_path: object_id_path,
          }),
        },
      },
      ca_options:: {
        '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.baseline_values.ca_options.new` constructs a new object with attributes and blocks configured for the `ca_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `is_ca` (`bool`): When true, the &#34;CA&#34; in Basic Constraints extension will be set to true. When `null`, the `is_ca` field will be omitted from the resulting object.\n  - `max_issuer_path_length` (`number`): Refers to the &#34;path length constraint&#34; in Basic Constraints extension. For a CA certificate, this value describes the depth of\nsubordinate CA certificates that are allowed. If this value is less than 0, the request will fail. When `null`, the `max_issuer_path_length` field will be omitted from the resulting object.\n  - `non_ca` (`bool`): When true, the &#34;CA&#34; in Basic Constraints extension will be set to false. \nIf both &#39;is_ca&#39; and &#39;non_ca&#39; are unset, the extension will be omitted from the CA certificate. When `null`, the `non_ca` field will be omitted from the resulting object.\n  - `zero_max_issuer_path_length` (`bool`): When true, the &#34;path length constraint&#34; in Basic Constraints extension will be set to 0.\nif both &#39;max_issuer_path_length&#39; and &#39;zero_max_issuer_path_length&#39; are unset,\nthe max path length will be omitted from the CA certificate. When `null`, the `zero_max_issuer_path_length` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ca_options` sub block.\n', args=[]),
        new(
          is_ca=null,
          max_issuer_path_length=null,
          non_ca=null,
          zero_max_issuer_path_length=null
        ):: std.prune(a={
          is_ca: is_ca,
          max_issuer_path_length: max_issuer_path_length,
          non_ca: non_ca,
          zero_max_issuer_path_length: zero_max_issuer_path_length,
        }),
      },
      key_usage:: {
        base_key_usage:: {
          '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.base_key_usage.new` constructs a new object with attributes and blocks configured for the `base_key_usage`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cert_sign` (`bool`): The key may be used to sign certificates. When `null`, the `cert_sign` field will be omitted from the resulting object.\n  - `content_commitment` (`bool`): The key may be used for cryptographic commitments. Note that this may also be referred to as &#34;non-repudiation&#34;. When `null`, the `content_commitment` field will be omitted from the resulting object.\n  - `crl_sign` (`bool`): The key may be used sign certificate revocation lists. When `null`, the `crl_sign` field will be omitted from the resulting object.\n  - `data_encipherment` (`bool`): The key may be used to encipher data. When `null`, the `data_encipherment` field will be omitted from the resulting object.\n  - `decipher_only` (`bool`): The key may be used to decipher only. When `null`, the `decipher_only` field will be omitted from the resulting object.\n  - `digital_signature` (`bool`): The key may be used for digital signatures. When `null`, the `digital_signature` field will be omitted from the resulting object.\n  - `encipher_only` (`bool`): The key may be used to encipher only. When `null`, the `encipher_only` field will be omitted from the resulting object.\n  - `key_agreement` (`bool`): The key may be used in a key agreement protocol. When `null`, the `key_agreement` field will be omitted from the resulting object.\n  - `key_encipherment` (`bool`): The key may be used to encipher other keys. When `null`, the `key_encipherment` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `base_key_usage` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.extended_key_usage.new` constructs a new object with attributes and blocks configured for the `extended_key_usage`\nTerraform sub block.\n\n\n\n**Args**:\n  - `client_auth` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as &#34;TLS WWW client authentication&#34;, though regularly used for non-WWW TLS. When `null`, the `client_auth` field will be omitted from the resulting object.\n  - `code_signing` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as &#34;Signing of downloadable executable code client authentication&#34;. When `null`, the `code_signing` field will be omitted from the resulting object.\n  - `email_protection` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as &#34;Email protection&#34;. When `null`, the `email_protection` field will be omitted from the resulting object.\n  - `ocsp_signing` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as &#34;Signing OCSP responses&#34;. When `null`, the `ocsp_signing` field will be omitted from the resulting object.\n  - `server_auth` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as &#34;TLS WWW server authentication&#34;, though regularly used for non-WWW TLS. When `null`, the `server_auth` field will be omitted from the resulting object.\n  - `time_stamping` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as &#34;Binding the hash of an object to a time&#34;. When `null`, the `time_stamping` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `extended_key_usage` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.new` constructs a new object with attributes and blocks configured for the `key_usage`\nTerraform sub block.\n\n\n\n**Args**:\n  - `base_key_usage` (`list[obj]`): Describes high-level ways in which a key may be used. When `null`, the `base_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.base_key_usage.new](#fn-privateca_ca_poolissuance_policybaseline_valuesbase_key_usagenew) constructor.\n  - `extended_key_usage` (`list[obj]`): Describes high-level ways in which a key may be used. When `null`, the `extended_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.extended_key_usage.new](#fn-privateca_ca_poolissuance_policybaseline_valuesextended_key_usagenew) constructor.\n  - `unknown_extended_key_usages` (`list[obj]`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages. When `null`, the `unknown_extended_key_usages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.unknown_extended_key_usages.new](#fn-privateca_ca_poolissuance_policybaseline_valuesunknown_extended_key_usagesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `key_usage` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.unknown_extended_key_usages.new` constructs a new object with attributes and blocks configured for the `unknown_extended_key_usages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.\n\n**Returns**:\n  - An attribute object that represents the `unknown_extended_key_usages` sub block.\n', args=[]),
          new(
            object_id_path
          ):: std.prune(a={
            object_id_path: object_id_path,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.baseline_values.new` constructs a new object with attributes and blocks configured for the `baseline_values`\nTerraform sub block.\n\n\n\n**Args**:\n  - `aia_ocsp_servers` (`list`): Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the\n&#34;Authority Information Access&#34; extension in the certificate. When `null`, the `aia_ocsp_servers` field will be omitted from the resulting object.\n  - `additional_extensions` (`list[obj]`): Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs. When `null`, the `additional_extensions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.additional_extensions.new](#fn-privateca_ca_poolissuance_policyadditional_extensionsnew) constructor.\n  - `ca_options` (`list[obj]`): Describes values that are relevant in a CA certificate. When `null`, the `ca_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.ca_options.new](#fn-privateca_ca_poolissuance_policyca_optionsnew) constructor.\n  - `key_usage` (`list[obj]`): Indicates the intended use for keys that correspond to a certificate. When `null`, the `key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.key_usage.new](#fn-privateca_ca_poolissuance_policykey_usagenew) constructor.\n  - `policy_ids` (`list[obj]`): Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4. When `null`, the `policy_ids` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.policy_ids.new](#fn-privateca_ca_poolissuance_policypolicy_idsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `baseline_values` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.baseline_values.policy_ids.new` constructs a new object with attributes and blocks configured for the `policy_ids`\nTerraform sub block.\n\n\n\n**Args**:\n  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.\n\n**Returns**:\n  - An attribute object that represents the `policy_ids` sub block.\n', args=[]),
        new(
          object_id_path
        ):: std.prune(a={
          object_id_path: object_id_path,
        }),
      },
    },
    identity_constraints:: {
      cel_expression:: {
        '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.identity_constraints.cel_expression.new` constructs a new object with attributes and blocks configured for the `cel_expression`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.\n  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.\n  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cel_expression` sub block.\n', args=[]),
        new(
          expression,
          description=null,
          location=null,
          title=null
        ):: std.prune(a={
          description: description,
          expression: expression,
          location: location,
          title: title,
        }),
      },
      '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.identity_constraints.new` constructs a new object with attributes and blocks configured for the `identity_constraints`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_subject_alt_names_passthrough` (`bool`): If this is set, the SubjectAltNames extension may be copied from a certificate request into the signed certificate.\nOtherwise, the requested SubjectAltNames will be discarded.\n  - `allow_subject_passthrough` (`bool`): If this is set, the Subject field may be copied from a certificate request into the signed certificate.\nOtherwise, the requested Subject will be discarded.\n  - `cel_expression` (`list[obj]`): A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a\ncertificate is signed. To see the full allowed syntax and some examples,\nsee https://cloud.google.com/certificate-authority-service/docs/cel-guide When `null`, the `cel_expression` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.identity_constraints.cel_expression.new](#fn-privateca_ca_poolissuance_policycel_expressionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `identity_constraints` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.privateca_ca_pool.issuance_policy.new` constructs a new object with attributes and blocks configured for the `issuance_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `maximum_lifetime` (`string`): The maximum lifetime allowed for issued Certificates. Note that if the issuing CertificateAuthority\nexpires before a Certificate&#39;s requested maximumLifetime, the effective lifetime will be explicitly truncated to match it. When `null`, the `maximum_lifetime` field will be omitted from the resulting object.\n  - `allowed_issuance_modes` (`list[obj]`): IssuanceModes specifies the allowed ways in which Certificates may be requested from this CaPool. When `null`, the `allowed_issuance_modes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.allowed_issuance_modes.new](#fn-privateca_ca_poolallowed_issuance_modesnew) constructor.\n  - `allowed_key_types` (`list[obj]`): If any AllowedKeyType is specified, then the certificate request&#39;s public key must match one of the key types listed here.\nOtherwise, any key may be used. When `null`, the `allowed_key_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.allowed_key_types.new](#fn-privateca_ca_poolallowed_key_typesnew) constructor.\n  - `baseline_values` (`list[obj]`): A set of X.509 values that will be applied to all certificates issued through this CaPool. If a certificate request\nincludes conflicting values for the same properties, they will be overwritten by the values defined here. If a certificate\nrequest uses a CertificateTemplate that defines conflicting predefinedValues for the same properties, the certificate\nissuance request will fail. When `null`, the `baseline_values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.baseline_values.new](#fn-privateca_ca_poolbaseline_valuesnew) constructor.\n  - `identity_constraints` (`list[obj]`): Describes constraints on identities that may appear in Certificates issued through this CaPool.\nIf this is omitted, then this CaPool will not add restrictions on a certificate&#39;s identity. When `null`, the `identity_constraints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.identity_constraints.new](#fn-privateca_ca_poolidentity_constraintsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `issuance_policy` sub block.\n', args=[]),
    new(
      allowed_issuance_modes=null,
      allowed_key_types=null,
      baseline_values=null,
      identity_constraints=null,
      maximum_lifetime=null
    ):: std.prune(a={
      allowed_issuance_modes: allowed_issuance_modes,
      allowed_key_types: allowed_key_types,
      baseline_values: baseline_values,
      identity_constraints: identity_constraints,
      maximum_lifetime: maximum_lifetime,
    }),
  },
  '#new':: d.fn(help="\n`google.privateca_ca_pool.new` injects a new `google_privateca_ca_pool` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.privateca_ca_pool.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.privateca_ca_pool` using the reference:\n\n    $._ref.google_privateca_ca_pool.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_privateca_ca_pool.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `labels` (`obj`): Labels with user-defined metadata.\n\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs. Example: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;:\n\u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the CaPool. A full list of valid locations can be found by\nrunning \u0026#39;gcloud privateca locations list\u0026#39;.\n  - `name` (`string`): The name for this CaPool.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `tier` (`string`): The Tier of this CaPool. Possible values: [\u0026#34;ENTERPRISE\u0026#34;, \u0026#34;DEVOPS\u0026#34;]\n  - `issuance_policy` (`list[obj]`): The IssuancePolicy to control how Certificates will be issued from this CaPool. When `null`, the `issuance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.new](#fn-issuance_policynew) constructor.\n  - `publishing_options` (`list[obj]`): The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool. When `null`, the `publishing_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.publishing_options.new](#fn-publishing_optionsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    tier,
    issuance_policy=null,
    labels=null,
    project=null,
    publishing_options=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_privateca_ca_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      issuance_policy=issuance_policy,
      labels=labels,
      location=location,
      name=name,
      project=project,
      publishing_options=publishing_options,
      tier=tier,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.privateca_ca_pool.newAttrs` constructs a new object with attributes and blocks configured for the `privateca_ca_pool`\nTerraform resource.\n\nUnlike [google.privateca_ca_pool.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `labels` (`obj`): Labels with user-defined metadata.\n\nAn object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;:\n&#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the CaPool. A full list of valid locations can be found by\nrunning &#39;gcloud privateca locations list&#39;.\n  - `name` (`string`): The name for this CaPool.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `tier` (`string`): The Tier of this CaPool. Possible values: [&#34;ENTERPRISE&#34;, &#34;DEVOPS&#34;]\n  - `issuance_policy` (`list[obj]`): The IssuancePolicy to control how Certificates will be issued from this CaPool. When `null`, the `issuance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.issuance_policy.new](#fn-issuance_policynew) constructor.\n  - `publishing_options` (`list[obj]`): The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool. When `null`, the `publishing_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.publishing_options.new](#fn-publishing_optionsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_ca_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `privateca_ca_pool` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    tier,
    issuance_policy=null,
    labels=null,
    project=null,
    publishing_options=null,
    timeouts=null
  ):: std.prune(a={
    issuance_policy: issuance_policy,
    labels: labels,
    location: location,
    name: name,
    project: project,
    publishing_options: publishing_options,
    tier: tier,
    timeouts: timeouts,
  }),
  publishing_options:: {
    '#new':: d.fn(help='\n`google.privateca_ca_pool.publishing_options.new` constructs a new object with attributes and blocks configured for the `publishing_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `publish_ca_cert` (`bool`): When true, publishes each CertificateAuthority&#39;s CA certificate and includes its URL in the &#34;Authority Information Access&#34;\nX.509 extension in all issued Certificates. If this is false, the CA certificate will not be published and the corresponding\nX.509 extension will not be written in issued certificates.\n  - `publish_crl` (`bool`): When true, publishes each CertificateAuthority&#39;s CRL and includes its URL in the &#34;CRL Distribution Points&#34; X.509 extension\nin all issued Certificates. If this is false, CRLs will not be published and the corresponding X.509 extension will not\nbe written in issued certificates. CRLs will expire 7 days from their creation. However, we will rebuild daily. CRLs are\nalso rebuilt shortly after a certificate is revoked.\n\n**Returns**:\n  - An attribute object that represents the `publishing_options` sub block.\n', args=[]),
    new(
      publish_ca_cert,
      publish_crl
    ):: std.prune(a={
      publish_ca_cert: publish_ca_cert,
      publish_crl: publish_crl,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.privateca_ca_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withIssuancePolicy':: d.fn(help='`google.list[obj].withIssuancePolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the issuance_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withIssuancePolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `issuance_policy` field.\n', args=[]),
  withIssuancePolicy(resourceLabel, value): {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          issuance_policy: value,
        },
      },
    },
  },
  '#withIssuancePolicyMixin':: d.fn(help='`google.list[obj].withIssuancePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the issuance_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withIssuancePolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `issuance_policy` field.\n', args=[]),
  withIssuancePolicyMixin(resourceLabel, value): {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          issuance_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPublishingOptions':: d.fn(help='`google.list[obj].withPublishingOptions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the publishing_options field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPublishingOptionsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `publishing_options` field.\n', args=[]),
  withPublishingOptions(resourceLabel, value): {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          publishing_options: value,
        },
      },
    },
  },
  '#withPublishingOptionsMixin':: d.fn(help='`google.list[obj].withPublishingOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the publishing_options field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPublishingOptions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `publishing_options` field.\n', args=[]),
  withPublishingOptionsMixin(resourceLabel, value): {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          publishing_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTier':: d.fn(help='`google.string.withTier` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the tier field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `tier` field.\n', args=[]),
  withTier(resourceLabel, value): {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
