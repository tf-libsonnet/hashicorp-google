local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  issuance_policy:: {
    allowed_issuance_modes:: {
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
        new(
          signature_algorithm
        ):: std.prune(a={
          signature_algorithm: signature_algorithm,
        }),
      },
      new(
        elliptic_curve=null,
        rsa=null
      ):: std.prune(a={
        elliptic_curve: elliptic_curve,
        rsa: rsa,
      }),
      rsa:: {
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
    identity_constraints:: {
      cel_expression:: {
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
    new(
      publish_ca_cert,
      publish_crl
    ):: std.prune(a={
      publish_ca_cert: publish_ca_cert,
      publish_crl: publish_crl,
    }),
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
  withIssuancePolicy(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          issuance_policy: value,
        },
      },
    },
  },
  withIssuancePolicyMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          issuance_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withPublishingOptions(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          publishing_options: value,
        },
      },
    },
  },
  withPublishingOptionsMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          publishing_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTier(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
