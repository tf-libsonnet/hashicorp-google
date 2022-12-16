local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  attestation_authority:: {
    hint:: {
      new(
        human_readable_name
      ):: std.prune(a={
        human_readable_name: human_readable_name,
      }),
    },
    new(
      hint=null
    ):: std.prune(a={
      hint: hint,
    }),
  },
  new(
    resourceLabel,
    name,
    attestation_authority=null,
    expiration_time=null,
    long_description=null,
    project=null,
    related_note_names=null,
    related_url=null,
    short_description=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_analysis_note',
    label=resourceLabel,
    attrs=self.newAttrs(
      attestation_authority=attestation_authority,
      expiration_time=expiration_time,
      long_description=long_description,
      name=name,
      project=project,
      related_note_names=related_note_names,
      related_url=related_url,
      short_description=short_description,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    attestation_authority=null,
    expiration_time=null,
    long_description=null,
    project=null,
    related_note_names=null,
    related_url=null,
    short_description=null,
    timeouts=null
  ):: std.prune(a={
    attestation_authority: attestation_authority,
    expiration_time: expiration_time,
    long_description: long_description,
    name: name,
    project: project,
    related_note_names: related_note_names,
    related_url: related_url,
    short_description: short_description,
    timeouts: timeouts,
  }),
  related_url:: {
    new(
      url,
      label=null
    ):: std.prune(a={
      label: label,
      url: url,
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
  withAttestationAuthority(resourceLabel, value):: {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          attestation_authority: value,
        },
      },
    },
  },
  withAttestationAuthorityMixin(resourceLabel, value):: {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          attestation_authority+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withExpirationTime(resourceLabel, value):: {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          expiration_time: value,
        },
      },
    },
  },
  withLongDescription(resourceLabel, value):: {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          long_description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRelatedNoteNames(resourceLabel, value):: {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          related_note_names: value,
        },
      },
    },
  },
  withRelatedUrl(resourceLabel, value):: {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          related_url: value,
        },
      },
    },
  },
  withRelatedUrlMixin(resourceLabel, value):: {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          related_url+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withShortDescription(resourceLabel, value):: {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          short_description: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
