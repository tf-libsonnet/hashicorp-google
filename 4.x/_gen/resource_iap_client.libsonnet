local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    brand,
    display_name,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_iap_client',
    label=resourceLabel,
    attrs=self.newAttrs(brand=brand, display_name=display_name, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    brand,
    display_name,
    timeouts=null
  ):: std.prune(a={
    brand: brand,
    display_name: display_name,
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
  withBrand(resourceLabel, value):: {
    resource+: {
      google_iap_client+: {
        [resourceLabel]+: {
          brand: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_iap_client+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_iap_client+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_iap_client+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
