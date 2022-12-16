local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    location=null,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_container_aws_versions',
    label=dataSrcLabel,
    attrs=self.newAttrs(location=location, project=project),
    _meta=_meta
  ),
  newAttrs(
    location=null,
    project=null
  ):: std.prune(a={
    location: location,
    project: project,
  }),
  withLocation(dataSrcLabel, value):: {
    data+: {
      google_container_aws_versions+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_container_aws_versions+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
