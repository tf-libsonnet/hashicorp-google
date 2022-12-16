local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  attestation:: {
    new(
      serialized_payload,
      signatures=null
    ):: std.prune(a={
      serialized_payload: serialized_payload,
      signatures: signatures,
    }),
    signatures:: {
      new(
        public_key_id,
        signature=null
      ):: std.prune(a={
        public_key_id: public_key_id,
        signature: signature,
      }),
    },
  },
  new(
    resourceLabel,
    note_name,
    resource_uri,
    attestation=null,
    project=null,
    remediation=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_analysis_occurrence',
    label=resourceLabel,
    attrs=self.newAttrs(
      attestation=attestation,
      note_name=note_name,
      project=project,
      remediation=remediation,
      resource_uri=resource_uri,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    note_name,
    resource_uri,
    attestation=null,
    project=null,
    remediation=null,
    timeouts=null
  ):: std.prune(a={
    attestation: attestation,
    note_name: note_name,
    project: project,
    remediation: remediation,
    resource_uri: resource_uri,
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
  withAttestation(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          attestation: value,
        },
      },
    },
  },
  withAttestationMixin(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          attestation+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNoteName(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          note_name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRemediation(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          remediation: value,
        },
      },
    },
  },
  withResourceUri(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          resource_uri: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
