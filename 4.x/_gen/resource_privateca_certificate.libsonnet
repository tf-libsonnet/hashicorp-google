local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  config:: {
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
      new(
        format,
        key=null
      ):: std.prune(a={
        format: format,
        key: key,
      }),
    },
    subject_config:: {
      new(
        subject=null,
        subject_alt_name=null
      ):: std.prune(a={
        subject: subject,
        subject_alt_name: subject_alt_name,
      }),
      subject:: {
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
          new(
            object_id_path
          ):: std.prune(a={
            object_id_path: object_id_path,
          }),
        },
      },
      ca_options:: {
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
          new(
            object_id_path
          ):: std.prune(a={
            object_id_path: object_id_path,
          }),
        },
      },
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
        new(
          object_id_path
        ):: std.prune(a={
          object_id_path: object_id_path,
        }),
      },
    },
  },
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
  withCertificateAuthority(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          certificate_authority: value,
        },
      },
    },
  },
  withCertificateTemplate(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          certificate_template: value,
        },
      },
    },
  },
  withConfig(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  withConfigMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLifetime(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          lifetime: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPemCsr(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          pem_csr: value,
        },
      },
    },
  },
  withPool(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          pool: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
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
