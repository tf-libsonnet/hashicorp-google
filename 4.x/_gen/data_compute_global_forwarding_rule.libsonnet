local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    name,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_global_forwarding_rule',
    label=dataSrcLabel,
    attrs=self.newAttrs(name=name, project=project),
    _meta=_meta
  ),
  newAttrs(
    name,
    project=null
  ):: std.prune(a={
    name: name,
    project: project,
  }),
  withName(dataSrcLabel, value):: {
    data+: {
      google_compute_global_forwarding_rule+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_compute_global_forwarding_rule+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
