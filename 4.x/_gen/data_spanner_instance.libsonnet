local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    name,
    config=null,
    display_name=null,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_spanner_instance',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      config=config,
      display_name=display_name,
      name=name,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    config=null,
    display_name=null,
    project=null
  ):: std.prune(a={
    config: config,
    display_name: display_name,
    name: name,
    project: project,
  }),
  withConfig(dataSrcLabel, value):: {
    data+: {
      google_spanner_instance+: {
        [dataSrcLabel]+: {
          config: value,
        },
      },
    },
  },
  withDisplayName(dataSrcLabel, value):: {
    data+: {
      google_spanner_instance+: {
        [dataSrcLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withName(dataSrcLabel, value):: {
    data+: {
      google_spanner_instance+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_spanner_instance+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
