local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    name,
    location=null,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_container_cluster',
    label=dataSrcLabel,
    attrs=self.newAttrs(location=location, name=name, project=project),
    _meta=_meta
  ),
  newAttrs(
    name,
    location=null,
    project=null
  ):: std.prune(a={
    location: location,
    name: name,
    project: project,
  }),
  withLocation(dataSrcLabel, value):: {
    data+: {
      google_container_cluster+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(dataSrcLabel, value):: {
    data+: {
      google_container_cluster+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_container_cluster+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
