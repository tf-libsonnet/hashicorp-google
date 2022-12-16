local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    family=null,
    filter=null,
    name=null,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_image',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      family=family,
      filter=filter,
      name=name,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    family=null,
    filter=null,
    name=null,
    project=null
  ):: std.prune(a={
    family: family,
    filter: filter,
    name: name,
    project: project,
  }),
  withFamily(dataSrcLabel, value):: {
    data+: {
      google_compute_image+: {
        [dataSrcLabel]+: {
          family: value,
        },
      },
    },
  },
  withFilter(dataSrcLabel, value):: {
    data+: {
      google_compute_image+: {
        [dataSrcLabel]+: {
          filter: value,
        },
      },
    },
  },
  withName(dataSrcLabel, value):: {
    data+: {
      google_compute_image+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_compute_image+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
