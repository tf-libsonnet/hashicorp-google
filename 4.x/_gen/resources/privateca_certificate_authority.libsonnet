local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='privateca_certificate_authority', url='', help='`privateca_certificate_authority` represents the `google_privateca_certificate_authority` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  config:: {
    '#new':: d.fn(help='\n`google.privateca_certificate_authority.config.new` constructs a new object with attributes and blocks configured for the `config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `subject_config` (`list[obj]`): Specifies some of the values in a certificate that are related to the subject. When `null`, the `subject_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.subject_config.new](#fn-configsubject_confignew) constructor.\n  - `x509_config` (`list[obj]`): Describes how some of the technical X.509 fields in a certificate should be populated. When `null`, the `x509_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.new](#fn-configx509_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `config` sub block.\n', args=[]),
    new(
      subject_config=null,
      x509_config=null
    ):: std.prune(a={
      subject_config: subject_config,
      x509_config: x509_config,
    }),
    subject_config:: {
      '#new':: d.fn(help='\n`google.privateca_certificate_authority.config.subject_config.new` constructs a new object with attributes and blocks configured for the `subject_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `subject` (`list[obj]`): Contains distinguished name fields such as the location and organization. When `null`, the `subject` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.subject_config.subject.new](#fn-configconfigsubjectnew) constructor.\n  - `subject_alt_name` (`list[obj]`): The subject alternative name fields. When `null`, the `subject_alt_name` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.subject_config.subject_alt_name.new](#fn-configconfigsubject_alt_namenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `subject_config` sub block.\n', args=[]),
      new(
        subject=null,
        subject_alt_name=null
      ):: std.prune(a={
        subject: subject,
        subject_alt_name: subject_alt_name,
      }),
      subject:: {
        '#new':: d.fn(help='\n`google.privateca_certificate_authority.config.subject_config.subject.new` constructs a new object with attributes and blocks configured for the `subject`\nTerraform sub block.\n\n\n\n**Args**:\n  - `common_name` (`string`): The common name of the distinguished name.\n  - `country_code` (`string`): The country code of the subject. When `null`, the `country_code` field will be omitted from the resulting object.\n  - `locality` (`string`): The locality or city of the subject. When `null`, the `locality` field will be omitted from the resulting object.\n  - `organization` (`string`): The organization of the subject.\n  - `organizational_unit` (`string`): The organizational unit of the subject. When `null`, the `organizational_unit` field will be omitted from the resulting object.\n  - `postal_code` (`string`): The postal code of the subject. When `null`, the `postal_code` field will be omitted from the resulting object.\n  - `province` (`string`): The province, territory, or regional state of the subject. When `null`, the `province` field will be omitted from the resulting object.\n  - `street_address` (`string`): The street address of the subject. When `null`, the `street_address` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `subject` sub block.\n', args=[]),
        new(
          common_name,
          organization,
          country_code=null,
          locality=null,
          organizational_unit=null,
          postal_code=null,
          province=null,
          street_address=null
        ):: std.prune(a={
          common_name: common_name,
          country_code: country_code,
          locality: locality,
          organization: organization,
          organizational_unit: organizational_unit,
          postal_code: postal_code,
          province: province,
          street_address: street_address,
        }),
      },
      subject_alt_name:: {
        '#new':: d.fn(help='\n`google.privateca_certificate_authority.config.subject_config.subject_alt_name.new` constructs a new object with attributes and blocks configured for the `subject_alt_name`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dns_names` (`list`): Contains only valid, fully-qualified host names. When `null`, the `dns_names` field will be omitted from the resulting object.\n  - `email_addresses` (`list`): Contains only valid RFC 2822 E-mail addresses. When `null`, the `email_addresses` field will be omitted from the resulting object.\n  - `ip_addresses` (`list`): Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses. When `null`, the `ip_addresses` field will be omitted from the resulting object.\n  - `uris` (`list`): Contains only valid RFC 3986 URIs. When `null`, the `uris` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `subject_alt_name` sub block.\n', args=[]),
        new(
          dns_names=null,
          email_addresses=null,
          ip_addresses=null,
          uris=null
        ):: std.prune(a={
          dns_names: dns_names,
          email_addresses: email_addresses,
          ip_addresses: ip_addresses,
          uris: uris,
        }),
      },
    },
    x509_config:: {
      additional_extensions:: {
        '#new':: d.fn(help='\n`google.privateca_certificate_authority.config.x509_config.additional_extensions.new` constructs a new object with attributes and blocks configured for the `additional_extensions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `critical` (`bool`): Indicates whether or not this extension is critical (i.e., if the client does not know how to\nhandle this extension, the client should consider this to be an error).\n  - `value` (`string`): The value of this X.509 extension. A base64-encoded string.\n  - `object_id` (`list[obj]`): Describes values that are relevant in a CA certificate. When `null`, the `object_id` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.additional_extensions.object_id.new](#fn-configconfigx509_configobject_idnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `additional_extensions` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google.privateca_certificate_authority.config.x509_config.additional_extensions.object_id.new` constructs a new object with attributes and blocks configured for the `object_id`\nTerraform sub block.\n\n\n\n**Args**:\n  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.\n\n**Returns**:\n  - An attribute object that represents the `object_id` sub block.\n', args=[]),
          new(
            object_id_path
          ):: std.prune(a={
            object_id_path: object_id_path,
          }),
        },
      },
      ca_options:: {
        '#new':: d.fn(help='\n`google.privateca_certificate_authority.config.x509_config.ca_options.new` constructs a new object with attributes and blocks configured for the `ca_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `is_ca` (`bool`): When true, the &#34;CA&#34; in Basic Constraints extension will be set to true.\n  - `max_issuer_path_length` (`number`): Refers to the &#34;path length constraint&#34; in Basic Constraints extension. For a CA certificate, this value describes the depth of\nsubordinate CA certificates that are allowed. If this value is less than 0, the request will fail. Setting the value to 0\nrequires setting &#39;zero_max_issuer_path_length = true&#39;. When `null`, the `max_issuer_path_length` field will be omitted from the resulting object.\n  - `non_ca` (`bool`): When true, the &#34;CA&#34; in Basic Constraints extension will be set to false.\nIf both &#39;is_ca&#39; and &#39;non_ca&#39; are unset, the extension will be omitted from the CA certificate. When `null`, the `non_ca` field will be omitted from the resulting object.\n  - `zero_max_issuer_path_length` (`bool`): When true, the &#34;path length constraint&#34; in Basic Constraints extension will be set to 0.\nIf both &#39;max_issuer_path_length&#39; and &#39;zero_max_issuer_path_length&#39; are unset,\nthe max path length will be omitted from the CA certificate. When `null`, the `zero_max_issuer_path_length` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ca_options` sub block.\n', args=[]),
        new(
          is_ca,
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
          '#new':: d.fn(help='\n`google.privateca_certificate_authority.config.x509_config.key_usage.base_key_usage.new` constructs a new object with attributes and blocks configured for the `base_key_usage`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cert_sign` (`bool`): The key may be used to sign certificates. When `null`, the `cert_sign` field will be omitted from the resulting object.\n  - `content_commitment` (`bool`): The key may be used for cryptographic commitments. Note that this may also be referred to as &#34;non-repudiation&#34;. When `null`, the `content_commitment` field will be omitted from the resulting object.\n  - `crl_sign` (`bool`): The key may be used sign certificate revocation lists. When `null`, the `crl_sign` field will be omitted from the resulting object.\n  - `data_encipherment` (`bool`): The key may be used to encipher data. When `null`, the `data_encipherment` field will be omitted from the resulting object.\n  - `decipher_only` (`bool`): The key may be used to decipher only. When `null`, the `decipher_only` field will be omitted from the resulting object.\n  - `digital_signature` (`bool`): The key may be used for digital signatures. When `null`, the `digital_signature` field will be omitted from the resulting object.\n  - `encipher_only` (`bool`): The key may be used to encipher only. When `null`, the `encipher_only` field will be omitted from the resulting object.\n  - `key_agreement` (`bool`): The key may be used in a key agreement protocol. When `null`, the `key_agreement` field will be omitted from the resulting object.\n  - `key_encipherment` (`bool`): The key may be used to encipher other keys. When `null`, the `key_encipherment` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `base_key_usage` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google.privateca_certificate_authority.config.x509_config.key_usage.extended_key_usage.new` constructs a new object with attributes and blocks configured for the `extended_key_usage`\nTerraform sub block.\n\n\n\n**Args**:\n  - `client_auth` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as &#34;TLS WWW client authentication&#34;, though regularly used for non-WWW TLS. When `null`, the `client_auth` field will be omitted from the resulting object.\n  - `code_signing` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as &#34;Signing of downloadable executable code client authentication&#34;. When `null`, the `code_signing` field will be omitted from the resulting object.\n  - `email_protection` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as &#34;Email protection&#34;. When `null`, the `email_protection` field will be omitted from the resulting object.\n  - `ocsp_signing` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as &#34;Signing OCSP responses&#34;. When `null`, the `ocsp_signing` field will be omitted from the resulting object.\n  - `server_auth` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as &#34;TLS WWW server authentication&#34;, though regularly used for non-WWW TLS. When `null`, the `server_auth` field will be omitted from the resulting object.\n  - `time_stamping` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as &#34;Binding the hash of an object to a time&#34;. When `null`, the `time_stamping` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `extended_key_usage` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.privateca_certificate_authority.config.x509_config.key_usage.new` constructs a new object with attributes and blocks configured for the `key_usage`\nTerraform sub block.\n\n\n\n**Args**:\n  - `base_key_usage` (`list[obj]`): Describes high-level ways in which a key may be used. When `null`, the `base_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.key_usage.base_key_usage.new](#fn-configconfigx509_configbase_key_usagenew) constructor.\n  - `extended_key_usage` (`list[obj]`): Describes high-level ways in which a key may be used. When `null`, the `extended_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.key_usage.extended_key_usage.new](#fn-configconfigx509_configextended_key_usagenew) constructor.\n  - `unknown_extended_key_usages` (`list[obj]`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages. When `null`, the `unknown_extended_key_usages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.key_usage.unknown_extended_key_usages.new](#fn-configconfigx509_configunknown_extended_key_usagesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `key_usage` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google.privateca_certificate_authority.config.x509_config.key_usage.unknown_extended_key_usages.new` constructs a new object with attributes and blocks configured for the `unknown_extended_key_usages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.\n\n**Returns**:\n  - An attribute object that represents the `unknown_extended_key_usages` sub block.\n', args=[]),
          new(
            object_id_path
          ):: std.prune(a={
            object_id_path: object_id_path,
          }),
        },
      },
      name_constraints:: {
        '#new':: d.fn(help='\n`google.privateca_certificate_authority.config.x509_config.name_constraints.new` constructs a new object with attributes and blocks configured for the `name_constraints`\nTerraform sub block.\n\n\n\n**Args**:\n  - `critical` (`bool`): Indicates whether or not the name constraints are marked critical.\n  - `excluded_dns_names` (`list`): Contains excluded DNS names. Any DNS name that can be\nconstructed by simply adding zero or more labels to\nthe left-hand side of the name satisfies the name constraint.\nFor example, &#39;example.com&#39;, &#39;www.example.com&#39;, &#39;www.sub.example.com&#39;\nwould satisfy &#39;example.com&#39; while &#39;example1.com&#39; does not. When `null`, the `excluded_dns_names` field will be omitted from the resulting object.\n  - `excluded_email_addresses` (`list`): Contains the excluded email addresses. The value can be a particular\nemail address, a hostname to indicate all email addresses on that host or\na domain with a leading period (e.g. &#39;.example.com&#39;) to indicate\nall email addresses in that domain. When `null`, the `excluded_email_addresses` field will be omitted from the resulting object.\n  - `excluded_ip_ranges` (`list`): Contains the excluded IP ranges. For IPv4 addresses, the ranges\nare expressed using CIDR notation as specified in RFC 4632.\nFor IPv6 addresses, the ranges are expressed in similar encoding as IPv4\naddresses. When `null`, the `excluded_ip_ranges` field will be omitted from the resulting object.\n  - `excluded_uris` (`list`): Contains the excluded URIs that apply to the host part of the name.\nThe value can be a hostname or a domain with a\nleading period (like &#39;.example.com&#39;) When `null`, the `excluded_uris` field will be omitted from the resulting object.\n  - `permitted_dns_names` (`list`): Contains permitted DNS names. Any DNS name that can be\nconstructed by simply adding zero or more labels to\nthe left-hand side of the name satisfies the name constraint.\nFor example, &#39;example.com&#39;, &#39;www.example.com&#39;, &#39;www.sub.example.com&#39;\nwould satisfy &#39;example.com&#39; while &#39;example1.com&#39; does not. When `null`, the `permitted_dns_names` field will be omitted from the resulting object.\n  - `permitted_email_addresses` (`list`): Contains the permitted email addresses. The value can be a particular\nemail address, a hostname to indicate all email addresses on that host or\na domain with a leading period (e.g. &#39;.example.com&#39;) to indicate\nall email addresses in that domain. When `null`, the `permitted_email_addresses` field will be omitted from the resulting object.\n  - `permitted_ip_ranges` (`list`): Contains the permitted IP ranges. For IPv4 addresses, the ranges\nare expressed using CIDR notation as specified in RFC 4632.\nFor IPv6 addresses, the ranges are expressed in similar encoding as IPv4\naddresses. When `null`, the `permitted_ip_ranges` field will be omitted from the resulting object.\n  - `permitted_uris` (`list`): Contains the permitted URIs that apply to the host part of the name.\nThe value can be a hostname or a domain with a\nleading period (like &#39;.example.com&#39;) When `null`, the `permitted_uris` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `name_constraints` sub block.\n', args=[]),
        new(
          critical,
          excluded_dns_names=null,
          excluded_email_addresses=null,
          excluded_ip_ranges=null,
          excluded_uris=null,
          permitted_dns_names=null,
          permitted_email_addresses=null,
          permitted_ip_ranges=null,
          permitted_uris=null
        ):: std.prune(a={
          critical: critical,
          excluded_dns_names: excluded_dns_names,
          excluded_email_addresses: excluded_email_addresses,
          excluded_ip_ranges: excluded_ip_ranges,
          excluded_uris: excluded_uris,
          permitted_dns_names: permitted_dns_names,
          permitted_email_addresses: permitted_email_addresses,
          permitted_ip_ranges: permitted_ip_ranges,
          permitted_uris: permitted_uris,
        }),
      },
      '#new':: d.fn(help='\n`google.privateca_certificate_authority.config.x509_config.new` constructs a new object with attributes and blocks configured for the `x509_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `aia_ocsp_servers` (`list`): Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the\n&#34;Authority Information Access&#34; extension in the certificate. When `null`, the `aia_ocsp_servers` field will be omitted from the resulting object.\n  - `additional_extensions` (`list[obj]`): Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs. When `null`, the `additional_extensions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.additional_extensions.new](#fn-configconfigadditional_extensionsnew) constructor.\n  - `ca_options` (`list[obj]`): Describes values that are relevant in a CA certificate. When `null`, the `ca_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.ca_options.new](#fn-configconfigca_optionsnew) constructor.\n  - `key_usage` (`list[obj]`): Indicates the intended use for keys that correspond to a certificate. When `null`, the `key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.key_usage.new](#fn-configconfigkey_usagenew) constructor.\n  - `name_constraints` (`list[obj]`): Describes the X.509 name constraints extension. When `null`, the `name_constraints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.name_constraints.new](#fn-configconfigname_constraintsnew) constructor.\n  - `policy_ids` (`list[obj]`): Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4. When `null`, the `policy_ids` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.x509_config.policy_ids.new](#fn-configconfigpolicy_idsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `x509_config` sub block.\n', args=[]),
      new(
        additional_extensions=null,
        aia_ocsp_servers=null,
        ca_options=null,
        key_usage=null,
        name_constraints=null,
        policy_ids=null
      ):: std.prune(a={
        additional_extensions: additional_extensions,
        aia_ocsp_servers: aia_ocsp_servers,
        ca_options: ca_options,
        key_usage: key_usage,
        name_constraints: name_constraints,
        policy_ids: policy_ids,
      }),
      policy_ids:: {
        '#new':: d.fn(help='\n`google.privateca_certificate_authority.config.x509_config.policy_ids.new` constructs a new object with attributes and blocks configured for the `policy_ids`\nTerraform sub block.\n\n\n\n**Args**:\n  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.\n\n**Returns**:\n  - An attribute object that represents the `policy_ids` sub block.\n', args=[]),
        new(
          object_id_path
        ):: std.prune(a={
          object_id_path: object_id_path,
        }),
      },
    },
  },
  key_spec:: {
    '#new':: d.fn(help='\n`google.privateca_certificate_authority.key_spec.new` constructs a new object with attributes and blocks configured for the `key_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `algorithm` (`string`): The algorithm to use for creating a managed Cloud KMS key for a for a simplified\nexperience. All managed keys will be have their ProtectionLevel as HSM. Possible values: [&#34;SIGN_HASH_ALGORITHM_UNSPECIFIED&#34;, &#34;RSA_PSS_2048_SHA256&#34;, &#34;RSA_PSS_3072_SHA256&#34;, &#34;RSA_PSS_4096_SHA256&#34;, &#34;RSA_PKCS1_2048_SHA256&#34;, &#34;RSA_PKCS1_3072_SHA256&#34;, &#34;RSA_PKCS1_4096_SHA256&#34;, &#34;EC_P256_SHA256&#34;, &#34;EC_P384_SHA384&#34;] When `null`, the `algorithm` field will be omitted from the resulting object.\n  - `cloud_kms_key_version` (`string`): The resource name for an existing Cloud KMS CryptoKeyVersion in the format\n&#39;projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*&#39;. When `null`, the `cloud_kms_key_version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `key_spec` sub block.\n', args=[]),
    new(
      algorithm=null,
      cloud_kms_key_version=null
    ):: std.prune(a={
      algorithm: algorithm,
      cloud_kms_key_version: cloud_kms_key_version,
    }),
  },
  '#new':: d.fn(help="\n`google.privateca_certificate_authority.new` injects a new `google_privateca_certificate_authority` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.privateca_certificate_authority.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.privateca_certificate_authority` using the reference:\n\n    $._ref.google_privateca_certificate_authority.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_privateca_certificate_authority.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `certificate_authority_id` (`string`): The user provided Resource ID for this Certificate Authority.\n  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the CertificateAuthority. Unless this field is set to false\nin Terraform state, a \u0026#39;terraform destroy\u0026#39; or \u0026#39;terraform apply\u0026#39; that would delete the instance will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.\n  - `desired_state` (`string`): Desired state of the CertificateAuthority. Set this field to \u0026#39;STAGED\u0026#39; to create a \u0026#39;STAGED\u0026#39; root CA. When `null`, the `desired_state` field will be omitted from the resulting object.\n  - `gcs_bucket` (`string`): The name of a Cloud Storage bucket where this CertificateAuthority will publish content,\nsuch as the CA certificate and CRLs. This must be a bucket name, without any prefixes\n(such as \u0026#39;gs://\u0026#39;) or suffixes (such as \u0026#39;.googleapis.com\u0026#39;). For example, to use a bucket named\nmy-bucket, you would simply specify \u0026#39;my-bucket\u0026#39;. If not specified, a managed bucket will be\ncreated. When `null`, the `gcs_bucket` field will be omitted from the resulting object.\n  - `ignore_active_certificates_on_deletion` (`bool`): This field allows the CA to be deleted even if the CA has active certs. Active certs include both unrevoked and unexpired certs.\nUse with care. Defaults to \u0026#39;false\u0026#39;. When `null`, the `ignore_active_certificates_on_deletion` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels with user-defined metadata.\n\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs. Example: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;:\n\u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `lifetime` (`string`): The desired lifetime of the CA certificate. Used to create the \u0026#34;notBeforeTime\u0026#34; and\n\u0026#34;notAfterTime\u0026#34; fields inside an X.509 certificate. A duration in seconds with up to nine\nfractional digits, terminated by \u0026#39;s\u0026#39;. Example: \u0026#34;3.5s\u0026#34;. When `null`, the `lifetime` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the CertificateAuthority. A full list of valid locations can be found by\nrunning \u0026#39;gcloud privateca locations list\u0026#39;.\n  - `pem_ca_certificate` (`string`): The signed CA certificate issued from the subordinated CA\u0026#39;s CSR. This is needed when activating the subordiante CA with a third party issuer. When `null`, the `pem_ca_certificate` field will be omitted from the resulting object.\n  - `pool` (`string`): The name of the CaPool this Certificate Authority belongs to.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `skip_grace_period` (`bool`): If this flag is set, the Certificate Authority will be deleted as soon as\npossible without a 30-day grace period where undeletion would have been\nallowed. If you proceed, there will be no way to recover this CA.\nUse with care. Defaults to \u0026#39;false\u0026#39;. When `null`, the `skip_grace_period` field will be omitted from the resulting object.\n  - `type` (`string`): The Type of this CertificateAuthority.\n\n~\u0026gt; **Note:** For \u0026#39;SUBORDINATE\u0026#39; Certificate Authorities, they need to\nbe activated before they can issue certificates. Default value: \u0026#34;SELF_SIGNED\u0026#34; Possible values: [\u0026#34;SELF_SIGNED\u0026#34;, \u0026#34;SUBORDINATE\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `config` (`list[obj]`): The config used to create a self-signed X.509 certificate or CSR. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.new](#fn-confignew) constructor.\n  - `key_spec` (`list[obj]`): Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority\nis a self-signed CertificateAuthority, this key is also used to sign the self-signed CA\ncertificate. Otherwise, it is used to sign a CSR. When `null`, the `key_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.key_spec.new](#fn-key_specnew) constructor.\n  - `subordinate_config` (`list[obj]`): If this is a subordinate CertificateAuthority, this field will be set\nwith the subordinate configuration, which describes its issuers. When `null`, the `subordinate_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.subordinate_config.new](#fn-subordinate_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    certificate_authority_id,
    location,
    pool,
    config=null,
    deletion_protection=null,
    desired_state=null,
    gcs_bucket=null,
    ignore_active_certificates_on_deletion=null,
    key_spec=null,
    labels=null,
    lifetime=null,
    pem_ca_certificate=null,
    project=null,
    skip_grace_period=null,
    subordinate_config=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_privateca_certificate_authority',
    label=resourceLabel,
    attrs=self.newAttrs(
      certificate_authority_id=certificate_authority_id,
      config=config,
      deletion_protection=deletion_protection,
      desired_state=desired_state,
      gcs_bucket=gcs_bucket,
      ignore_active_certificates_on_deletion=ignore_active_certificates_on_deletion,
      key_spec=key_spec,
      labels=labels,
      lifetime=lifetime,
      location=location,
      pem_ca_certificate=pem_ca_certificate,
      pool=pool,
      project=project,
      skip_grace_period=skip_grace_period,
      subordinate_config=subordinate_config,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.privateca_certificate_authority.newAttrs` constructs a new object with attributes and blocks configured for the `privateca_certificate_authority`\nTerraform resource.\n\nUnlike [google.privateca_certificate_authority.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `certificate_authority_id` (`string`): The user provided Resource ID for this Certificate Authority.\n  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the CertificateAuthority. Unless this field is set to false\nin Terraform state, a &#39;terraform destroy&#39; or &#39;terraform apply&#39; that would delete the instance will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.\n  - `desired_state` (`string`): Desired state of the CertificateAuthority. Set this field to &#39;STAGED&#39; to create a &#39;STAGED&#39; root CA. When `null`, the `desired_state` field will be omitted from the resulting object.\n  - `gcs_bucket` (`string`): The name of a Cloud Storage bucket where this CertificateAuthority will publish content,\nsuch as the CA certificate and CRLs. This must be a bucket name, without any prefixes\n(such as &#39;gs://&#39;) or suffixes (such as &#39;.googleapis.com&#39;). For example, to use a bucket named\nmy-bucket, you would simply specify &#39;my-bucket&#39;. If not specified, a managed bucket will be\ncreated. When `null`, the `gcs_bucket` field will be omitted from the resulting object.\n  - `ignore_active_certificates_on_deletion` (`bool`): This field allows the CA to be deleted even if the CA has active certs. Active certs include both unrevoked and unexpired certs.\nUse with care. Defaults to &#39;false&#39;. When `null`, the `ignore_active_certificates_on_deletion` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels with user-defined metadata.\n\nAn object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;:\n&#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `lifetime` (`string`): The desired lifetime of the CA certificate. Used to create the &#34;notBeforeTime&#34; and\n&#34;notAfterTime&#34; fields inside an X.509 certificate. A duration in seconds with up to nine\nfractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `lifetime` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the CertificateAuthority. A full list of valid locations can be found by\nrunning &#39;gcloud privateca locations list&#39;.\n  - `pem_ca_certificate` (`string`): The signed CA certificate issued from the subordinated CA&#39;s CSR. This is needed when activating the subordiante CA with a third party issuer. When `null`, the `pem_ca_certificate` field will be omitted from the resulting object.\n  - `pool` (`string`): The name of the CaPool this Certificate Authority belongs to.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `skip_grace_period` (`bool`): If this flag is set, the Certificate Authority will be deleted as soon as\npossible without a 30-day grace period where undeletion would have been\nallowed. If you proceed, there will be no way to recover this CA.\nUse with care. Defaults to &#39;false&#39;. When `null`, the `skip_grace_period` field will be omitted from the resulting object.\n  - `type` (`string`): The Type of this CertificateAuthority.\n\n~&gt; **Note:** For &#39;SUBORDINATE&#39; Certificate Authorities, they need to\nbe activated before they can issue certificates. Default value: &#34;SELF_SIGNED&#34; Possible values: [&#34;SELF_SIGNED&#34;, &#34;SUBORDINATE&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `config` (`list[obj]`): The config used to create a self-signed X.509 certificate or CSR. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.config.new](#fn-confignew) constructor.\n  - `key_spec` (`list[obj]`): Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority\nis a self-signed CertificateAuthority, this key is also used to sign the self-signed CA\ncertificate. Otherwise, it is used to sign a CSR. When `null`, the `key_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.key_spec.new](#fn-key_specnew) constructor.\n  - `subordinate_config` (`list[obj]`): If this is a subordinate CertificateAuthority, this field will be set\nwith the subordinate configuration, which describes its issuers. When `null`, the `subordinate_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.subordinate_config.new](#fn-subordinate_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `privateca_certificate_authority` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    certificate_authority_id,
    location,
    pool,
    config=null,
    deletion_protection=null,
    desired_state=null,
    gcs_bucket=null,
    ignore_active_certificates_on_deletion=null,
    key_spec=null,
    labels=null,
    lifetime=null,
    pem_ca_certificate=null,
    project=null,
    skip_grace_period=null,
    subordinate_config=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    certificate_authority_id: certificate_authority_id,
    config: config,
    deletion_protection: deletion_protection,
    desired_state: desired_state,
    gcs_bucket: gcs_bucket,
    ignore_active_certificates_on_deletion: ignore_active_certificates_on_deletion,
    key_spec: key_spec,
    labels: labels,
    lifetime: lifetime,
    location: location,
    pem_ca_certificate: pem_ca_certificate,
    pool: pool,
    project: project,
    skip_grace_period: skip_grace_period,
    subordinate_config: subordinate_config,
    timeouts: timeouts,
    type: type,
  }),
  subordinate_config:: {
    '#new':: d.fn(help='\n`google.privateca_certificate_authority.subordinate_config.new` constructs a new object with attributes and blocks configured for the `subordinate_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `certificate_authority` (`string`): This can refer to a CertificateAuthority that was used to create a\nsubordinate CertificateAuthority. This field is used for information\nand usability purposes only. The resource name is in the format\n&#39;projects/*/locations/*/caPools/*/certificateAuthorities/*&#39;. When `null`, the `certificate_authority` field will be omitted from the resulting object.\n  - `pem_issuer_chain` (`list[obj]`): Contains the PEM certificate chain for the issuers of this CertificateAuthority,\nbut not pem certificate for this CA itself. When `null`, the `pem_issuer_chain` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate_authority.subordinate_config.pem_issuer_chain.new](#fn-subordinate_configpem_issuer_chainnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `subordinate_config` sub block.\n', args=[]),
    new(
      certificate_authority=null,
      pem_issuer_chain=null
    ):: std.prune(a={
      certificate_authority: certificate_authority,
      pem_issuer_chain: pem_issuer_chain,
    }),
    pem_issuer_chain:: {
      '#new':: d.fn(help='\n`google.privateca_certificate_authority.subordinate_config.pem_issuer_chain.new` constructs a new object with attributes and blocks configured for the `pem_issuer_chain`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pem_certificates` (`list`): Expected to be in leaf-to-root order according to RFC 5246. When `null`, the `pem_certificates` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `pem_issuer_chain` sub block.\n', args=[]),
      new(
        pem_certificates=null
      ):: std.prune(a={
        pem_certificates: pem_certificates,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.privateca_certificate_authority.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCertificateAuthorityId':: d.fn(help='`google.string.withCertificateAuthorityId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the certificate_authority_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `certificate_authority_id` field.\n', args=[]),
  withCertificateAuthorityId(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          certificate_authority_id: value,
        },
      },
    },
  },
  '#withConfig':: d.fn(help='`google.list[obj].withConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `config` field.\n', args=[]),
  withConfig(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  '#withConfigMixin':: d.fn(help='`google.list[obj].withConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `config` field.\n', args=[]),
  withConfigMixin(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDeletionProtection':: d.fn(help='`google.bool.withDeletionProtection` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the deletion_protection field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `deletion_protection` field.\n', args=[]),
  withDeletionProtection(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          deletion_protection: value,
        },
      },
    },
  },
  '#withDesiredState':: d.fn(help='`google.string.withDesiredState` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the desired_state field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `desired_state` field.\n', args=[]),
  withDesiredState(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          desired_state: value,
        },
      },
    },
  },
  '#withGcsBucket':: d.fn(help='`google.string.withGcsBucket` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the gcs_bucket field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `gcs_bucket` field.\n', args=[]),
  withGcsBucket(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          gcs_bucket: value,
        },
      },
    },
  },
  '#withIgnoreActiveCertificatesOnDeletion':: d.fn(help='`google.bool.withIgnoreActiveCertificatesOnDeletion` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the ignore_active_certificates_on_deletion field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `ignore_active_certificates_on_deletion` field.\n', args=[]),
  withIgnoreActiveCertificatesOnDeletion(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          ignore_active_certificates_on_deletion: value,
        },
      },
    },
  },
  '#withKeySpec':: d.fn(help='`google.list[obj].withKeySpec` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the key_spec field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withKeySpecMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `key_spec` field.\n', args=[]),
  withKeySpec(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          key_spec: value,
        },
      },
    },
  },
  '#withKeySpecMixin':: d.fn(help='`google.list[obj].withKeySpecMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the key_spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withKeySpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `key_spec` field.\n', args=[]),
  withKeySpecMixin(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          key_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLifetime':: d.fn(help='`google.string.withLifetime` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the lifetime field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `lifetime` field.\n', args=[]),
  withLifetime(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          lifetime: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withPemCaCertificate':: d.fn(help='`google.string.withPemCaCertificate` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the pem_ca_certificate field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `pem_ca_certificate` field.\n', args=[]),
  withPemCaCertificate(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          pem_ca_certificate: value,
        },
      },
    },
  },
  '#withPool':: d.fn(help='`google.string.withPool` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the pool field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `pool` field.\n', args=[]),
  withPool(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          pool: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSkipGracePeriod':: d.fn(help='`google.bool.withSkipGracePeriod` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the skip_grace_period field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `skip_grace_period` field.\n', args=[]),
  withSkipGracePeriod(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          skip_grace_period: value,
        },
      },
    },
  },
  '#withSubordinateConfig':: d.fn(help='`google.list[obj].withSubordinateConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the subordinate_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSubordinateConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `subordinate_config` field.\n', args=[]),
  withSubordinateConfig(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          subordinate_config: value,
        },
      },
    },
  },
  '#withSubordinateConfigMixin':: d.fn(help='`google.list[obj].withSubordinateConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the subordinate_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSubordinateConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `subordinate_config` field.\n', args=[]),
  withSubordinateConfigMixin(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          subordinate_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
