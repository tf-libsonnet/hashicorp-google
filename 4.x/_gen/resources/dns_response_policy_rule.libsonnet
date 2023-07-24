local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dns_response_policy_rule', url='', help='`dns_response_policy_rule` represents the `google_dns_response_policy_rule` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  local_data:: {
    local_datas:: {
      '#new':: d.fn(help='\n`google.dns_response_policy_rule.local_data.local_datas.new` constructs a new object with attributes and blocks configured for the `local_datas`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): For example, www.example.com.\n  - `rrdatas` (`list`): As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) When `null`, the `rrdatas` field will be omitted from the resulting object.\n  - `ttl` (`number`): Number of seconds that this ResourceRecordSet can be cached by\nresolvers. When `null`, the `ttl` field will be omitted from the resulting object.\n  - `type` (`string`): One of valid DNS resource types. Possible values: [&#34;A&#34;, &#34;AAAA&#34;, &#34;CAA&#34;, &#34;CNAME&#34;, &#34;DNSKEY&#34;, &#34;DS&#34;, &#34;HTTPS&#34;, &#34;IPSECVPNKEY&#34;, &#34;MX&#34;, &#34;NAPTR&#34;, &#34;NS&#34;, &#34;PTR&#34;, &#34;SOA&#34;, &#34;SPF&#34;, &#34;SRV&#34;, &#34;SSHFP&#34;, &#34;SVCB&#34;, &#34;TLSA&#34;, &#34;TXT&#34;]\n\n**Returns**:\n  - An attribute object that represents the `local_datas` sub block.\n', args=[]),
      new(
        name,
        type,
        rrdatas=null,
        ttl=null
      ):: std.prune(a={
        name: name,
        rrdatas: rrdatas,
        ttl: ttl,
        type: type,
      }),
    },
    '#new':: d.fn(help='\n`google.dns_response_policy_rule.local_data.new` constructs a new object with attributes and blocks configured for the `local_data`\nTerraform sub block.\n\n\n\n**Args**:\n  - `local_datas` (`list[obj]`): All resource record sets for this selector, one per resource record type. The name must match the dns_name. When `null`, the `local_datas` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy_rule.local_data.local_datas.new](#fn-local_datalocal_datasnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `local_data` sub block.\n', args=[]),
    new(
      local_datas=null
    ):: std.prune(a={
      local_datas: local_datas,
    }),
  },
  '#new':: d.fn(help="\n`google.dns_response_policy_rule.new` injects a new `google_dns_response_policy_rule` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dns_response_policy_rule.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dns_response_policy_rule` using the reference:\n\n    $._ref.google_dns_response_policy_rule.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dns_response_policy_rule.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `dns_name` (`string`): The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `response_policy` (`string`): Identifies the response policy addressed by this request.\n  - `rule_name` (`string`): An identifier for this rule. Must be unique with the ResponsePolicy.\n  - `local_data` (`list[obj]`): Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name;\nin particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed. When `null`, the `local_data` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy_rule.local_data.new](#fn-local_datanew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    dns_name,
    response_policy,
    rule_name,
    local_data=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dns_response_policy_rule',
    label=resourceLabel,
    attrs=self.newAttrs(
      dns_name=dns_name,
      local_data=local_data,
      project=project,
      response_policy=response_policy,
      rule_name=rule_name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dns_response_policy_rule.newAttrs` constructs a new object with attributes and blocks configured for the `dns_response_policy_rule`\nTerraform resource.\n\nUnlike [google.dns_response_policy_rule.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `dns_name` (`string`): The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `response_policy` (`string`): Identifies the response policy addressed by this request.\n  - `rule_name` (`string`): An identifier for this rule. Must be unique with the ResponsePolicy.\n  - `local_data` (`list[obj]`): Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name;\nin particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed. When `null`, the `local_data` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy_rule.local_data.new](#fn-local_datanew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dns_response_policy_rule` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dns_name,
    response_policy,
    rule_name,
    local_data=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    dns_name: dns_name,
    local_data: local_data,
    project: project,
    response_policy: response_policy,
    rule_name: rule_name,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.dns_response_policy_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withDnsName':: d.fn(help='`google.string.withDnsName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dns_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dns_name` field.\n', args=[]),
  withDnsName(resourceLabel, value): {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          dns_name: value,
        },
      },
    },
  },
  '#withLocalData':: d.fn(help='`google.list[obj].withLocalData` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the local_data field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLocalDataMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `local_data` field.\n', args=[]),
  withLocalData(resourceLabel, value): {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          local_data: value,
        },
      },
    },
  },
  '#withLocalDataMixin':: d.fn(help='`google.list[obj].withLocalDataMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the local_data field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLocalData](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `local_data` field.\n', args=[]),
  withLocalDataMixin(resourceLabel, value): {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          local_data+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withResponsePolicy':: d.fn(help='`google.string.withResponsePolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the response_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `response_policy` field.\n', args=[]),
  withResponsePolicy(resourceLabel, value): {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          response_policy: value,
        },
      },
    },
  },
  '#withRuleName':: d.fn(help='`google.string.withRuleName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the rule_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `rule_name` field.\n', args=[]),
  withRuleName(resourceLabel, value): {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          rule_name: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
