local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  maven_config:: {
    new(
      allow_snapshot_overwrites=null,
      version_policy=null
    ):: std.prune(a={
      allow_snapshot_overwrites: allow_snapshot_overwrites,
      version_policy: version_policy,
    }),
  },
  new(
    resourceLabel,
    format,
    repository_id,
    description=null,
    kms_key_name=null,
    labels=null,
    location=null,
    maven_config=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_artifact_registry_repository',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      format=format,
      kms_key_name=kms_key_name,
      labels=labels,
      location=location,
      maven_config=maven_config,
      project=project,
      repository_id=repository_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    format,
    repository_id,
    description=null,
    kms_key_name=null,
    labels=null,
    location=null,
    maven_config=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    format: format,
    kms_key_name: kms_key_name,
    labels: labels,
    location: location,
    maven_config: maven_config,
    project: project,
    repository_id: repository_id,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withFormat(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          format: value,
        },
      },
    },
  },
  withKmsKeyName(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMavenConfig(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          maven_config: value,
        },
      },
    },
  },
  withMavenConfigMixin(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          maven_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRepositoryId(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          repository_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
