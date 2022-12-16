local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    service_name,
    grpc_config=null,
    openapi_config=null,
    project=null,
    protoc_output_base64=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_endpoints_service',
    label=resourceLabel,
    attrs=self.newAttrs(
      grpc_config=grpc_config,
      openapi_config=openapi_config,
      project=project,
      protoc_output_base64=protoc_output_base64,
      service_name=service_name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    service_name,
    grpc_config=null,
    openapi_config=null,
    project=null,
    protoc_output_base64=null,
    timeouts=null
  ):: std.prune(a={
    grpc_config: grpc_config,
    openapi_config: openapi_config,
    project: project,
    protoc_output_base64: protoc_output_base64,
    service_name: service_name,
    timeouts: timeouts,
  }),
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
  withGrpcConfig(resourceLabel, value):: {
    resource+: {
      google_endpoints_service+: {
        [resourceLabel]+: {
          grpc_config: value,
        },
      },
    },
  },
  withOpenapiConfig(resourceLabel, value):: {
    resource+: {
      google_endpoints_service+: {
        [resourceLabel]+: {
          openapi_config: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_endpoints_service+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withProtocOutputBase64(resourceLabel, value):: {
    resource+: {
      google_endpoints_service+: {
        [resourceLabel]+: {
          protoc_output_base64: value,
        },
      },
    },
  },
  withServiceName(resourceLabel, value):: {
    resource+: {
      google_endpoints_service+: {
        [resourceLabel]+: {
          service_name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_endpoints_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_endpoints_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
