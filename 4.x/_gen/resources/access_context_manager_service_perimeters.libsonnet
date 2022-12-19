local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='access_context_manager_service_perimeters', url='', help='`access_context_manager_service_perimeters` represents the `google_access_context_manager_service_perimeters` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.access_context_manager_service_perimeters.new` injects a new `google_access_context_manager_service_perimeters` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.access_context_manager_service_perimeters.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.access_context_manager_service_perimeters` using the reference:\n\n    $._ref.google_access_context_manager_service_perimeters.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_access_context_manager_service_perimeters.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `parent` (`string`): The AccessPolicy this ServicePerimeter lives in.\nFormat: accessPolicies/{policy_id}\n  - `service_perimeters` (`list[obj]`): The desired Service Perimeters that should replace all existing Service Perimeters in the Access Policy. When `null`, the `service_perimeters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.new](#fn-access_context_manager_service_perimetersservice_perimetersnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.timeouts.new](#fn-access_context_manager_service_perimeterstimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    parent,
    service_perimeters=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_service_perimeters',
    label=resourceLabel,
    attrs=self.newAttrs(parent=parent, service_perimeters=service_perimeters, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.access_context_manager_service_perimeters.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_service_perimeters`\nTerraform resource.\n\nUnlike [google.access_context_manager_service_perimeters.new](#fn-access_context_manager_service_perimetersnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `parent` (`string`): The AccessPolicy this ServicePerimeter lives in.\nFormat: accessPolicies/{policy_id}\n  - `service_perimeters` (`list[obj]`): The desired Service Perimeters that should replace all existing Service Perimeters in the Access Policy. When `null`, the `service_perimeters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.new](#fn-access_context_manager_service_perimetersservice_perimetersnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.timeouts.new](#fn-access_context_manager_service_perimeterstimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_service_perimeters` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    parent,
    service_perimeters=null,
    timeouts=null
  ):: std.prune(a={
    parent: parent,
    service_perimeters: service_perimeters,
    timeouts: timeouts,
  }),
  service_perimeters:: {
    '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.new` constructs a new object with attributes and blocks configured for the `service_perimeters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the ServicePerimeter and its use. Does not affect\nbehavior. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Resource name for the ServicePerimeter. The short_name component must\nbegin with a letter and only include alphanumeric and &#39;_&#39;.\nFormat: accessPolicies/{policy_id}/servicePerimeters/{short_name}\n  - `perimeter_type` (`string`): Specifies the type of the Perimeter. There are two types: regular and\nbridge. Regular Service Perimeter contains resources, access levels,\nand restricted services. Every resource can be in at most\nONE regular Service Perimeter.\n\nIn addition to being in a regular service perimeter, a resource can also\nbe in zero or more perimeter bridges. A perimeter bridge only contains\nresources. Cross project operations are permitted if all effected\nresources share some perimeter (whether bridge or regular). Perimeter\nBridge does not contain access levels or services: those are governed\nentirely by the regular perimeter that resource is in.\n\nPerimeter Bridges are typically useful when building more complex\ntopologies with many independent perimeters that need to share some data\nwith a common perimeter, but should not be able to share data among\nthemselves. Default value: &#34;PERIMETER_TYPE_REGULAR&#34; Possible values: [&#34;PERIMETER_TYPE_REGULAR&#34;, &#34;PERIMETER_TYPE_BRIDGE&#34;] When `null`, the `perimeter_type` field will be omitted from the resulting object.\n  - `title` (`string`): Human readable title. Must be unique within the Policy.\n  - `use_explicit_dry_run_spec` (`bool`): Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists\nfor all Service Perimeters, and that spec is identical to the status for those\nService Perimeters. When this flag is set, it inhibits the generation of the\nimplicit spec, thereby allowing the user to explicitly provide a\nconfiguration (&#34;spec&#34;) to use in a dry-run version of the Service Perimeter.\nThis allows the user to test changes to the enforced config (&#34;status&#34;) without\nactually enforcing them. This testing is done through analyzing the differences\nbetween currently enforced and suggested restrictions. useExplicitDryRunSpec must\nbet set to True if any of the fields in the spec are set to non-default values. When `null`, the `use_explicit_dry_run_spec` field will be omitted from the resulting object.\n  - `spec` (`list[obj]`): Proposed (or dry run) ServicePerimeter configuration.\nThis configuration allows to specify and test ServicePerimeter configuration\nwithout enforcing actual access restrictions. Only allowed to be set when\nthe &#39;useExplicitDryRunSpec&#39; flag is set. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.spec.new](#fn-service_perimetersspecnew) constructor.\n  - `status` (`list[obj]`): ServicePerimeter configuration. Specifies sets of resources,\nrestricted services and access levels that determine\nperimeter content and boundaries. When `null`, the `status` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.status.new](#fn-service_perimetersstatusnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `service_perimeters` sub block.\n', args=[]),
    new(
      name,
      title,
      description=null,
      perimeter_type=null,
      spec=null,
      status=null,
      use_explicit_dry_run_spec=null
    ):: std.prune(a={
      description: description,
      name: name,
      perimeter_type: perimeter_type,
      spec: spec,
      status: status,
      title: title,
      use_explicit_dry_run_spec: use_explicit_dry_run_spec,
    }),
    spec:: {
      egress_policies:: {
        egress_from:: {
          '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.spec.egress_policies.egress_from.new` constructs a new object with attributes and blocks configured for the `egress_from`\nTerraform sub block.\n\n\n\n**Args**:\n  - `identities` (`list`): A list of identities that are allowed access through this &#39;EgressPolicy&#39;. \nShould be in the format of email address. The email address should \nrepresent individual user or service account only. When `null`, the `identities` field will be omitted from the resulting object.\n  - `identity_type` (`string`): Specifies the type of identities that are allowed access to outside the \nperimeter. If left unspecified, then members of &#39;identities&#39; field will \nbe allowed access. Possible values: [&#34;IDENTITY_TYPE_UNSPECIFIED&#34;, &#34;ANY_IDENTITY&#34;, &#34;ANY_USER_ACCOUNT&#34;, &#34;ANY_SERVICE_ACCOUNT&#34;] When `null`, the `identity_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `egress_from` sub block.\n', args=[]),
          new(
            identities=null,
            identity_type=null
          ):: std.prune(a={
            identities: identities,
            identity_type: identity_type,
          }),
        },
        egress_to:: {
          '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.spec.egress_policies.egress_to.new` constructs a new object with attributes and blocks configured for the `egress_to`\nTerraform sub block.\n\n\n\n**Args**:\n  - `external_resources` (`list`): A list of external resources that are allowed to be accessed. A request\nmatches if it contains an external resource in this list (Example:\ns3://bucket/path). Currently &#39;*&#39; is not allowed. When `null`, the `external_resources` field will be omitted from the resulting object.\n  - `resources` (`list`): A list of resources, currently only projects in the form \n&#39;projects/&lt;projectnumber&gt;&#39;, that match this to stanza. A request matches \nif it contains a resource in this list. If * is specified for resources, \nthen this &#39;EgressTo&#39; rule will authorize access to all resources outside \nthe perimeter. When `null`, the `resources` field will be omitted from the resulting object.\n  - `operations` (`list[obj]`): A list of &#39;ApiOperations&#39; that this egress rule applies to. A request matches \nif it contains an operation/service in this list. When `null`, the `operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.spec.egress_policies.egress_to.operations.new](#fn-egress_tooperationsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `egress_to` sub block.\n', args=[]),
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
              '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.spec.egress_policies.egress_to.operations.method_selectors.new` constructs a new object with attributes and blocks configured for the `method_selectors`\nTerraform sub block.\n\n\n\n**Args**:\n  - `method` (`string`): Value for &#39;method&#39; should be a valid method name for the corresponding \n&#39;serviceName&#39; in &#39;ApiOperation&#39;. If &#39;*&#39; used as value for method, \nthen ALL methods and permissions are allowed. When `null`, the `method` field will be omitted from the resulting object.\n  - `permission` (`string`): Value for permission should be a valid Cloud IAM permission for the \ncorresponding &#39;serviceName&#39; in &#39;ApiOperation&#39;. When `null`, the `permission` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `method_selectors` sub block.\n', args=[]),
              new(
                method=null,
                permission=null
              ):: std.prune(a={
                method: method,
                permission: permission,
              }),
            },
            '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.spec.egress_policies.egress_to.operations.new` constructs a new object with attributes and blocks configured for the `operations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service_name` (`string`): The name of the API whose methods or permissions the &#39;IngressPolicy&#39; or \n&#39;EgressPolicy&#39; want to allow. A single &#39;ApiOperation&#39; with serviceName \nfield set to &#39;*&#39; will allow all methods AND permissions for all services. When `null`, the `service_name` field will be omitted from the resulting object.\n  - `method_selectors` (`list[obj]`): API methods or permissions to allow. Method or permission must belong \nto the service specified by &#39;serviceName&#39; field. A single MethodSelector \nentry with &#39;*&#39; specified for the &#39;method&#39; field will allow all methods \nAND permissions for the service specified in &#39;serviceName&#39;. When `null`, the `method_selectors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.spec.egress_policies.egress_to.operations.method_selectors.new](#fn-operationsmethod_selectorsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `operations` sub block.\n', args=[]),
            new(
              method_selectors=null,
              service_name=null
            ):: std.prune(a={
              method_selectors: method_selectors,
              service_name: service_name,
            }),
          },
        },
        '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.spec.egress_policies.new` constructs a new object with attributes and blocks configured for the `egress_policies`\nTerraform sub block.\n\n\n\n**Args**:\n  - `egress_from` (`list[obj]`): Defines conditions on the source of a request causing this &#39;EgressPolicy&#39; to apply. When `null`, the `egress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.spec.egress_policies.egress_from.new](#fn-egress_policiesegress_fromnew) constructor.\n  - `egress_to` (`list[obj]`): Defines the conditions on the &#39;ApiOperation&#39; and destination resources that \ncause this &#39;EgressPolicy&#39; to apply. When `null`, the `egress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.spec.egress_policies.egress_to.new](#fn-egress_policiesegress_tonew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `egress_policies` sub block.\n', args=[]),
        new(
          egress_from=null,
          egress_to=null
        ):: std.prune(a={
          egress_from: egress_from,
          egress_to: egress_to,
        }),
      },
      ingress_policies:: {
        ingress_from:: {
          '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.spec.ingress_policies.ingress_from.new` constructs a new object with attributes and blocks configured for the `ingress_from`\nTerraform sub block.\n\n\n\n**Args**:\n  - `identities` (`list`): A list of identities that are allowed access through this ingress policy.\nShould be in the format of email address. The email address should represent \nindividual user or service account only. When `null`, the `identities` field will be omitted from the resulting object.\n  - `identity_type` (`string`): Specifies the type of identities that are allowed access from outside the \nperimeter. If left unspecified, then members of &#39;identities&#39; field will be \nallowed access. Possible values: [&#34;IDENTITY_TYPE_UNSPECIFIED&#34;, &#34;ANY_IDENTITY&#34;, &#34;ANY_USER_ACCOUNT&#34;, &#34;ANY_SERVICE_ACCOUNT&#34;] When `null`, the `identity_type` field will be omitted from the resulting object.\n  - `sources` (`list[obj]`): Sources that this &#39;IngressPolicy&#39; authorizes access from. When `null`, the `sources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.spec.ingress_policies.ingress_from.sources.new](#fn-ingress_fromsourcesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `ingress_from` sub block.\n', args=[]),
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
            '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.spec.ingress_policies.ingress_from.sources.new` constructs a new object with attributes and blocks configured for the `sources`\nTerraform sub block.\n\n\n\n**Args**:\n  - `access_level` (`string`): An &#39;AccessLevel&#39; resource name that allow resources within the \n&#39;ServicePerimeters&#39; to be accessed from the internet. &#39;AccessLevels&#39; listed \nmust be in the same policy as this &#39;ServicePerimeter&#39;. Referencing a nonexistent\n&#39;AccessLevel&#39; will cause an error. If no &#39;AccessLevel&#39; names are listed, \nresources within the perimeter can only be accessed via Google Cloud calls \nwith request origins within the perimeter. \nExample &#39;accessPolicies/MY_POLICY/accessLevels/MY_LEVEL.&#39; \nIf * is specified, then all IngressSources will be allowed. When `null`, the `access_level` field will be omitted from the resulting object.\n  - `resource` (`string`): A Google Cloud resource that is allowed to ingress the perimeter. \nRequests from these resources will be allowed to access perimeter data. \nCurrently only projects are allowed. Format &#39;projects/{project_number}&#39; \nThe project may be in any Google Cloud organization, not just the \norganization that the perimeter is defined in. &#39;*&#39; is not allowed, the case \nof allowing all Google Cloud resources only is not supported. When `null`, the `resource` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `sources` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.spec.ingress_policies.ingress_to.new` constructs a new object with attributes and blocks configured for the `ingress_to`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resources` (`list`): A list of resources, currently only projects in the form \n&#39;projects/&lt;projectnumber&gt;&#39;, protected by this &#39;ServicePerimeter&#39;\nthat are allowed to be accessed by sources defined in the\ncorresponding &#39;IngressFrom&#39;. A request matches if it contains\na resource in this list. If &#39;*&#39; is specified for resources,\nthen this &#39;IngressTo&#39; rule will authorize access to all \nresources inside the perimeter, provided that the request\nalso matches the &#39;operations&#39; field. When `null`, the `resources` field will be omitted from the resulting object.\n  - `operations` (`list[obj]`): A list of &#39;ApiOperations&#39; the sources specified in corresponding &#39;IngressFrom&#39; \nare allowed to perform in this &#39;ServicePerimeter&#39;. When `null`, the `operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.spec.ingress_policies.ingress_to.operations.new](#fn-ingress_tooperationsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `ingress_to` sub block.\n', args=[]),
          new(
            operations=null,
            resources=null
          ):: std.prune(a={
            operations: operations,
            resources: resources,
          }),
          operations:: {
            method_selectors:: {
              '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.spec.ingress_policies.ingress_to.operations.method_selectors.new` constructs a new object with attributes and blocks configured for the `method_selectors`\nTerraform sub block.\n\n\n\n**Args**:\n  - `method` (`string`): Value for method should be a valid method name for the corresponding \nserviceName in &#39;ApiOperation&#39;. If &#39;*&#39; used as value for &#39;method&#39;, then \nALL methods and permissions are allowed. When `null`, the `method` field will be omitted from the resulting object.\n  - `permission` (`string`): Value for permission should be a valid Cloud IAM permission for the \ncorresponding &#39;serviceName&#39; in &#39;ApiOperation&#39;. When `null`, the `permission` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `method_selectors` sub block.\n', args=[]),
              new(
                method=null,
                permission=null
              ):: std.prune(a={
                method: method,
                permission: permission,
              }),
            },
            '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.spec.ingress_policies.ingress_to.operations.new` constructs a new object with attributes and blocks configured for the `operations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service_name` (`string`): The name of the API whose methods or permissions the &#39;IngressPolicy&#39; or \n&#39;EgressPolicy&#39; want to allow. A single &#39;ApiOperation&#39; with &#39;serviceName&#39; \nfield set to &#39;*&#39; will allow all methods AND permissions for all services. When `null`, the `service_name` field will be omitted from the resulting object.\n  - `method_selectors` (`list[obj]`): API methods or permissions to allow. Method or permission must belong to \nthe service specified by serviceName field. A single &#39;MethodSelector&#39; entry \nwith &#39;*&#39; specified for the method field will allow all methods AND \npermissions for the service specified in &#39;serviceName&#39;. When `null`, the `method_selectors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.spec.ingress_policies.ingress_to.operations.method_selectors.new](#fn-operationsmethod_selectorsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `operations` sub block.\n', args=[]),
            new(
              method_selectors=null,
              service_name=null
            ):: std.prune(a={
              method_selectors: method_selectors,
              service_name: service_name,
            }),
          },
        },
        '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.spec.ingress_policies.new` constructs a new object with attributes and blocks configured for the `ingress_policies`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ingress_from` (`list[obj]`): Defines the conditions on the source of a request causing this &#39;IngressPolicy&#39;\nto apply. When `null`, the `ingress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.spec.ingress_policies.ingress_from.new](#fn-ingress_policiesingress_fromnew) constructor.\n  - `ingress_to` (`list[obj]`): Defines the conditions on the &#39;ApiOperation&#39; and request destination that cause\nthis &#39;IngressPolicy&#39; to apply. When `null`, the `ingress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.spec.ingress_policies.ingress_to.new](#fn-ingress_policiesingress_tonew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `ingress_policies` sub block.\n', args=[]),
        new(
          ingress_from=null,
          ingress_to=null
        ):: std.prune(a={
          ingress_from: ingress_from,
          ingress_to: ingress_to,
        }),
      },
      '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.spec.new` constructs a new object with attributes and blocks configured for the `spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `access_levels` (`list`): A list of AccessLevel resource names that allow resources within\nthe ServicePerimeter to be accessed from the internet.\nAccessLevels listed must be in the same policy as this\nServicePerimeter. Referencing a nonexistent AccessLevel is a\nsyntax error. If no AccessLevel names are listed, resources within\nthe perimeter can only be accessed via GCP calls with request\norigins within the perimeter. For Service Perimeter Bridge, must\nbe empty.\n\nFormat: accessPolicies/{policy_id}/accessLevels/{access_level_name} When `null`, the `access_levels` field will be omitted from the resulting object.\n  - `resources` (`list`): A list of GCP resources that are inside of the service perimeter.\nCurrently only projects are allowed.\nFormat: projects/{project_number} When `null`, the `resources` field will be omitted from the resulting object.\n  - `restricted_services` (`list`): GCP services that are subject to the Service Perimeter\nrestrictions. Must contain a list of services. For example, if\n&#39;storage.googleapis.com&#39; is specified, access to the storage\nbuckets inside the perimeter must meet the perimeter&#39;s access\nrestrictions. When `null`, the `restricted_services` field will be omitted from the resulting object.\n  - `egress_policies` (`list[obj]`): List of EgressPolicies to apply to the perimeter. A perimeter may \nhave multiple EgressPolicies, each of which is evaluated separately.\nAccess is granted if any EgressPolicy grants it. Must be empty for \na perimeter bridge. When `null`, the `egress_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.spec.egress_policies.new](#fn-specegress_policiesnew) constructor.\n  - `ingress_policies` (`list[obj]`): List of &#39;IngressPolicies&#39; to apply to the perimeter. A perimeter may\nhave multiple &#39;IngressPolicies&#39;, each of which is evaluated\nseparately. Access is granted if any &#39;Ingress Policy&#39; grants it.\nMust be empty for a perimeter bridge. When `null`, the `ingress_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.spec.ingress_policies.new](#fn-specingress_policiesnew) constructor.\n  - `vpc_accessible_services` (`list[obj]`): Specifies how APIs are allowed to communicate within the Service\nPerimeter. When `null`, the `vpc_accessible_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.spec.vpc_accessible_services.new](#fn-specvpc_accessible_servicesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `spec` sub block.\n', args=[]),
      new(
        access_levels=null,
        egress_policies=null,
        ingress_policies=null,
        resources=null,
        restricted_services=null,
        vpc_accessible_services=null
      ):: std.prune(a={
        access_levels: access_levels,
        egress_policies: egress_policies,
        ingress_policies: ingress_policies,
        resources: resources,
        restricted_services: restricted_services,
        vpc_accessible_services: vpc_accessible_services,
      }),
      vpc_accessible_services:: {
        '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.spec.vpc_accessible_services.new` constructs a new object with attributes and blocks configured for the `vpc_accessible_services`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_services` (`list`): The list of APIs usable within the Service Perimeter.\nMust be empty unless &#39;enableRestriction&#39; is True. When `null`, the `allowed_services` field will be omitted from the resulting object.\n  - `enable_restriction` (`bool`): Whether to restrict API calls within the Service Perimeter to the\nlist of APIs specified in &#39;allowedServices&#39;. When `null`, the `enable_restriction` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `vpc_accessible_services` sub block.\n', args=[]),
        new(
          allowed_services=null,
          enable_restriction=null
        ):: std.prune(a={
          allowed_services: allowed_services,
          enable_restriction: enable_restriction,
        }),
      },
    },
    status:: {
      egress_policies:: {
        egress_from:: {
          '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.status.egress_policies.egress_from.new` constructs a new object with attributes and blocks configured for the `egress_from`\nTerraform sub block.\n\n\n\n**Args**:\n  - `identities` (`list`): A list of identities that are allowed access through this &#39;EgressPolicy&#39;. \nShould be in the format of email address. The email address should \nrepresent individual user or service account only. When `null`, the `identities` field will be omitted from the resulting object.\n  - `identity_type` (`string`): Specifies the type of identities that are allowed access to outside the \nperimeter. If left unspecified, then members of &#39;identities&#39; field will \nbe allowed access. Possible values: [&#34;IDENTITY_TYPE_UNSPECIFIED&#34;, &#34;ANY_IDENTITY&#34;, &#34;ANY_USER_ACCOUNT&#34;, &#34;ANY_SERVICE_ACCOUNT&#34;] When `null`, the `identity_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `egress_from` sub block.\n', args=[]),
          new(
            identities=null,
            identity_type=null
          ):: std.prune(a={
            identities: identities,
            identity_type: identity_type,
          }),
        },
        egress_to:: {
          '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.status.egress_policies.egress_to.new` constructs a new object with attributes and blocks configured for the `egress_to`\nTerraform sub block.\n\n\n\n**Args**:\n  - `external_resources` (`list`): A list of external resources that are allowed to be accessed. A request\nmatches if it contains an external resource in this list (Example:\ns3://bucket/path). Currently &#39;*&#39; is not allowed. When `null`, the `external_resources` field will be omitted from the resulting object.\n  - `resources` (`list`): A list of resources, currently only projects in the form \n&#39;projects/&lt;projectnumber&gt;&#39;, that match this to stanza. A request matches \nif it contains a resource in this list. If * is specified for resources, \nthen this &#39;EgressTo&#39; rule will authorize access to all resources outside \nthe perimeter. When `null`, the `resources` field will be omitted from the resulting object.\n  - `operations` (`list[obj]`): A list of &#39;ApiOperations&#39; that this egress rule applies to. A request matches \nif it contains an operation/service in this list. When `null`, the `operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.status.egress_policies.egress_to.operations.new](#fn-egress_tooperationsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `egress_to` sub block.\n', args=[]),
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
              '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.status.egress_policies.egress_to.operations.method_selectors.new` constructs a new object with attributes and blocks configured for the `method_selectors`\nTerraform sub block.\n\n\n\n**Args**:\n  - `method` (`string`): Value for &#39;method&#39; should be a valid method name for the corresponding \n&#39;serviceName&#39; in &#39;ApiOperation&#39;. If &#39;*&#39; used as value for method, \nthen ALL methods and permissions are allowed. When `null`, the `method` field will be omitted from the resulting object.\n  - `permission` (`string`): Value for permission should be a valid Cloud IAM permission for the \ncorresponding &#39;serviceName&#39; in &#39;ApiOperation&#39;. When `null`, the `permission` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `method_selectors` sub block.\n', args=[]),
              new(
                method=null,
                permission=null
              ):: std.prune(a={
                method: method,
                permission: permission,
              }),
            },
            '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.status.egress_policies.egress_to.operations.new` constructs a new object with attributes and blocks configured for the `operations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service_name` (`string`): The name of the API whose methods or permissions the &#39;IngressPolicy&#39; or \n&#39;EgressPolicy&#39; want to allow. A single &#39;ApiOperation&#39; with serviceName \nfield set to &#39;*&#39; will allow all methods AND permissions for all services. When `null`, the `service_name` field will be omitted from the resulting object.\n  - `method_selectors` (`list[obj]`): API methods or permissions to allow. Method or permission must belong \nto the service specified by &#39;serviceName&#39; field. A single MethodSelector \nentry with &#39;*&#39; specified for the &#39;method&#39; field will allow all methods \nAND permissions for the service specified in &#39;serviceName&#39;. When `null`, the `method_selectors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.status.egress_policies.egress_to.operations.method_selectors.new](#fn-operationsmethod_selectorsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `operations` sub block.\n', args=[]),
            new(
              method_selectors=null,
              service_name=null
            ):: std.prune(a={
              method_selectors: method_selectors,
              service_name: service_name,
            }),
          },
        },
        '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.status.egress_policies.new` constructs a new object with attributes and blocks configured for the `egress_policies`\nTerraform sub block.\n\n\n\n**Args**:\n  - `egress_from` (`list[obj]`): Defines conditions on the source of a request causing this &#39;EgressPolicy&#39; to apply. When `null`, the `egress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.status.egress_policies.egress_from.new](#fn-egress_policiesegress_fromnew) constructor.\n  - `egress_to` (`list[obj]`): Defines the conditions on the &#39;ApiOperation&#39; and destination resources that \ncause this &#39;EgressPolicy&#39; to apply. When `null`, the `egress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.status.egress_policies.egress_to.new](#fn-egress_policiesegress_tonew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `egress_policies` sub block.\n', args=[]),
        new(
          egress_from=null,
          egress_to=null
        ):: std.prune(a={
          egress_from: egress_from,
          egress_to: egress_to,
        }),
      },
      ingress_policies:: {
        ingress_from:: {
          '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.status.ingress_policies.ingress_from.new` constructs a new object with attributes and blocks configured for the `ingress_from`\nTerraform sub block.\n\n\n\n**Args**:\n  - `identities` (`list`): A list of identities that are allowed access through this ingress policy.\nShould be in the format of email address. The email address should represent \nindividual user or service account only. When `null`, the `identities` field will be omitted from the resulting object.\n  - `identity_type` (`string`): Specifies the type of identities that are allowed access from outside the \nperimeter. If left unspecified, then members of &#39;identities&#39; field will be \nallowed access. Possible values: [&#34;IDENTITY_TYPE_UNSPECIFIED&#34;, &#34;ANY_IDENTITY&#34;, &#34;ANY_USER_ACCOUNT&#34;, &#34;ANY_SERVICE_ACCOUNT&#34;] When `null`, the `identity_type` field will be omitted from the resulting object.\n  - `sources` (`list[obj]`): Sources that this &#39;IngressPolicy&#39; authorizes access from. When `null`, the `sources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.status.ingress_policies.ingress_from.sources.new](#fn-ingress_fromsourcesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `ingress_from` sub block.\n', args=[]),
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
            '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.status.ingress_policies.ingress_from.sources.new` constructs a new object with attributes and blocks configured for the `sources`\nTerraform sub block.\n\n\n\n**Args**:\n  - `access_level` (`string`): An &#39;AccessLevel&#39; resource name that allow resources within the \n&#39;ServicePerimeters&#39; to be accessed from the internet. &#39;AccessLevels&#39; listed \nmust be in the same policy as this &#39;ServicePerimeter&#39;. Referencing a nonexistent\n&#39;AccessLevel&#39; will cause an error. If no &#39;AccessLevel&#39; names are listed, \nresources within the perimeter can only be accessed via Google Cloud calls \nwith request origins within the perimeter. \nExample &#39;accessPolicies/MY_POLICY/accessLevels/MY_LEVEL.&#39; \nIf * is specified, then all IngressSources will be allowed. When `null`, the `access_level` field will be omitted from the resulting object.\n  - `resource` (`string`): A Google Cloud resource that is allowed to ingress the perimeter. \nRequests from these resources will be allowed to access perimeter data. \nCurrently only projects are allowed. Format &#39;projects/{project_number}&#39; \nThe project may be in any Google Cloud organization, not just the \norganization that the perimeter is defined in. &#39;*&#39; is not allowed, the case \nof allowing all Google Cloud resources only is not supported. When `null`, the `resource` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `sources` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.status.ingress_policies.ingress_to.new` constructs a new object with attributes and blocks configured for the `ingress_to`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resources` (`list`): A list of resources, currently only projects in the form \n&#39;projects/&lt;projectnumber&gt;&#39;, protected by this &#39;ServicePerimeter&#39;\nthat are allowed to be accessed by sources defined in the\ncorresponding &#39;IngressFrom&#39;. A request matches if it contains\na resource in this list. If &#39;*&#39; is specified for resources,\nthen this &#39;IngressTo&#39; rule will authorize access to all \nresources inside the perimeter, provided that the request\nalso matches the &#39;operations&#39; field. When `null`, the `resources` field will be omitted from the resulting object.\n  - `operations` (`list[obj]`): A list of &#39;ApiOperations&#39; the sources specified in corresponding &#39;IngressFrom&#39; \nare allowed to perform in this &#39;ServicePerimeter&#39;. When `null`, the `operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.status.ingress_policies.ingress_to.operations.new](#fn-ingress_tooperationsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `ingress_to` sub block.\n', args=[]),
          new(
            operations=null,
            resources=null
          ):: std.prune(a={
            operations: operations,
            resources: resources,
          }),
          operations:: {
            method_selectors:: {
              '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.status.ingress_policies.ingress_to.operations.method_selectors.new` constructs a new object with attributes and blocks configured for the `method_selectors`\nTerraform sub block.\n\n\n\n**Args**:\n  - `method` (`string`): Value for method should be a valid method name for the corresponding \nserviceName in &#39;ApiOperation&#39;. If &#39;*&#39; used as value for &#39;method&#39;, then \nALL methods and permissions are allowed. When `null`, the `method` field will be omitted from the resulting object.\n  - `permission` (`string`): Value for permission should be a valid Cloud IAM permission for the \ncorresponding &#39;serviceName&#39; in &#39;ApiOperation&#39;. When `null`, the `permission` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `method_selectors` sub block.\n', args=[]),
              new(
                method=null,
                permission=null
              ):: std.prune(a={
                method: method,
                permission: permission,
              }),
            },
            '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.status.ingress_policies.ingress_to.operations.new` constructs a new object with attributes and blocks configured for the `operations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service_name` (`string`): The name of the API whose methods or permissions the &#39;IngressPolicy&#39; or \n&#39;EgressPolicy&#39; want to allow. A single &#39;ApiOperation&#39; with &#39;serviceName&#39; \nfield set to &#39;*&#39; will allow all methods AND permissions for all services. When `null`, the `service_name` field will be omitted from the resulting object.\n  - `method_selectors` (`list[obj]`): API methods or permissions to allow. Method or permission must belong to \nthe service specified by serviceName field. A single &#39;MethodSelector&#39; entry \nwith &#39;*&#39; specified for the method field will allow all methods AND \npermissions for the service specified in &#39;serviceName&#39;. When `null`, the `method_selectors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.status.ingress_policies.ingress_to.operations.method_selectors.new](#fn-operationsmethod_selectorsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `operations` sub block.\n', args=[]),
            new(
              method_selectors=null,
              service_name=null
            ):: std.prune(a={
              method_selectors: method_selectors,
              service_name: service_name,
            }),
          },
        },
        '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.status.ingress_policies.new` constructs a new object with attributes and blocks configured for the `ingress_policies`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ingress_from` (`list[obj]`): Defines the conditions on the source of a request causing this &#39;IngressPolicy&#39;\nto apply. When `null`, the `ingress_from` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.status.ingress_policies.ingress_from.new](#fn-ingress_policiesingress_fromnew) constructor.\n  - `ingress_to` (`list[obj]`): Defines the conditions on the &#39;ApiOperation&#39; and request destination that cause\nthis &#39;IngressPolicy&#39; to apply. When `null`, the `ingress_to` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.status.ingress_policies.ingress_to.new](#fn-ingress_policiesingress_tonew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `ingress_policies` sub block.\n', args=[]),
        new(
          ingress_from=null,
          ingress_to=null
        ):: std.prune(a={
          ingress_from: ingress_from,
          ingress_to: ingress_to,
        }),
      },
      '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.status.new` constructs a new object with attributes and blocks configured for the `status`\nTerraform sub block.\n\n\n\n**Args**:\n  - `access_levels` (`list`): A list of AccessLevel resource names that allow resources within\nthe ServicePerimeter to be accessed from the internet.\nAccessLevels listed must be in the same policy as this\nServicePerimeter. Referencing a nonexistent AccessLevel is a\nsyntax error. If no AccessLevel names are listed, resources within\nthe perimeter can only be accessed via GCP calls with request\norigins within the perimeter. For Service Perimeter Bridge, must\nbe empty.\n\nFormat: accessPolicies/{policy_id}/accessLevels/{access_level_name} When `null`, the `access_levels` field will be omitted from the resulting object.\n  - `resources` (`list`): A list of GCP resources that are inside of the service perimeter.\nCurrently only projects are allowed.\nFormat: projects/{project_number} When `null`, the `resources` field will be omitted from the resulting object.\n  - `restricted_services` (`list`): GCP services that are subject to the Service Perimeter\nrestrictions. Must contain a list of services. For example, if\n&#39;storage.googleapis.com&#39; is specified, access to the storage\nbuckets inside the perimeter must meet the perimeter&#39;s access\nrestrictions. When `null`, the `restricted_services` field will be omitted from the resulting object.\n  - `egress_policies` (`list[obj]`): List of EgressPolicies to apply to the perimeter. A perimeter may \nhave multiple EgressPolicies, each of which is evaluated separately.\nAccess is granted if any EgressPolicy grants it. Must be empty for \na perimeter bridge. When `null`, the `egress_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.status.egress_policies.new](#fn-statusegress_policiesnew) constructor.\n  - `ingress_policies` (`list[obj]`): List of &#39;IngressPolicies&#39; to apply to the perimeter. A perimeter may\nhave multiple &#39;IngressPolicies&#39;, each of which is evaluated\nseparately. Access is granted if any &#39;Ingress Policy&#39; grants it.\nMust be empty for a perimeter bridge. When `null`, the `ingress_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.status.ingress_policies.new](#fn-statusingress_policiesnew) constructor.\n  - `vpc_accessible_services` (`list[obj]`): Specifies how APIs are allowed to communicate within the Service\nPerimeter. When `null`, the `vpc_accessible_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_service_perimeters.service_perimeters.status.vpc_accessible_services.new](#fn-statusvpc_accessible_servicesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `status` sub block.\n', args=[]),
      new(
        access_levels=null,
        egress_policies=null,
        ingress_policies=null,
        resources=null,
        restricted_services=null,
        vpc_accessible_services=null
      ):: std.prune(a={
        access_levels: access_levels,
        egress_policies: egress_policies,
        ingress_policies: ingress_policies,
        resources: resources,
        restricted_services: restricted_services,
        vpc_accessible_services: vpc_accessible_services,
      }),
      vpc_accessible_services:: {
        '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.service_perimeters.status.vpc_accessible_services.new` constructs a new object with attributes and blocks configured for the `vpc_accessible_services`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_services` (`list`): The list of APIs usable within the Service Perimeter.\nMust be empty unless &#39;enableRestriction&#39; is True. When `null`, the `allowed_services` field will be omitted from the resulting object.\n  - `enable_restriction` (`bool`): Whether to restrict API calls within the Service Perimeter to the\nlist of APIs specified in &#39;allowedServices&#39;. When `null`, the `enable_restriction` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `vpc_accessible_services` sub block.\n', args=[]),
        new(
          allowed_services=null,
          enable_restriction=null
        ):: std.prune(a={
          allowed_services: allowed_services,
          enable_restriction: enable_restriction,
        }),
      },
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.access_context_manager_service_perimeters.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeters+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withServicePerimeters':: d.fn(help='`google.list[obj].withServicePerimeters` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the service_perimeters field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withServicePerimetersMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `service_perimeters` field.\n', args=[]),
  withServicePerimeters(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeters+: {
        [resourceLabel]+: {
          service_perimeters: value,
        },
      },
    },
  },
  '#withServicePerimetersMixin':: d.fn(help='`google.list[obj].withServicePerimetersMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the service_perimeters field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withServicePerimeters](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `service_perimeters` field.\n', args=[]),
  withServicePerimetersMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeters+: {
        [resourceLabel]+: {
          service_perimeters+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeters+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_service_perimeters+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
