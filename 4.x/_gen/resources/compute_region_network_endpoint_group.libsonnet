local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_region_network_endpoint_group', url='', help='`compute_region_network_endpoint_group` represents the `google_compute_region_network_endpoint_group` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  app_engine:: {
    '#new':: d.fn(help='\n`google.compute_region_network_endpoint_group.app_engine.new` constructs a new object with attributes and blocks configured for the `app_engine`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service` (`string`): Optional serving service.\nThe service name must be 1-63 characters long, and comply with RFC1035.\nExample value: &#34;default&#34;, &#34;my-service&#34;. When `null`, the `service` field will be omitted from the resulting object.\n  - `url_mask` (`string`): A template to parse service and version fields from a request URL.\nURL mask allows for routing to multiple App Engine services without\nhaving to create multiple Network Endpoint Groups and backend services.\n\nFor example, the request URLs &#34;foo1-dot-appname.appspot.com/v1&#34; and\n&#34;foo1-dot-appname.appspot.com/v2&#34; can be backed by the same Serverless NEG with\nURL mask &#34;-dot-appname.appspot.com/&#34;. The URL mask will parse\nthem to { service = &#34;foo1&#34;, version = &#34;v1&#34; } and { service = &#34;foo1&#34;, version = &#34;v2&#34; } respectively. When `null`, the `url_mask` field will be omitted from the resulting object.\n  - `version` (`string`): Optional serving version.\nThe version must be 1-63 characters long, and comply with RFC1035.\nExample value: &#34;v1&#34;, &#34;v2&#34;. When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `app_engine` sub block.\n', args=[]),
    new(
      service=null,
      url_mask=null,
      version=null
    ):: std.prune(a={
      service: service,
      url_mask: url_mask,
      version: version,
    }),
  },
  cloud_function:: {
    '#new':: d.fn(help='\n`google.compute_region_network_endpoint_group.cloud_function.new` constructs a new object with attributes and blocks configured for the `cloud_function`\nTerraform sub block.\n\n\n\n**Args**:\n  - `function_` (`string`): A user-defined name of the Cloud Function.\nThe function name is case-sensitive and must be 1-63 characters long.\nExample value: &#34;func1&#34;. When `null`, the `function_` field will be omitted from the resulting object.\n  - `url_mask` (`string`): A template to parse function field from a request URL. URL mask allows\nfor routing to multiple Cloud Functions without having to create\nmultiple Network Endpoint Groups and backend services.\n\nFor example, request URLs &#34;mydomain.com/function1&#34; and &#34;mydomain.com/function2&#34;\ncan be backed by the same Serverless NEG with URL mask &#34;/&#34;. The URL mask\nwill parse them to { function = &#34;function1&#34; } and { function = &#34;function2&#34; } respectively. When `null`, the `url_mask` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cloud_function` sub block.\n', args=[]),
    new(
      function_=null,
      url_mask=null
    ):: std.prune(a={
      'function': function_,
      url_mask: url_mask,
    }),
  },
  cloud_run:: {
    '#new':: d.fn(help='\n`google.compute_region_network_endpoint_group.cloud_run.new` constructs a new object with attributes and blocks configured for the `cloud_run`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service` (`string`): Cloud Run service is the main resource of Cloud Run.\nThe service must be 1-63 characters long, and comply with RFC1035.\nExample value: &#34;run-service&#34;. When `null`, the `service` field will be omitted from the resulting object.\n  - `tag` (`string`): Cloud Run tag represents the &#34;named-revision&#34; to provide\nadditional fine-grained traffic routing information.\nThe tag must be 1-63 characters long, and comply with RFC1035.\nExample value: &#34;revision-0010&#34;. When `null`, the `tag` field will be omitted from the resulting object.\n  - `url_mask` (`string`): A template to parse service and tag fields from a request URL.\nURL mask allows for routing to multiple Run services without having\nto create multiple network endpoint groups and backend services.\n\nFor example, request URLs &#34;foo1.domain.com/bar1&#34; and &#34;foo1.domain.com/bar2&#34;\nan be backed by the same Serverless Network Endpoint Group (NEG) with\nURL mask &#34;.domain.com/&#34;. The URL mask will parse them to { service=&#34;bar1&#34;, tag=&#34;foo1&#34; }\nand { service=&#34;bar2&#34;, tag=&#34;foo2&#34; } respectively. When `null`, the `url_mask` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cloud_run` sub block.\n', args=[]),
    new(
      service=null,
      tag=null,
      url_mask=null
    ):: std.prune(a={
      service: service,
      tag: tag,
      url_mask: url_mask,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_region_network_endpoint_group.new` injects a new `google_compute_region_network_endpoint_group` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_region_network_endpoint_group.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_region_network_endpoint_group` using the reference:\n\n    $._ref.google_compute_region_network_endpoint_group.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_region_network_endpoint_group.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `network` (`string`): This field is only used for PSC.\nThe URL of the network to which all network endpoints in the NEG belong. Uses\n\u0026#34;default\u0026#34; project network if unspecified. When `null`, the `network` field will be omitted from the resulting object.\n  - `network_endpoint_type` (`string`): Type of network endpoints in this network endpoint group. Defaults to SERVERLESS Default value: \u0026#34;SERVERLESS\u0026#34; Possible values: [\u0026#34;SERVERLESS\u0026#34;, \u0026#34;PRIVATE_SERVICE_CONNECT\u0026#34;] When `null`, the `network_endpoint_type` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `psc_target_service` (`string`): The target service url used to set up private service connection to\na Google API or a PSC Producer Service Attachment. When `null`, the `psc_target_service` field will be omitted from the resulting object.\n  - `region` (`string`): A reference to the region where the Serverless NEGs Reside.\n  - `subnetwork` (`string`): This field is only used for PSC.\nOptional URL of the subnetwork to which all network endpoints in the NEG belong. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `app_engine` (`list[obj]`): Only valid when networkEndpointType is \u0026#34;SERVERLESS\u0026#34;.\nOnly one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. When `null`, the `app_engine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.app_engine.new](#fn-computeregionnetworkendpointgroupappenginenew) constructor.\n  - `cloud_function` (`list[obj]`): Only valid when networkEndpointType is \u0026#34;SERVERLESS\u0026#34;.\nOnly one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. When `null`, the `cloud_function` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.cloud_function.new](#fn-computeregionnetworkendpointgroupcloudfunctionnew) constructor.\n  - `cloud_run` (`list[obj]`): Only valid when networkEndpointType is \u0026#34;SERVERLESS\u0026#34;.\nOnly one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. When `null`, the `cloud_run` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.cloud_run.new](#fn-computeregionnetworkendpointgroupcloudrunnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.timeouts.new](#fn-computeregionnetworkendpointgrouptimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    region,
    app_engine=null,
    cloud_function=null,
    cloud_run=null,
    description=null,
    network=null,
    network_endpoint_type=null,
    project=null,
    psc_target_service=null,
    subnetwork=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_network_endpoint_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_engine=app_engine,
      cloud_function=cloud_function,
      cloud_run=cloud_run,
      description=description,
      name=name,
      network=network,
      network_endpoint_type=network_endpoint_type,
      project=project,
      psc_target_service=psc_target_service,
      region=region,
      subnetwork=subnetwork,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_region_network_endpoint_group.newAttrs` constructs a new object with attributes and blocks configured for the `compute_region_network_endpoint_group`\nTerraform resource.\n\nUnlike [google.compute_region_network_endpoint_group.new](#fn-computeregionnetworkendpointgroupnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource; provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `network` (`string`): This field is only used for PSC.\nThe URL of the network to which all network endpoints in the NEG belong. Uses\n&#34;default&#34; project network if unspecified. When `null`, the `network` field will be omitted from the resulting object.\n  - `network_endpoint_type` (`string`): Type of network endpoints in this network endpoint group. Defaults to SERVERLESS Default value: &#34;SERVERLESS&#34; Possible values: [&#34;SERVERLESS&#34;, &#34;PRIVATE_SERVICE_CONNECT&#34;] When `null`, the `network_endpoint_type` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `psc_target_service` (`string`): The target service url used to set up private service connection to\na Google API or a PSC Producer Service Attachment. When `null`, the `psc_target_service` field will be omitted from the resulting object.\n  - `region` (`string`): A reference to the region where the Serverless NEGs Reside.\n  - `subnetwork` (`string`): This field is only used for PSC.\nOptional URL of the subnetwork to which all network endpoints in the NEG belong. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `app_engine` (`list[obj]`): Only valid when networkEndpointType is &#34;SERVERLESS&#34;.\nOnly one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. When `null`, the `app_engine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.app_engine.new](#fn-computeregionnetworkendpointgroupappenginenew) constructor.\n  - `cloud_function` (`list[obj]`): Only valid when networkEndpointType is &#34;SERVERLESS&#34;.\nOnly one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. When `null`, the `cloud_function` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.cloud_function.new](#fn-computeregionnetworkendpointgroupcloudfunctionnew) constructor.\n  - `cloud_run` (`list[obj]`): Only valid when networkEndpointType is &#34;SERVERLESS&#34;.\nOnly one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. When `null`, the `cloud_run` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.cloud_run.new](#fn-computeregionnetworkendpointgroupcloudrunnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_network_endpoint_group.timeouts.new](#fn-computeregionnetworkendpointgrouptimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_region_network_endpoint_group` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    region,
    app_engine=null,
    cloud_function=null,
    cloud_run=null,
    description=null,
    network=null,
    network_endpoint_type=null,
    project=null,
    psc_target_service=null,
    subnetwork=null,
    timeouts=null
  ):: std.prune(a={
    app_engine: app_engine,
    cloud_function: cloud_function,
    cloud_run: cloud_run,
    description: description,
    name: name,
    network: network,
    network_endpoint_type: network_endpoint_type,
    project: project,
    psc_target_service: psc_target_service,
    region: region,
    subnetwork: subnetwork,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_region_network_endpoint_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withAppEngine':: d.fn(help='`google.list[obj].withAppEngine` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the app_engine field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAppEngineMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `app_engine` field.\n', args=[]),
  withAppEngine(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          app_engine: value,
        },
      },
    },
  },
  '#withAppEngineMixin':: d.fn(help='`google.list[obj].withAppEngineMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the app_engine field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAppEngine](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `app_engine` field.\n', args=[]),
  withAppEngineMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          app_engine+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCloudFunction':: d.fn(help='`google.list[obj].withCloudFunction` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cloud_function field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCloudFunctionMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cloud_function` field.\n', args=[]),
  withCloudFunction(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          cloud_function: value,
        },
      },
    },
  },
  '#withCloudFunctionMixin':: d.fn(help='`google.list[obj].withCloudFunctionMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cloud_function field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCloudFunction](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cloud_function` field.\n', args=[]),
  withCloudFunctionMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          cloud_function+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCloudRun':: d.fn(help='`google.list[obj].withCloudRun` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cloud_run field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCloudRunMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cloud_run` field.\n', args=[]),
  withCloudRun(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          cloud_run: value,
        },
      },
    },
  },
  '#withCloudRunMixin':: d.fn(help='`google.list[obj].withCloudRunMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cloud_run field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCloudRun](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cloud_run` field.\n', args=[]),
  withCloudRunMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          cloud_run+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withNetworkEndpointType':: d.fn(help='`google.string.withNetworkEndpointType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network_endpoint_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network_endpoint_type` field.\n', args=[]),
  withNetworkEndpointType(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          network_endpoint_type: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPscTargetService':: d.fn(help='`google.string.withPscTargetService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the psc_target_service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `psc_target_service` field.\n', args=[]),
  withPscTargetService(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          psc_target_service: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withSubnetwork':: d.fn(help='`google.string.withSubnetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the subnetwork field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `subnetwork` field.\n', args=[]),
  withSubnetwork(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
