local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    location,
    repository_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_artifact_registry_repository',
    label=dataSrcLabel,
    attrs=self.newAttrs(location=location, project=project, repository_id=repository_id),
    _meta=_meta
  ),
  newAttrs(
    location,
    repository_id,
    project=null
  ):: std.prune(a={
    location: location,
    project: project,
    repository_id: repository_id,
  }),
  withLocation(dataSrcLabel, value):: {
    data+: {
      google_artifact_registry_repository+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_artifact_registry_repository+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withRepositoryId(dataSrcLabel, value):: {
    data+: {
      google_artifact_registry_repository+: {
        [dataSrcLabel]+: {
          repository_id: value,
        },
      },
    },
  },
}
