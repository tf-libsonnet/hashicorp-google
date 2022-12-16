local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    parent,
    short_name,
    _meta={}
  ):: tf.withData(
    type='google_tags_tag_value',
    label=dataSrcLabel,
    attrs=self.newAttrs(parent=parent, short_name=short_name),
    _meta=_meta
  ),
  newAttrs(
    parent,
    short_name
  ):: std.prune(a={
    parent: parent,
    short_name: short_name,
  }),
  withParent(dataSrcLabel, value):: {
    data+: {
      google_tags_tag_value+: {
        [dataSrcLabel]+: {
          parent: value,
        },
      },
    },
  },
  withShortName(dataSrcLabel, value):: {
    data+: {
      google_tags_tag_value+: {
        [dataSrcLabel]+: {
          short_name: value,
        },
      },
    },
  },
}
