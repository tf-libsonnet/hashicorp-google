local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_service_attachment', url='', help='`compute_service_attachment` represents the `google_compute_service_attachment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  consumer_accept_lists:: {
    '#new':: d.fn(help='\n`google.compute_service_attachment.consumer_accept_lists.new` constructs a new object with attributes and blocks configured for the `consumer_accept_lists`\nTerraform sub block.\n\n\n\n**Args**:\n  - `connection_limit` (`number`): The number of consumer forwarding rules the consumer project can\ncreate.\n  - `project_id_or_num` (`string`): A project that is allowed to connect to this service attachment.\n\n**Returns**:\n  - An attribute object that represents the `consumer_accept_lists` sub block.\n', args=[]),
    new(
      connection_limit,
      project_id_or_num
    ):: std.prune(a={
      connection_limit: connection_limit,
      project_id_or_num: project_id_or_num,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_service_attachment.new` injects a new `google_compute_service_attachment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_service_attachment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_service_attachment` using the reference:\n\n    $._ref.google_compute_service_attachment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_service_attachment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `connection_preference` (`string`): The connection preference to use for this service attachment. Valid\nvalues include \u0026#34;ACCEPT_AUTOMATIC\u0026#34;, \u0026#34;ACCEPT_MANUAL\u0026#34;.\n  - `consumer_reject_lists` (`list`): An array of projects that are not allowed to connect to this service\nattachment. When `null`, the `consumer_reject_lists` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `domain_names` (`list`): If specified, the domain name will be used during the integration between\nthe PSC connected endpoints and the Cloud DNS. For example, this is a\nvalid domain name: \u0026#34;p.mycompany.com.\u0026#34;. Current max number of domain names\nsupported is 1. When `null`, the `domain_names` field will be omitted from the resulting object.\n  - `enable_proxy_protocol` (`bool`): If true, enable the proxy protocol which is for supplying client TCP/IP\naddress data in TCP connections that traverse proxies on their way to\ndestination servers.\n  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39;\nwhich means the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `nat_subnets` (`list`): An array of subnets that is provided for NAT in this service attachment.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `reconcile_connections` (`bool`): This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.\n\nIf false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .\nIf true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list. When `null`, the `reconcile_connections` field will be omitted from the resulting object.\n  - `region` (`string`): URL of the region where the resource resides. When `null`, the `region` field will be omitted from the resulting object.\n  - `target_service` (`string`): The URL of a forwarding rule that represents the service identified by\nthis service attachment.\n  - `consumer_accept_lists` (`list[obj]`): An array of projects that are allowed to connect to this service\nattachment. When `null`, the `consumer_accept_lists` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_service_attachment.consumer_accept_lists.new](#fn-consumer_accept_listsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_service_attachment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    connection_preference,
    enable_proxy_protocol,
    name,
    nat_subnets,
    target_service,
    consumer_accept_lists=null,
    consumer_reject_lists=null,
    description=null,
    domain_names=null,
    project=null,
    reconcile_connections=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_service_attachment',
    label=resourceLabel,
    attrs=self.newAttrs(
      connection_preference=connection_preference,
      consumer_accept_lists=consumer_accept_lists,
      consumer_reject_lists=consumer_reject_lists,
      description=description,
      domain_names=domain_names,
      enable_proxy_protocol=enable_proxy_protocol,
      name=name,
      nat_subnets=nat_subnets,
      project=project,
      reconcile_connections=reconcile_connections,
      region=region,
      target_service=target_service,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_service_attachment.newAttrs` constructs a new object with attributes and blocks configured for the `compute_service_attachment`\nTerraform resource.\n\nUnlike [google.compute_service_attachment.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `connection_preference` (`string`): The connection preference to use for this service attachment. Valid\nvalues include &#34;ACCEPT_AUTOMATIC&#34;, &#34;ACCEPT_MANUAL&#34;.\n  - `consumer_reject_lists` (`list`): An array of projects that are not allowed to connect to this service\nattachment. When `null`, the `consumer_reject_lists` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `domain_names` (`list`): If specified, the domain name will be used during the integration between\nthe PSC connected endpoints and the Cloud DNS. For example, this is a\nvalid domain name: &#34;p.mycompany.com.&#34;. Current max number of domain names\nsupported is 1. When `null`, the `domain_names` field will be omitted from the resulting object.\n  - `enable_proxy_protocol` (`bool`): If true, enable the proxy protocol which is for supplying client TCP/IP\naddress data in TCP connections that traverse proxies on their way to\ndestination servers.\n  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39;\nwhich means the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `nat_subnets` (`list`): An array of subnets that is provided for NAT in this service attachment.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `reconcile_connections` (`bool`): This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.\n\nIf false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .\nIf true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list. When `null`, the `reconcile_connections` field will be omitted from the resulting object.\n  - `region` (`string`): URL of the region where the resource resides. When `null`, the `region` field will be omitted from the resulting object.\n  - `target_service` (`string`): The URL of a forwarding rule that represents the service identified by\nthis service attachment.\n  - `consumer_accept_lists` (`list[obj]`): An array of projects that are allowed to connect to this service\nattachment. When `null`, the `consumer_accept_lists` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_service_attachment.consumer_accept_lists.new](#fn-consumer_accept_listsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_service_attachment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_service_attachment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    connection_preference,
    enable_proxy_protocol,
    name,
    nat_subnets,
    target_service,
    consumer_accept_lists=null,
    consumer_reject_lists=null,
    description=null,
    domain_names=null,
    project=null,
    reconcile_connections=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    connection_preference: connection_preference,
    consumer_accept_lists: consumer_accept_lists,
    consumer_reject_lists: consumer_reject_lists,
    description: description,
    domain_names: domain_names,
    enable_proxy_protocol: enable_proxy_protocol,
    name: name,
    nat_subnets: nat_subnets,
    project: project,
    reconcile_connections: reconcile_connections,
    region: region,
    target_service: target_service,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_service_attachment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withConnectionPreference':: d.fn(help='`google.string.withConnectionPreference` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the connection_preference field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `connection_preference` field.\n', args=[]),
  withConnectionPreference(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          connection_preference: value,
        },
      },
    },
  },
  '#withConsumerAcceptLists':: d.fn(help='`google.list[obj].withConsumerAcceptLists` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the consumer_accept_lists field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withConsumerAcceptListsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `consumer_accept_lists` field.\n', args=[]),
  withConsumerAcceptLists(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          consumer_accept_lists: value,
        },
      },
    },
  },
  '#withConsumerAcceptListsMixin':: d.fn(help='`google.list[obj].withConsumerAcceptListsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the consumer_accept_lists field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withConsumerAcceptLists](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `consumer_accept_lists` field.\n', args=[]),
  withConsumerAcceptListsMixin(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          consumer_accept_lists+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withConsumerRejectLists':: d.fn(help='`google.list.withConsumerRejectLists` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the consumer_reject_lists field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `consumer_reject_lists` field.\n', args=[]),
  withConsumerRejectLists(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          consumer_reject_lists: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDomainNames':: d.fn(help='`google.list.withDomainNames` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the domain_names field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `domain_names` field.\n', args=[]),
  withDomainNames(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          domain_names: value,
        },
      },
    },
  },
  '#withEnableProxyProtocol':: d.fn(help='`google.bool.withEnableProxyProtocol` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_proxy_protocol field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_proxy_protocol` field.\n', args=[]),
  withEnableProxyProtocol(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          enable_proxy_protocol: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNatSubnets':: d.fn(help='`google.list.withNatSubnets` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the nat_subnets field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `nat_subnets` field.\n', args=[]),
  withNatSubnets(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          nat_subnets: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withReconcileConnections':: d.fn(help='`google.bool.withReconcileConnections` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the reconcile_connections field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `reconcile_connections` field.\n', args=[]),
  withReconcileConnections(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          reconcile_connections: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTargetService':: d.fn(help='`google.string.withTargetService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the target_service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `target_service` field.\n', args=[]),
  withTargetService(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          target_service: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_service_attachment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
