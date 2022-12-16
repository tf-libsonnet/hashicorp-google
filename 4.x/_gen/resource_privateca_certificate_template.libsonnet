local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  identity_constraints:: {
    cel_expression:: {
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
      new(
        object_id_path
      ):: std.prune(a={
        object_id_path: object_id_path,
      }),
    },
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
        max_issuer_path_length=null
      ):: std.prune(a={
        is_ca: is_ca,
        max_issuer_path_length: max_issuer_path_length,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withIdentityConstraints(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          identity_constraints: value,
        },
      },
    },
  },
  withIdentityConstraintsMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          identity_constraints+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPassthroughExtensions(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          passthrough_extensions: value,
        },
      },
    },
  },
  withPassthroughExtensionsMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          passthrough_extensions+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPredefinedValues(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          predefined_values: value,
        },
      },
    },
  },
  withPredefinedValuesMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          predefined_values+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
