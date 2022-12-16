local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    location=null,
    project=null,
    version_prefix=null,
    _meta={}
  ):: tf.withData(
    type='google_container_engine_versions',
    label=dataSrcLabel,
    attrs=self.newAttrs(location=location, project=project, version_prefix=version_prefix),
    _meta=_meta
  ),
  newAttrs(
    location=null,
    project=null,
    version_prefix=null
  ):: std.prune(a={
    location: location,
    project: project,
    version_prefix: version_prefix,
  }),
  withLocation(dataSrcLabel, value):: {
    data+: {
      google_container_engine_versions+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_container_engine_versions+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withVersionPrefix(dataSrcLabel, value):: {
    data+: {
      google_container_engine_versions+: {
        [dataSrcLabel]+: {
          version_prefix: value,
        },
      },
    },
  },
}
