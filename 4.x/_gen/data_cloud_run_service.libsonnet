local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    location,
    name,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_cloud_run_service',
    label=dataSrcLabel,
    attrs=self.newAttrs(location=location, name=name, project=project),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    project=null
  ):: std.prune(a={
    location: location,
    name: name,
    project: project,
  }),
  withLocation(dataSrcLabel, value):: {
    data+: {
      google_cloud_run_service+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(dataSrcLabel, value):: {
    data+: {
      google_cloud_run_service+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_cloud_run_service+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
