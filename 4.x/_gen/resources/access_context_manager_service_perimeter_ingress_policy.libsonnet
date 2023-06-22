local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='access_context_manager_service_perimeter_ingress_policy', url='', help='`access_context_manager_service_perimeter_ingress_policy` represents the `google_access_context_manager_service_perimeter_ingress_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  ingress_from:: {
    '#new':: d.fn(help='\n`google.access_context_manager_service_perimeter_ingress_policy.ingress_from.new` constructs a new object with attributes and blocks configured for the `ingress_from`\nTerraform sub block.\n\n\n\n**Args**:\n  - `identities` (`list`): A list of identities that are allowed access through this ingress policy.\nShould be in the format of email address. The email address should represent\nindividual user or service account only. When `null`, the `identities` field will be omitted from the resulting object.\n  - `identity_type` (`string`): Specifies the type of identities that are allowed access from outside the\nperimeter. If left unspecified, then members of &#39;identities&#39; field will be\nallowed access. Possible values: [&#34;ANY_IDENTITY&#34;, &#34;ANY_USER_ACCOUNT&#34;, &#34;ANY_SERVICE_ACCOUNT&#34;] When `null`, the `identity_type` field will be omitted from the resulting object.\n  - `sources` (`list[obj]`): Sources that this &#39;IngressPolicy&#39; authorizes access from. When `null`, the `sources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.ingress_from.sources.new](#fn-ingress_fromsourcesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `ingress_from` sub block.\n', args=[]),
    new(
      identities=null,
      identity_type=null,
      sources=null
    ):: std.prune(a={
      identities: identities,
      identity_type: identity_type,
      sources: sources,
    }),
    sources:: {
      '#new':: d.fn(help='\n`google.access_context_manager_service_perimeter_ingress_policy.ingress_from.sources.new` constructs a new object with attributes and blocks configured for the `sources`\nTerraform sub block.\n\n\n\n**Args**:\n  - `access_level` (`string`): An &#39;AccessLevel&#39; resource name that allow resources within the\n&#39;ServicePerimeters&#39; to be accessed from the internet. &#39;AccessLevels&#39; listed\nmust be in the same policy as this &#39;ServicePerimeter&#39;. Referencing a nonexistent\n&#39;AccessLevel&#39; will cause an error. If no &#39;AccessLevel&#39; names are listed,\nresources within the perimeter can only be accessed via Google Cloud calls\nwith request origins within the perimeter.\nExample &#39;accessPolicies/MY_POLICY/accessLevels/MY_LEVEL.&#39;\nIf * is specified, then all IngressSources will be allowed. When `null`, the `access_level` field will be omitted from the resulting object.\n  - `resource` (`string`): A Google Cloud resource that is allowed to ingress the perimeter.\nRequests from these resources will be allowed to access perimeter data.\nCurrently only projects are allowed. Format &#39;projects/{project_number}&#39;\nThe project may be in any Google Cloud organization, not just the\norganization that the perimeter is defined in. &#39;*&#39; is not allowed, the case\nof allowing all Google Cloud resources only is not supported. When `null`, the `resource` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `sources` sub block.\n', args=[]),
      new(
        access_level=null,
        resource=null
      ):: std.prune(a={
        access_level: access_level,
        resource: resource,
      }),
    },
  },
  ingress_to:: {
    '#new':: d.fn(help='\n`google.access_context_manager_service_perimeter_ingress_policy.ingress_to.new` constructs a new object with attributes and blocks configured for the `ingress_to`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resources` (`list`): A list of resources, currently only projects in the form\n&#39;projects/&lt;projectnumber&gt;&#39;, protected by this &#39;ServicePerimeter&#39;\nthat are allowed to be accessed by sources defined in the\ncorresponding &#39;IngressFrom&#39;. A request matches if it contains\na resource in this list. If &#39;*&#39; is specified for resources,\nthen this &#39;IngressTo&#39; rule will authorize access to all\nresources inside the perimeter, provided that the request\nalso matches the &#39;operations&#39; field. When `null`, the `resources` field will be omitted from the resulting object.\n  - `operations` (`list[obj]`): A list of &#39;ApiOperations&#39; the sources specified in corresponding &#39;IngressFrom&#39;\nare allowed to perform in this &#39;ServicePerimeter&#39;. When `null`, the `operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.ingress_to.operations.new](#fn-ingress_tooperationsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `ingress_to` sub block.\n', args=[]),
    new(
      operations=null,
      resources=null
    ):: std.prune(a={
      operations: operations,
      resources: resources,
    }),
    operations:: {
      method_selectors:: {
        '#new':: d.fn(help='\n`google.access_context_manager_service_perimeter_ingress_policy.ingress_to.operations.method_selectors.new` constructs a new object with attributes and blocks configured for the `method_selectors`\nTerraform sub block.\n\n\n\n**Args**:\n  - `method` (`string`): Value for method should be a valid method name for the corresponding\nserviceName in &#39;ApiOperation&#39;. If &#39;*&#39; used as value for &#39;method&#39;, then\nALL methods and permissions are allowed. When `null`, the `method` field will be omitted from the resulting object.\n  - `permission` (`string`): Value for permission should be a valid Cloud IAM permission for the\ncorresponding &#39;serviceName&#39; in &#39;ApiOperation&#39;. When `null`, the `permission` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `method_selectors` sub block.\n', args=[]),
        new(
          method=null,
          permission=null
        ):: std.prune(a={
          method: method,
          permission: permission,
        }),
      },
      '#new':: d.fn(help='\n`google.access_context_manager_service_perimeter_ingress_policy.ingress_to.operations.new` constructs a new object with attributes and blocks configured for the `operations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service_name` (`string`): The name of the API whose methods or permissions the &#39;IngressPolicy&#39; or\n&#39;EgressPolicy&#39; want to allow. A single &#39;ApiOperation&#39; with &#39;serviceName&#39;\nfield set to &#39;*&#39; will allow all methods AND permissions for all services. When `null`, the `service_name` field will be omitted from the resulting object.\n  - `method_selectors` (`list[obj]`): API methods or permissions to allow. Method or permission must belong to\nthe service specified by serviceName field. A single &#39;MethodSelector&#39; entry\nwith &#39;*&#39; specified for the method field will allow all methods AND\npermissions for the service specified in &#39;serviceName&#39;. When `null`, the `method_selectors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.ingress_to.operations.method_selectors.new](#fn-ingress_toingress_tomethod_selectorsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `operations` sub block.\n', args=[]),
      new(
        method_selectors=null,
        service_name=null
      ):: std.prune(a={
        method_selectors: method_selectors,
        service_name: service_name,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.access_context_manager_service_perimeter_ingress_policy.new` injects a new `google_access_context_manager_service_perimeter_ingress_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.access_context_manager_service_perimeter_ingress_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.access_context_manager_service_perimeter_ingress_policy` using the reference:\n\n    $._ref.google_access_context_manager_service_perimeter_ingress_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_access_context_manager_service_perimeter_ingress_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `perimeter` (`string`): The name of the Service Perimeter to add this resource to.\n  - `ingress_from` (`list[obj]`): Defines the conditions on the source of a request causing this \u0026#39;IngressPolicy\u0026#39;\nto apply. When `null`, the `ingress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.ingress_from.new](#fn-ingress_fromnew) constructor.\n  - `ingress_to` (`list[obj]`): Defines the conditions on the \u0026#39;ApiOperation\u0026#39; and request destination that cause\nthis \u0026#39;IngressPolicy\u0026#39; to apply. When `null`, the `ingress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.ingress_to.new](#fn-ingress_tonew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    perimeter,
    ingress_from=null,
    ingress_to=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_service_perimeter_ingress_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      ingress_from=ingress_from,
      ingress_to=ingress_to,
      perimeter=perimeter,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.access_context_manager_service_perimeter_ingress_policy.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_service_perimeter_ingress_policy`\nTerraform resource.\n\nUnlike [google.access_context_manager_service_perimeter_ingress_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `perimeter` (`string`): The name of the Service Perimeter to add this resource to.\n  - `ingress_from` (`list[obj]`): Defines the conditions on the source of a request causing this &#39;IngressPolicy&#39;\nto apply. When `null`, the `ingress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.ingress_from.new](#fn-ingress_fromnew) constructor.\n  - `ingress_to` (`list[obj]`): Defines the conditions on the &#39;ApiOperation&#39; and request destination that cause\nthis &#39;IngressPolicy&#39; to apply. When `null`, the `ingress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.ingress_to.new](#fn-ingress_tonew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeter_ingress_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_service_perimeter_ingress_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    perimeter,
    ingress_from=null,
    ingress_to=null,
    timeouts=null
  ):: std.prune(a={
    ingress_from: ingress_from,
    ingress_to: ingress_to,
    perimeter: perimeter,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.access_context_manager_service_perimeter_ingress_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withIngressFrom':: d.fn(help='`google.list[obj].withIngressFrom` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ingress_from field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withIngressFromMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ingress_from` field.\n', args=[]),
  withIngressFrom(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeter_ingress_policy+: {
        [resourceLabel]+: {
          ingress_from: value,
        },
      },
    },
  },
  '#withIngressFromMixin':: d.fn(help='`google.list[obj].withIngressFromMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ingress_from field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withIngressFrom](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ingress_from` field.\n', args=[]),
  withIngressFromMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeter_ingress_policy+: {
        [resourceLabel]+: {
          ingress_from+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withIngressTo':: d.fn(help='`google.list[obj].withIngressTo` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ingress_to field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withIngressToMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ingress_to` field.\n', args=[]),
  withIngressTo(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeter_ingress_policy+: {
        [resourceLabel]+: {
          ingress_to: value,
        },
      },
    },
  },
  '#withIngressToMixin':: d.fn(help='`google.list[obj].withIngressToMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ingress_to field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withIngressTo](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ingress_to` field.\n', args=[]),
  withIngressToMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeter_ingress_policy+: {
        [resourceLabel]+: {
          ingress_to+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPerimeter':: d.fn(help='`google.string.withPerimeter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the perimeter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `perimeter` field.\n', args=[]),
  withPerimeter(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeter_ingress_policy+: {
        [resourceLabel]+: {
          perimeter: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeter_ingress_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeter_ingress_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
