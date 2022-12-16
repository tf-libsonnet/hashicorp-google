local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  config:: {
    new(
      subject_config=null,
      x509_config=null
    ):: std.prune(a={
      subject_config: subject_config,
      x509_config: x509_config,
    }),
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
  key_spec:: {
    new(
      algorithm=null,
      cloud_kms_key_version=null
    ):: std.prune(a={
      algorithm: algorithm,
      cloud_kms_key_version: cloud_kms_key_version,
    }),
  },
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
    new(
      certificate_authority=null,
      pem_issuer_chain=null
    ):: std.prune(a={
      certificate_authority: certificate_authority,
      pem_issuer_chain: pem_issuer_chain,
    }),
    pem_issuer_chain:: {
      new(
        pem_certificates=null
      ):: std.prune(a={
        pem_certificates: pem_certificates,
      }),
    },
  },
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
  withCertificateAuthorityId(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          certificate_authority_id: value,
        },
      },
    },
  },
  withConfig(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  withConfigMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDeletionProtection(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          deletion_protection: value,
        },
      },
    },
  },
  withDesiredState(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          desired_state: value,
        },
      },
    },
  },
  withGcsBucket(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          gcs_bucket: value,
        },
      },
    },
  },
  withIgnoreActiveCertificatesOnDeletion(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          ignore_active_certificates_on_deletion: value,
        },
      },
    },
  },
  withKeySpec(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          key_spec: value,
        },
      },
    },
  },
  withKeySpecMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          key_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLifetime(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          lifetime: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPemCaCertificate(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          pem_ca_certificate: value,
        },
      },
    },
  },
  withPool(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          pool: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSkipGracePeriod(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          skip_grace_period: value,
        },
      },
    },
  },
  withSubordinateConfig(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          subordinate_config: value,
        },
      },
    },
  },
  withSubordinateConfigMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          subordinate_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_authority+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
