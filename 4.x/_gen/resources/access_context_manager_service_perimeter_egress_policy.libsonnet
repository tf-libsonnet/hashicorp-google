local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='access_context_manager_service_perimeter_egress_policy', url='', help='`access_context_manager_service_perimeter_egress_policy` represents the `google_access_context_manager_service_perimeter_egress_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  egress_from:: {
    '#new':: d.fn(help='\n`google.access_context_manager_service_perimeter_egress_policy.egress_from.new` constructs a new object with attributes and blocks configured for the `egress_from`\nTerraform sub block.\n\n\n\n**Args**:\n  - `identities` (`list`): A list of identities that are allowed access through this &#39;EgressPolicy&#39;.\nShould be in the format of email address. The email address should\nrepresent individual user or service account only. When `null`, the `identities` field will be omitted from the resulting object.\n  - `identity_type` (`string`): Specifies the type of identities that are allowed access to outside the\nperimeter. If left unspecified, then members of &#39;identities&#39; field will\nbe allowed access. Possible values: [&#34;ANY_IDENTITY&#34;, &#34;ANY_USER_ACCOUNT&#34;, &#34;ANY_SERVICE_ACCOUNT&#34;] When `null`, the `identity_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `egress_from` sub block.\n', args=[]),
    new(
      identities=null,
      identity_type=null
    ):: std.prune(a={
      identities: identities,
      identity_type: identity_type,
    }),
  },
  egress_to:: {
    '#new':: d.fn(help='\n`google.access_context_manager_service_perimeter_egress_policy.egress_to.new` constructs a new object with attributes and blocks configured for the `egress_to`\nTerraform sub block.\n\n\n\n**Args**:\n  - `external_resources` (`list`): A list of external resources that are allowed to be accessed. A request\nmatches if it contains an external resource in this list (Example:\ns3://bucket/path). Currently &#39;*&#39; is not allowed. When `null`, the `external_resources` field will be omitted from the resulting object.\n  - `resources` (`list`): A list of resources, currently only projects in the form\n&#39;projects/&lt;projectnumber&gt;&#39;, that match this to stanza. A request matches\nif it contains a resource in this list. If * is specified for resources,\nthen this &#39;EgressTo&#39; rule will authorize access to all resources outside\nthe perimeter. When `null`, the `resources` field will be omitted from the resulting object.\n  - `operations` (`list[obj]`): A list of &#39;ApiOperations&#39; that this egress rule applies to. A request matches\nif it contains an operation/service in this list. When `null`, the `operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.egress_to.operations.new](#fn-egress_tooperationsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `egress_to` sub block.\n', args=[]),
    new(
      external_resources=null,
      operations=null,
      resources=null
    ):: std.prune(a={
      external_resources: external_resources,
      operations: operations,
      resources: resources,
    }),
    operations:: {
      method_selectors:: {
        '#new':: d.fn(help='\n`google.access_context_manager_service_perimeter_egress_policy.egress_to.operations.method_selectors.new` constructs a new object with attributes and blocks configured for the `method_selectors`\nTerraform sub block.\n\n\n\n**Args**:\n  - `method` (`string`): Value for &#39;method&#39; should be a valid method name for the corresponding\n&#39;serviceName&#39; in &#39;ApiOperation&#39;. If &#39;*&#39; used as value for method,\nthen ALL methods and permissions are allowed. When `null`, the `method` field will be omitted from the resulting object.\n  - `permission` (`string`): Value for permission should be a valid Cloud IAM permission for the\ncorresponding &#39;serviceName&#39; in &#39;ApiOperation&#39;. When `null`, the `permission` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `method_selectors` sub block.\n', args=[]),
        new(
          method=null,
          permission=null
        ):: std.prune(a={
          method: method,
          permission: permission,
        }),
      },
      '#new':: d.fn(help='\n`google.access_context_manager_service_perimeter_egress_policy.egress_to.operations.new` constructs a new object with attributes and blocks configured for the `operations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service_name` (`string`): The name of the API whose methods or permissions the &#39;IngressPolicy&#39; or\n&#39;EgressPolicy&#39; want to allow. A single &#39;ApiOperation&#39; with serviceName\nfield set to &#39;*&#39; will allow all methods AND permissions for all services. When `null`, the `service_name` field will be omitted from the resulting object.\n  - `method_selectors` (`list[obj]`): API methods or permissions to allow. Method or permission must belong\nto the service specified by &#39;serviceName&#39; field. A single MethodSelector\nentry with &#39;*&#39; specified for the &#39;method&#39; field will allow all methods\nAND permissions for the service specified in &#39;serviceName&#39;. When `null`, the `method_selectors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.egress_to.operations.method_selectors.new](#fn-egress_toegress_tomethod_selectorsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `operations` sub block.\n', args=[]),
      new(
        method_selectors=null,
        service_name=null
      ):: std.prune(a={
        method_selectors: method_selectors,
        service_name: service_name,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.access_context_manager_service_perimeter_egress_policy.new` injects a new `google_access_context_manager_service_perimeter_egress_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.access_context_manager_service_perimeter_egress_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.access_context_manager_service_perimeter_egress_policy` using the reference:\n\n    $._ref.google_access_context_manager_service_perimeter_egress_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_access_context_manager_service_perimeter_egress_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `perimeter` (`string`): The name of the Service Perimeter to add this resource to.\n  - `egress_from` (`list[obj]`): Defines conditions on the source of a request causing this \u0026#39;EgressPolicy\u0026#39; to apply. When `null`, the `egress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.egress_from.new](#fn-egress_fromnew) constructor.\n  - `egress_to` (`list[obj]`): Defines the conditions on the \u0026#39;ApiOperation\u0026#39; and destination resources that\ncause this \u0026#39;EgressPolicy\u0026#39; to apply. When `null`, the `egress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.egress_to.new](#fn-egress_tonew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    perimeter,
    egress_from=null,
    egress_to=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_service_perimeter_egress_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      egress_from=egress_from,
      egress_to=egress_to,
      perimeter=perimeter,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.access_context_manager_service_perimeter_egress_policy.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_service_perimeter_egress_policy`\nTerraform resource.\n\nUnlike [google.access_context_manager_service_perimeter_egress_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `perimeter` (`string`): The name of the Service Perimeter to add this resource to.\n  - `egress_from` (`list[obj]`): Defines conditions on the source of a request causing this &#39;EgressPolicy&#39; to apply. When `null`, the `egress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.egress_from.new](#fn-egress_fromnew) constructor.\n  - `egress_to` (`list[obj]`): Defines the conditions on the &#39;ApiOperation&#39; and destination resources that\ncause this &#39;EgressPolicy&#39; to apply. When `null`, the `egress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.egress_to.new](#fn-egress_tonew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_egress_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_service_perimeter_egress_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    perimeter,
    egress_from=null,
    egress_to=null,
    timeouts=null
  ):: std.prune(a={
    egress_from: egress_from,
    egress_to: egress_to,
    perimeter: perimeter,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.access_context_manager_service_perimeter_egress_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withEgressFrom':: d.fn(help='`google.list[obj].withEgressFrom` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the egress_from field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEgressFromMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `egress_from` field.\n', args=[]),
  withEgressFrom(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeter_egress_policy+: {
        [resourceLabel]+: {
          egress_from: value,
        },
      },
    },
  },
  '#withEgressFromMixin':: d.fn(help='`google.list[obj].withEgressFromMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the egress_from field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEgressFrom](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `egress_from` field.\n', args=[]),
  withEgressFromMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeter_egress_policy+: {
        [resourceLabel]+: {
          egress_from+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEgressTo':: d.fn(help='`google.list[obj].withEgressTo` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the egress_to field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEgressToMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `egress_to` field.\n', args=[]),
  withEgressTo(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeter_egress_policy+: {
        [resourceLabel]+: {
          egress_to: value,
        },
      },
    },
  },
  '#withEgressToMixin':: d.fn(help='`google.list[obj].withEgressToMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the egress_to field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEgressTo](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `egress_to` field.\n', args=[]),
  withEgressToMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeter_egress_policy+: {
        [resourceLabel]+: {
          egress_to+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPerimeter':: d.fn(help='`google.string.withPerimeter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the perimeter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `perimeter` field.\n', args=[]),
  withPerimeter(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeter_egress_policy+: {
        [resourceLabel]+: {
          perimeter: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeter_egress_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeter_egress_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
