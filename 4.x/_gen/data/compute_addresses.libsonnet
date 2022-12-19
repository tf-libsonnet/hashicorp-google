local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_addresses', url='', help='`compute_addresses` represents the `google_compute_addresses` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.compute_addresses.new` injects a new `data_google_compute_addresses` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.compute_addresses.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.compute_addresses` using the reference:\n\n    $._ref.data_google_compute_addresses.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_compute_addresses.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `filter` (`string`): Filter sets the optional parameter \u0026#34;filter\u0026#34;: A filter expression that\nfilters resources listed in the response. The expression must specify\nthe field name, an operator, and the value that you want to use for\nfiltering. The value must be a string, a number, or a boolean. The\noperator must be either \u0026#34;=\u0026#34;, \u0026#34;!=\u0026#34;, \u0026#34;\u0026gt;\u0026#34;, \u0026#34;\u0026lt;\u0026#34;, \u0026#34;\u0026lt;=\u0026#34;, \u0026#34;\u0026gt;=\u0026#34; or \u0026#34;:\u0026#34;. For\nexample, if you are filtering Compute Engine instances, you can\nexclude instances named \u0026#34;example-instance\u0026#34; by specifying \u0026#34;name !=\nexample-instance\u0026#34;. The \u0026#34;:\u0026#34; operator can be used with string fields to\nmatch substrings. For non-string fields it is equivalent to the \u0026#34;=\u0026#34;\noperator. The \u0026#34;:*\u0026#34; comparison can be used to test whether a key has\nbeen defined. For example, to find all objects with \u0026#34;owner\u0026#34; label\nuse: \u0026#34;\u0026#34;\u0026#34; labels.owner:* \u0026#34;\u0026#34;\u0026#34; You can also filter nested fields. For\nexample, you could specify \u0026#34;scheduling.automaticRestart = false\u0026#34; to\ninclude instances only if they are not scheduled for automatic\nrestarts. You can use filtering on nested fields to filter based on\nresource labels. To filter on multiple expressions, provide each\nseparate expression within parentheses. For example: \u0026#34;\u0026#34;\u0026#34;\n(scheduling.automaticRestart = true) (cpuPlatform = \u0026#34;Intel Skylake\u0026#34;)\n\u0026#34;\u0026#34;\u0026#34; By default, each expression is an \u0026#34;AND\u0026#34; expression. However, you\ncan include \u0026#34;AND\u0026#34; and \u0026#34;OR\u0026#34; expressions explicitly. For example: \u0026#34;\u0026#34;\u0026#34;\n(cpuPlatform = \u0026#34;Intel Skylake\u0026#34;) OR (cpuPlatform = \u0026#34;Intel Broadwell\u0026#34;)\nAND (scheduling.automaticRestart = true) \u0026#34;\u0026#34;\u0026#34; When `null`, the `filter` field will be omitted from the resulting object.\n  - `project` (`string`): The google project in which addresses are listed. Defaults to provider\u0026#39;s configuration if missing. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region that should be considered to search addresses. All regions are considered if missing. When `null`, the `region` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    filter=null,
    project=null,
    region=null,
    _meta={}
  ):: tf.withData(
    type='google_compute_addresses',
    label=dataSrcLabel,
    attrs=self.newAttrs(filter=filter, project=project, region=region),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.compute_addresses.newAttrs` constructs a new object with attributes and blocks configured for the `compute_addresses`\nTerraform data source.\n\nUnlike [google.data.compute_addresses.new](#fn-compute_addressesnew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `filter` (`string`): Filter sets the optional parameter &#34;filter&#34;: A filter expression that\nfilters resources listed in the response. The expression must specify\nthe field name, an operator, and the value that you want to use for\nfiltering. The value must be a string, a number, or a boolean. The\noperator must be either &#34;=&#34;, &#34;!=&#34;, &#34;&gt;&#34;, &#34;&lt;&#34;, &#34;&lt;=&#34;, &#34;&gt;=&#34; or &#34;:&#34;. For\nexample, if you are filtering Compute Engine instances, you can\nexclude instances named &#34;example-instance&#34; by specifying &#34;name !=\nexample-instance&#34;. The &#34;:&#34; operator can be used with string fields to\nmatch substrings. For non-string fields it is equivalent to the &#34;=&#34;\noperator. The &#34;:*&#34; comparison can be used to test whether a key has\nbeen defined. For example, to find all objects with &#34;owner&#34; label\nuse: &#34;&#34;&#34; labels.owner:* &#34;&#34;&#34; You can also filter nested fields. For\nexample, you could specify &#34;scheduling.automaticRestart = false&#34; to\ninclude instances only if they are not scheduled for automatic\nrestarts. You can use filtering on nested fields to filter based on\nresource labels. To filter on multiple expressions, provide each\nseparate expression within parentheses. For example: &#34;&#34;&#34;\n(scheduling.automaticRestart = true) (cpuPlatform = &#34;Intel Skylake&#34;)\n&#34;&#34;&#34; By default, each expression is an &#34;AND&#34; expression. However, you\ncan include &#34;AND&#34; and &#34;OR&#34; expressions explicitly. For example: &#34;&#34;&#34;\n(cpuPlatform = &#34;Intel Skylake&#34;) OR (cpuPlatform = &#34;Intel Broadwell&#34;)\nAND (scheduling.automaticRestart = true) &#34;&#34;&#34; When `null`, the `filter` field will be omitted from the resulting object.\n  - `project` (`string`): The google project in which addresses are listed. Defaults to provider&#39;s configuration if missing. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region that should be considered to search addresses. All regions are considered if missing. When `null`, the `region` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `compute_addresses` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    filter=null,
    project=null,
    region=null
  ):: std.prune(a={
    filter: filter,
    project: project,
    region: region,
  }),
  '#withFilter':: d.fn(help='`google.string.withFilter` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the filter field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `filter` field.\n', args=[]),
  withFilter(dataSrcLabel, value): {
    data+: {
      google_compute_addresses+: {
        [dataSrcLabel]+: {
          filter: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_compute_addresses+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the region field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(dataSrcLabel, value): {
    data+: {
      google_compute_addresses+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
}
