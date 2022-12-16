local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    filter=null,
    most_recent=null,
    name=null,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_instance_template',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      filter=filter,
      most_recent=most_recent,
      name=name,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    filter=null,
    most_recent=null,
    name=null,
    project=null
  ):: std.prune(a={
    filter: filter,
    most_recent: most_recent,
    name: name,
    project: project,
  }),
  withFilter(dataSrcLabel, value):: {
    data+: {
      google_compute_instance_template+: {
        [dataSrcLabel]+: {
          filter: value,
        },
      },
    },
  },
  withMostRecent(dataSrcLabel, value):: {
    data+: {
      google_compute_instance_template+: {
        [dataSrcLabel]+: {
          most_recent: value,
        },
      },
    },
  },
  withName(dataSrcLabel, value):: {
    data+: {
      google_compute_instance_template+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_compute_instance_template+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
