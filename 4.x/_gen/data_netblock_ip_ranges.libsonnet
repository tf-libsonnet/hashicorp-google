local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    range_type=null,
    _meta={}
  ):: tf.withData(
    type='google_netblock_ip_ranges',
    label=dataSrcLabel,
    attrs=self.newAttrs(range_type=range_type),
    _meta=_meta
  ),
  newAttrs(
    range_type=null
  ):: std.prune(a={
    range_type: range_type,
  }),
  withRangeType(dataSrcLabel, value):: {
    data+: {
      google_netblock_ip_ranges+: {
        [dataSrcLabel]+: {
          range_type: value,
        },
      },
    },
  },
}
