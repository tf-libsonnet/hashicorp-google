local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  app_engine:: {
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
    new(
      function_=null,
      url_mask=null
    ):: std.prune(a={
      'function': function_,
      url_mask: url_mask,
    }),
  },
  cloud_run:: {
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
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withAppEngine(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          app_engine: value,
        },
      },
    },
  },
  withAppEngineMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          app_engine+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCloudFunction(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          cloud_function: value,
        },
      },
    },
  },
  withCloudFunctionMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          cloud_function+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCloudRun(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          cloud_run: value,
        },
      },
    },
  },
  withCloudRunMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          cloud_run+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withNetworkEndpointType(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          network_endpoint_type: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withPscTargetService(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          psc_target_service: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withSubnetwork(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_network_endpoint_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
