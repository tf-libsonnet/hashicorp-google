local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    parent,
    title,
    description=null,
    perimeter_type=null,
    spec=null,
    status=null,
    timeouts=null,
    use_explicit_dry_run_spec=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_service_perimeter',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      name=name,
      parent=parent,
      perimeter_type=perimeter_type,
      spec=spec,
      status=status,
      timeouts=timeouts,
      title=title,
      use_explicit_dry_run_spec=use_explicit_dry_run_spec
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    parent,
    title,
    description=null,
    perimeter_type=null,
    spec=null,
    status=null,
    timeouts=null,
    use_explicit_dry_run_spec=null
  ):: std.prune(a={
    description: description,
    name: name,
    parent: parent,
    perimeter_type: perimeter_type,
    spec: spec,
    status: status,
    timeouts: timeouts,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withPerimeterType(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter+: {
        [resourceLabel]+: {
          perimeter_type: value,
        },
      },
    },
  },
  withSpec(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter+: {
        [resourceLabel]+: {
          spec: value,
        },
      },
    },
  },
  withSpecMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter+: {
        [resourceLabel]+: {
          spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withStatus(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter+: {
        [resourceLabel]+: {
          status: value,
        },
      },
    },
  },
  withStatusMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter+: {
        [resourceLabel]+: {
          status+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTitle(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter+: {
        [resourceLabel]+: {
          title: value,
        },
      },
    },
  },
  withUseExplicitDryRunSpec(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_service_perimeter+: {
        [resourceLabel]+: {
          use_explicit_dry_run_spec: value,
        },
      },
    },
  },
}
