local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    org_id,
    api_proxy_type=null,
    deployment_type=null,
    description=null,
    display_name=null,
    node_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_environment',
    label=resourceLabel,
    attrs=self.newAttrs(
      api_proxy_type=api_proxy_type,
      deployment_type=deployment_type,
      description=description,
      display_name=display_name,
      name=name,
      node_config=node_config,
      org_id=org_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    org_id,
    api_proxy_type=null,
    deployment_type=null,
    description=null,
    display_name=null,
    node_config=null,
    timeouts=null
  ):: std.prune(a={
    api_proxy_type: api_proxy_type,
    deployment_type: deployment_type,
    description: description,
    display_name: display_name,
    name: name,
    node_config: node_config,
    org_id: org_id,
    timeouts: timeouts,
  }),
  node_config:: {
    new(
      max_node_count=null,
      min_node_count=null
    ):: std.prune(a={
      max_node_count: max_node_count,
      min_node_count: min_node_count,
    }),
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
  withApiProxyType(resourceLabel, value):: {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          api_proxy_type: value,
        },
      },
    },
  },
  withDeploymentType(resourceLabel, value):: {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          deployment_type: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNodeConfig(resourceLabel, value):: {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          node_config: value,
        },
      },
    },
  },
  withNodeConfigMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          node_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_environment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
