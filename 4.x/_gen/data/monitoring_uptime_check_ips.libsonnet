local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='monitoring_uptime_check_ips', url='', help='`monitoring_uptime_check_ips` represents the `google_monitoring_uptime_check_ips` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.monitoring_uptime_check_ips.new` injects a new `data_google_monitoring_uptime_check_ips` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.monitoring_uptime_check_ips.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.monitoring_uptime_check_ips` using the reference:\n\n    $._ref.data_google_monitoring_uptime_check_ips.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_monitoring_uptime_check_ips.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    _meta={}
  ):: tf.withData(
    type='google_monitoring_uptime_check_ips',
    label=dataSrcLabel,
    attrs=self.newAttrs(),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.monitoring_uptime_check_ips.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_uptime_check_ips`\nTerraform data source.\n\nUnlike [google.data.monitoring_uptime_check_ips.new](#fn-monitoringuptimecheckipsnew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `monitoring_uptime_check_ips` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(

  ):: std.prune(a={}),
}
