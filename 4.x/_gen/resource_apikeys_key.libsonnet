local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    display_name=null,
    project=null,
    restrictions=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apikeys_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      name=name,
      project=project,
      restrictions=restrictions,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    display_name=null,
    project=null,
    restrictions=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    name: name,
    project: project,
    restrictions: restrictions,
    timeouts: timeouts,
  }),
  restrictions:: {
    android_key_restrictions:: {
      allowed_applications:: {
        new(
          package_name,
          sha1_fingerprint
        ):: std.prune(a={
          package_name: package_name,
          sha1_fingerprint: sha1_fingerprint,
        }),
      },
      new(
        allowed_applications=null
      ):: std.prune(a={
        allowed_applications: allowed_applications,
      }),
    },
    api_targets:: {
      new(
        service,
        methods=null
      ):: std.prune(a={
        methods: methods,
        service: service,
      }),
    },
    browser_key_restrictions:: {
      new(
        allowed_referrers
      ):: std.prune(a={
        allowed_referrers: allowed_referrers,
      }),
    },
    ios_key_restrictions:: {
      new(
        allowed_bundle_ids
      ):: std.prune(a={
        allowed_bundle_ids: allowed_bundle_ids,
      }),
    },
    new(
      android_key_restrictions=null,
      api_targets=null,
      browser_key_restrictions=null,
      ios_key_restrictions=null,
      server_key_restrictions=null
    ):: std.prune(a={
      android_key_restrictions: android_key_restrictions,
      api_targets: api_targets,
      browser_key_restrictions: browser_key_restrictions,
      ios_key_restrictions: ios_key_restrictions,
      server_key_restrictions: server_key_restrictions,
    }),
    server_key_restrictions:: {
      new(
        allowed_ips
      ):: std.prune(a={
        allowed_ips: allowed_ips,
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
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_apikeys_key+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_apikeys_key+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_apikeys_key+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRestrictions(resourceLabel, value):: {
    resource+: {
      google_apikeys_key+: {
        [resourceLabel]+: {
          restrictions: value,
        },
      },
    },
  },
  withRestrictionsMixin(resourceLabel, value):: {
    resource+: {
      google_apikeys_key+: {
        [resourceLabel]+: {
          restrictions+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_apikeys_key+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_apikeys_key+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
