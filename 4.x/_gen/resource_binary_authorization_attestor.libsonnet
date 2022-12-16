local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  attestation_authority_note:: {
    new(
      note_reference,
      public_keys=null
    ):: std.prune(a={
      note_reference: note_reference,
      public_keys: public_keys,
    }),
    public_keys:: {
      new(
        ascii_armored_pgp_public_key=null,
        comment=null,
        pkix_public_key=null
      ):: std.prune(a={
        ascii_armored_pgp_public_key: ascii_armored_pgp_public_key,
        comment: comment,
        pkix_public_key: pkix_public_key,
      }),
      pkix_public_key:: {
        new(
          public_key_pem=null,
          signature_algorithm=null
        ):: std.prune(a={
          public_key_pem: public_key_pem,
          signature_algorithm: signature_algorithm,
        }),
      },
    },
  },
  new(
    resourceLabel,
    name,
    attestation_authority_note=null,
    description=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_binary_authorization_attestor',
    label=resourceLabel,
    attrs=self.newAttrs(
      attestation_authority_note=attestation_authority_note,
      description=description,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    attestation_authority_note=null,
    description=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    attestation_authority_note: attestation_authority_note,
    description: description,
    name: name,
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
  withAttestationAuthorityNote(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor+: {
        [resourceLabel]+: {
          attestation_authority_note: value,
        },
      },
    },
  },
  withAttestationAuthorityNoteMixin(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor+: {
        [resourceLabel]+: {
          attestation_authority_note+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
