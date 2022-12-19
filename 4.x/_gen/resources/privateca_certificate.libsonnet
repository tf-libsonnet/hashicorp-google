local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='privateca_certificate', url='', help='`privateca_certificate` represents the `google_privateca_certificate` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  config:: {
    '#new':: d.fn(help='\n`google.privateca_certificate.config.new` constructs a new object with attributes and blocks configured for the `config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `public_key` (`list[obj]`): A PublicKey describes a public key. When `null`, the `public_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.public_key.new](#fn-configpublickeynew) constructor.\n  - `subject_config` (`list[obj]`): Specifies some of the values in a certificate that are related to the subject. When `null`, the `subject_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.subject_config.new](#fn-configsubjectconfignew) constructor.\n  - `x509_config` (`list[obj]`): Describes how some of the technical X.509 fields in a certificate should be populated. When `null`, the `x509_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.new](#fn-configx509confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `config` sub block.\n', args=[]),
    new(
      public_key=null,
      subject_config=null,
      x509_config=null
    ):: std.prune(a={
      public_key: public_key,
      subject_config: subject_config,
      x509_config: x509_config,
    }),
    public_key:: {
      '#new':: d.fn(help='\n`google.privateca_certificate.config.public_key.new` constructs a new object with attributes and blocks configured for the `public_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `format` (`string`): The format of the public key. Currently, only PEM format is supported. Possible values: [&#34;KEY_TYPE_UNSPECIFIED&#34;, &#34;PEM&#34;]\n  - `key` (`string`): Required. A public key. When this is specified in a request, the padding and encoding can be any of the options described by the respective &#39;KeyType&#39; value. When this is generated by the service, it will always be an RFC 5280 SubjectPublicKeyInfo structure containing an algorithm identifier and a key. A base64-encoded string. When `null`, the `key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `public_key` sub block.\n', args=[]),
      new(
        format,
        key=null
      ):: std.prune(a={
        format: format,
        key: key,
      }),
    },
    subject_config:: {
      '#new':: d.fn(help='\n`google.privateca_certificate.config.subject_config.new` constructs a new object with attributes and blocks configured for the `subject_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `subject` (`list[obj]`): Contains distinguished name fields such as the location and organization. When `null`, the `subject` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.subject_config.subject.new](#fn-subjectconfigsubjectnew) constructor.\n  - `subject_alt_name` (`list[obj]`): The subject alternative name fields. When `null`, the `subject_alt_name` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.subject_config.subject_alt_name.new](#fn-subjectconfigsubjectaltnamenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `subject_config` sub block.\n', args=[]),
      new(
        subject=null,
        subject_alt_name=null
      ):: std.prune(a={
        subject: subject,
        subject_alt_name: subject_alt_name,
      }),
      subject:: {
        '#new':: d.fn(help='\n`google.privateca_certificate.config.subject_config.subject.new` constructs a new object with attributes and blocks configured for the `subject`\nTerraform sub block.\n\n\n\n**Args**:\n  - `common_name` (`string`): The common name of the distinguished name.\n  - `country_code` (`string`): The country code of the subject. When `null`, the `country_code` field will be omitted from the resulting object.\n  - `locality` (`string`): The locality or city of the subject. When `null`, the `locality` field will be omitted from the resulting object.\n  - `organization` (`string`): The organization of the subject.\n  - `organizational_unit` (`string`): The organizational unit of the subject. When `null`, the `organizational_unit` field will be omitted from the resulting object.\n  - `postal_code` (`string`): The postal code of the subject. When `null`, the `postal_code` field will be omitted from the resulting object.\n  - `province` (`string`): The province, territory, or regional state of the subject. When `null`, the `province` field will be omitted from the resulting object.\n  - `street_address` (`string`): The street address of the subject. When `null`, the `street_address` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `subject` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.privateca_certificate.config.subject_config.subject_alt_name.new` constructs a new object with attributes and blocks configured for the `subject_alt_name`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dns_names` (`list`): Contains only valid, fully-qualified host names. When `null`, the `dns_names` field will be omitted from the resulting object.\n  - `email_addresses` (`list`): Contains only valid RFC 2822 E-mail addresses. When `null`, the `email_addresses` field will be omitted from the resulting object.\n  - `ip_addresses` (`list`): Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses. When `null`, the `ip_addresses` field will be omitted from the resulting object.\n  - `uris` (`list`): Contains only valid RFC 3986 URIs. When `null`, the `uris` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `subject_alt_name` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.privateca_certificate.config.x509_config.additional_extensions.new` constructs a new object with attributes and blocks configured for the `additional_extensions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `critical` (`bool`): Indicates whether or not this extension is critical (i.e., if the client does not know how to\nhandle this extension, the client should consider this to be an error).\n  - `value` (`string`): The value of this X.509 extension. A base64-encoded string.\n  - `object_id` (`list[obj]`): Describes values that are relevant in a CA certificate. When `null`, the `object_id` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.additional_extensions.object_id.new](#fn-additionalextensionsobjectidnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `additional_extensions` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google.privateca_certificate.config.x509_config.additional_extensions.object_id.new` constructs a new object with attributes and blocks configured for the `object_id`\nTerraform sub block.\n\n\n\n**Args**:\n  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.\n\n**Returns**:\n  - An attribute object that represents the `object_id` sub block.\n', args=[]),
          new(
            object_id_path
          ):: std.prune(a={
            object_id_path: object_id_path,
          }),
        },
      },
      ca_options:: {
        '#new':: d.fn(help='\n`google.privateca_certificate.config.x509_config.ca_options.new` constructs a new object with attributes and blocks configured for the `ca_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `is_ca` (`bool`): When true, the &#34;CA&#34; in Basic Constraints extension will be set to true. When `null`, the `is_ca` field will be omitted from the resulting object.\n  - `max_issuer_path_length` (`number`): Refers to the &#34;path length constraint&#34; in Basic Constraints extension. For a CA certificate, this value describes the depth of\nsubordinate CA certificates that are allowed. If this value is less than 0, the request will fail. When `null`, the `max_issuer_path_length` field will be omitted from the resulting object.\n  - `non_ca` (`bool`): When true, the &#34;CA&#34; in Basic Constraints extension will be set to false. \nIf both &#39;is_ca&#39; and &#39;non_ca&#39; are unset, the extension will be omitted from the CA certificate. When `null`, the `non_ca` field will be omitted from the resulting object.\n  - `zero_max_issuer_path_length` (`bool`): When true, the &#34;path length constraint&#34; in Basic Constraints extension will be set to 0.\nif both &#39;max_issuer_path_length&#39; and &#39;zero_max_issuer_path_length&#39; are unset,\nthe max path length will be omitted from the CA certificate. When `null`, the `zero_max_issuer_path_length` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ca_options` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google.privateca_certificate.config.x509_config.key_usage.base_key_usage.new` constructs a new object with attributes and blocks configured for the `base_key_usage`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cert_sign` (`bool`): The key may be used to sign certificates. When `null`, the `cert_sign` field will be omitted from the resulting object.\n  - `content_commitment` (`bool`): The key may be used for cryptographic commitments. Note that this may also be referred to as &#34;non-repudiation&#34;. When `null`, the `content_commitment` field will be omitted from the resulting object.\n  - `crl_sign` (`bool`): The key may be used sign certificate revocation lists. When `null`, the `crl_sign` field will be omitted from the resulting object.\n  - `data_encipherment` (`bool`): The key may be used to encipher data. When `null`, the `data_encipherment` field will be omitted from the resulting object.\n  - `decipher_only` (`bool`): The key may be used to decipher only. When `null`, the `decipher_only` field will be omitted from the resulting object.\n  - `digital_signature` (`bool`): The key may be used for digital signatures. When `null`, the `digital_signature` field will be omitted from the resulting object.\n  - `encipher_only` (`bool`): The key may be used to encipher only. When `null`, the `encipher_only` field will be omitted from the resulting object.\n  - `key_agreement` (`bool`): The key may be used in a key agreement protocol. When `null`, the `key_agreement` field will be omitted from the resulting object.\n  - `key_encipherment` (`bool`): The key may be used to encipher other keys. When `null`, the `key_encipherment` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `base_key_usage` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google.privateca_certificate.config.x509_config.key_usage.extended_key_usage.new` constructs a new object with attributes and blocks configured for the `extended_key_usage`\nTerraform sub block.\n\n\n\n**Args**:\n  - `client_auth` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as &#34;TLS WWW client authentication&#34;, though regularly used for non-WWW TLS. When `null`, the `client_auth` field will be omitted from the resulting object.\n  - `code_signing` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as &#34;Signing of downloadable executable code client authentication&#34;. When `null`, the `code_signing` field will be omitted from the resulting object.\n  - `email_protection` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as &#34;Email protection&#34;. When `null`, the `email_protection` field will be omitted from the resulting object.\n  - `ocsp_signing` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as &#34;Signing OCSP responses&#34;. When `null`, the `ocsp_signing` field will be omitted from the resulting object.\n  - `server_auth` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as &#34;TLS WWW server authentication&#34;, though regularly used for non-WWW TLS. When `null`, the `server_auth` field will be omitted from the resulting object.\n  - `time_stamping` (`bool`): Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as &#34;Binding the hash of an object to a time&#34;. When `null`, the `time_stamping` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `extended_key_usage` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.privateca_certificate.config.x509_config.key_usage.new` constructs a new object with attributes and blocks configured for the `key_usage`\nTerraform sub block.\n\n\n\n**Args**:\n  - `base_key_usage` (`list[obj]`): Describes high-level ways in which a key may be used. When `null`, the `base_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.key_usage.base_key_usage.new](#fn-keyusagebasekeyusagenew) constructor.\n  - `extended_key_usage` (`list[obj]`): Describes high-level ways in which a key may be used. When `null`, the `extended_key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.key_usage.extended_key_usage.new](#fn-keyusageextendedkeyusagenew) constructor.\n  - `unknown_extended_key_usages` (`list[obj]`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages. When `null`, the `unknown_extended_key_usages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.key_usage.unknown_extended_key_usages.new](#fn-keyusageunknownextendedkeyusagesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `key_usage` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google.privateca_certificate.config.x509_config.key_usage.unknown_extended_key_usages.new` constructs a new object with attributes and blocks configured for the `unknown_extended_key_usages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.\n\n**Returns**:\n  - An attribute object that represents the `unknown_extended_key_usages` sub block.\n', args=[]),
          new(
            object_id_path
          ):: std.prune(a={
            object_id_path: object_id_path,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.privateca_certificate.config.x509_config.new` constructs a new object with attributes and blocks configured for the `x509_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `aia_ocsp_servers` (`list`): Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the\n&#34;Authority Information Access&#34; extension in the certificate. When `null`, the `aia_ocsp_servers` field will be omitted from the resulting object.\n  - `additional_extensions` (`list[obj]`): Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs. When `null`, the `additional_extensions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.additional_extensions.new](#fn-x509configadditionalextensionsnew) constructor.\n  - `ca_options` (`list[obj]`): Describes values that are relevant in a CA certificate. When `null`, the `ca_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.ca_options.new](#fn-x509configcaoptionsnew) constructor.\n  - `key_usage` (`list[obj]`): Indicates the intended use for keys that correspond to a certificate. When `null`, the `key_usage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.key_usage.new](#fn-x509configkeyusagenew) constructor.\n  - `policy_ids` (`list[obj]`): Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4. When `null`, the `policy_ids` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.x509_config.policy_ids.new](#fn-x509configpolicyidsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `x509_config` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.privateca_certificate.config.x509_config.policy_ids.new` constructs a new object with attributes and blocks configured for the `policy_ids`\nTerraform sub block.\n\n\n\n**Args**:\n  - `object_id_path` (`list`): An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.\n\n**Returns**:\n  - An attribute object that represents the `policy_ids` sub block.\n', args=[]),
        new(
          object_id_path
        ):: std.prune(a={
          object_id_path: object_id_path,
        }),
      },
    },
  },
  '#new':: d.fn(help="\n`google.privateca_certificate.new` injects a new `google_privateca_certificate` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.privateca_certificate.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.privateca_certificate` using the reference:\n\n    $._ref.google_privateca_certificate.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_privateca_certificate.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `certificate_authority` (`string`): The Certificate Authority ID that should issue the certificate. For example, to issue a Certificate from\na Certificate Authority with resource name \u0026#39;projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca\u0026#39;,\nargument \u0026#39;pool\u0026#39; should be set to \u0026#39;projects/my-project/locations/us-central1/caPools/my-pool\u0026#39;, argument \u0026#39;certificate_authority\u0026#39;\nshould be set to \u0026#39;my-ca\u0026#39;. When `null`, the `certificate_authority` field will be omitted from the resulting object.\n  - `certificate_template` (`string`): The resource name for a CertificateTemplate used to issue this certificate,\nin the format \u0026#39;projects/*/locations/*/certificateTemplates/*\u0026#39;. If this is specified,\nthe caller must have the necessary permission to use this template. If this is\nomitted, no template will be used. This template must be in the same location\nas the Certificate. When `null`, the `certificate_template` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels with user-defined metadata to apply to this resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `lifetime` (`string`): The desired lifetime of the CA certificate. Used to create the \u0026#34;notBeforeTime\u0026#34; and\n\u0026#34;notAfterTime\u0026#34; fields inside an X.509 certificate. A duration in seconds with up to nine\nfractional digits, terminated by \u0026#39;s\u0026#39;. Example: \u0026#34;3.5s\u0026#34;. When `null`, the `lifetime` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the Certificate. A full list of valid locations can be found by\nrunning \u0026#39;gcloud privateca locations list\u0026#39;.\n  - `name` (`string`): The name for this Certificate.\n  - `pem_csr` (`string`): Immutable. A pem-encoded X.509 certificate signing request (CSR). When `null`, the `pem_csr` field will be omitted from the resulting object.\n  - `pool` (`string`): The name of the CaPool this Certificate belongs to.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `config` (`list[obj]`): The config used to create a self-signed X.509 certificate or CSR. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.new](#fn-privatecacertificateconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.timeouts.new](#fn-privatecacertificatetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    pool,
    certificate_authority=null,
    certificate_template=null,
    config=null,
    labels=null,
    lifetime=null,
    pem_csr=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_privateca_certificate',
    label=resourceLabel,
    attrs=self.newAttrs(
      certificate_authority=certificate_authority,
      certificate_template=certificate_template,
      config=config,
      labels=labels,
      lifetime=lifetime,
      location=location,
      name=name,
      pem_csr=pem_csr,
      pool=pool,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.privateca_certificate.newAttrs` constructs a new object with attributes and blocks configured for the `privateca_certificate`\nTerraform resource.\n\nUnlike [google.privateca_certificate.new](#fn-privatecacertificatenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `certificate_authority` (`string`): The Certificate Authority ID that should issue the certificate. For example, to issue a Certificate from\na Certificate Authority with resource name &#39;projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca&#39;,\nargument &#39;pool&#39; should be set to &#39;projects/my-project/locations/us-central1/caPools/my-pool&#39;, argument &#39;certificate_authority&#39;\nshould be set to &#39;my-ca&#39;. When `null`, the `certificate_authority` field will be omitted from the resulting object.\n  - `certificate_template` (`string`): The resource name for a CertificateTemplate used to issue this certificate,\nin the format &#39;projects/*/locations/*/certificateTemplates/*&#39;. If this is specified,\nthe caller must have the necessary permission to use this template. If this is\nomitted, no template will be used. This template must be in the same location\nas the Certificate. When `null`, the `certificate_template` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels with user-defined metadata to apply to this resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `lifetime` (`string`): The desired lifetime of the CA certificate. Used to create the &#34;notBeforeTime&#34; and\n&#34;notAfterTime&#34; fields inside an X.509 certificate. A duration in seconds with up to nine\nfractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `lifetime` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the Certificate. A full list of valid locations can be found by\nrunning &#39;gcloud privateca locations list&#39;.\n  - `name` (`string`): The name for this Certificate.\n  - `pem_csr` (`string`): Immutable. A pem-encoded X.509 certificate signing request (CSR). When `null`, the `pem_csr` field will be omitted from the resulting object.\n  - `pool` (`string`): The name of the CaPool this Certificate belongs to.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `config` (`list[obj]`): The config used to create a self-signed X.509 certificate or CSR. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.config.new](#fn-privatecacertificateconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.privateca_certificate.timeouts.new](#fn-privatecacertificatetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `privateca_certificate` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    pool,
    certificate_authority=null,
    certificate_template=null,
    config=null,
    labels=null,
    lifetime=null,
    pem_csr=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    certificate_authority: certificate_authority,
    certificate_template: certificate_template,
    config: config,
    labels: labels,
    lifetime: lifetime,
    location: location,
    name: name,
    pem_csr: pem_csr,
    pool: pool,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.privateca_certificate.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCertificateAuthority':: d.fn(help='`google.privateca_certificate.withCertificateAuthority` constructs a mixin object that can be merged into the `privateca_certificate`\nTerraform resource block to set or update the certificate_authority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `certificate_authority` field.\n', args=[]),
  withCertificateAuthority(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          certificate_authority: value,
        },
      },
    },
  },
  '#withCertificateTemplate':: d.fn(help='`google.privateca_certificate.withCertificateTemplate` constructs a mixin object that can be merged into the `privateca_certificate`\nTerraform resource block to set or update the certificate_template field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `certificate_template` field.\n', args=[]),
  withCertificateTemplate(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          certificate_template: value,
        },
      },
    },
  },
  '#withConfig':: d.fn(help='`google.privateca_certificate.withConfig` constructs a mixin object that can be merged into the `privateca_certificate`\nTerraform resource block to set or update the config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `config` field.\n', args=[]),
  withConfig(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  '#withConfigMixin':: d.fn(help='`google.privateca_certificate.withConfigMixin` constructs a mixin object that can be merged into the `privateca_certificate`\nTerraform resource block to set or update the config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.privateca_certificate.withConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `config` field.\n', args=[]),
  withConfigMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.privateca_certificate.withLabels` constructs a mixin object that can be merged into the `privateca_certificate`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLifetime':: d.fn(help='`google.privateca_certificate.withLifetime` constructs a mixin object that can be merged into the `privateca_certificate`\nTerraform resource block to set or update the lifetime field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `lifetime` field.\n', args=[]),
  withLifetime(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          lifetime: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.privateca_certificate.withLocation` constructs a mixin object that can be merged into the `privateca_certificate`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.privateca_certificate.withName` constructs a mixin object that can be merged into the `privateca_certificate`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPemCsr':: d.fn(help='`google.privateca_certificate.withPemCsr` constructs a mixin object that can be merged into the `privateca_certificate`\nTerraform resource block to set or update the pem_csr field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `pem_csr` field.\n', args=[]),
  withPemCsr(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          pem_csr: value,
        },
      },
    },
  },
  '#withPool':: d.fn(help='`google.privateca_certificate.withPool` constructs a mixin object that can be merged into the `privateca_certificate`\nTerraform resource block to set or update the pool field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `pool` field.\n', args=[]),
  withPool(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          pool: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.privateca_certificate.withProject` constructs a mixin object that can be merged into the `privateca_certificate`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.privateca_certificate.withTimeouts` constructs a mixin object that can be merged into the `privateca_certificate`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.privateca_certificate.withTimeoutsMixin` constructs a mixin object that can be merged into the `privateca_certificate`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.privateca_certificate.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
