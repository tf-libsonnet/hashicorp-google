local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    display_name,
    parent,
    _meta={}
  ):: tf.withData(
    type='google_active_folder',
    label=dataSrcLabel,
    attrs=self.newAttrs(display_name=display_name, parent=parent),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    parent
  ):: std.prune(a={
    display_name: display_name,
    parent: parent,
  }),
  withDisplayName(dataSrcLabel, value):: {
    data+: {
      google_active_folder+: {
        [dataSrcLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withParent(dataSrcLabel, value):: {
    data+: {
      google_active_folder+: {
        [dataSrcLabel]+: {
          parent: value,
        },
      },
    },
  },
}
