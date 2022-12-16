local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
          new(
            identities=null,
            identity_type=null
          ):: std.prune(a={
            identities: identities,
            identity_type: identity_type,
          }),
        },
        egress_to:: {
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
              new(
                method=null,
                permission=null
              ):: std.prune(a={
                method: method,
                permission: permission,
              }),
            },
            new(
              method_selectors=null,
              service_name=null
            ):: std.prune(a={
              method_selectors: method_selectors,
              service_name: service_name,
            }),
          },
        },
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
          new(
            operations=null,
            resources=null
          ):: std.prune(a={
            operations: operations,
            resources: resources,
          }),
          operations:: {
            method_selectors:: {
              new(
                method=null,
                permission=null
              ):: std.prune(a={
                method: method,
                permission: permission,
              }),
            },
            new(
              method_selectors=null,
              service_name=null
            ):: std.prune(a={
              method_selectors: method_selectors,
              service_name: service_name,
            }),
          },
        },
        new(
          ingress_from=null,
          ingress_to=null
        ):: std.prune(a={
          ingress_from: ingress_from,
          ingress_to: ingress_to,
        }),
      },
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
          new(
            identities=null,
            identity_type=null
          ):: std.prune(a={
            identities: identities,
            identity_type: identity_type,
          }),
        },
        egress_to:: {
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
              new(
                method=null,
                permission=null
              ):: std.prune(a={
                method: method,
                permission: permission,
              }),
            },
            new(
              method_selectors=null,
              service_name=null
            ):: std.prune(a={
              method_selectors: method_selectors,
              service_name: service_name,
            }),
          },
        },
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
          new(
            operations=null,
            resources=null
          ):: std.prune(a={
            operations: operations,
            resources: resources,
          }),
          operations:: {
            method_selectors:: {
              new(
                method=null,
                permission=null
              ):: std.prune(a={
                method: method,
                permission: permission,
              }),
            },
            new(
              method_selectors=null,
              service_name=null
            ):: std.prune(a={
              method_selectors: method_selectors,
              service_name: service_name,
            }),
          },
        },
        new(
          ingress_from=null,
          ingress_to=null
        ):: std.prune(a={
          ingress_from: ingress_from,
          ingress_to: ingress_to,
        }),
      },
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
  withParent(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeters+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withServicePerimeters(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeters+: {
        [resourceLabel]+: {
          service_perimeters: value,
        },
      },
    },
  },
  withServicePerimetersMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeters+: {
        [resourceLabel]+: {
          service_perimeters+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeters+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeters+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
