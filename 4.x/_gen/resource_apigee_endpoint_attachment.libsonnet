local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    endpoint_attachment_id,
    location,
    org_id,
    service_attachment,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_endpoint_attachment',
    label=resourceLabel,
    attrs=self.newAttrs(
      endpoint_attachment_id=endpoint_attachment_id,
      location=location,
      org_id=org_id,
      service_attachment=service_attachment,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    endpoint_attachment_id,
    location,
    org_id,
    service_attachment,
    timeouts=null
  ):: std.prune(a={
    endpoint_attachment_id: endpoint_attachment_id,
    location: location,
    org_id: org_id,
    service_attachment: service_attachment,
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
  withEndpointAttachmentId(resourceLabel, value):: {
    resource+: {
      google_apigee_endpoint_attachment+: {
        [resourceLabel]+: {
          endpoint_attachment_id: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_apigee_endpoint_attachment+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_apigee_endpoint_attachment+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  withServiceAttachment(resourceLabel, value):: {
    resource+: {
      google_apigee_endpoint_attachment+: {
        [resourceLabel]+: {
          service_attachment: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_apigee_endpoint_attachment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_endpoint_attachment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
