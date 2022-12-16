local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    _meta={}
  ):: tf.withData(
    type='google_monitoring_uptime_check_ips',
    label=dataSrcLabel,
    attrs=self.newAttrs(),
    _meta=_meta
  ),
  newAttrs(

  ):: std.prune(a={}),
}
