local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  autoclass:: {
    new(
      enabled
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  cors:: {
    new(
      max_age_seconds=null,
      method=null,
      origin=null,
      response_header=null
    ):: std.prune(a={
      max_age_seconds: max_age_seconds,
      method: method,
      origin: origin,
      response_header: response_header,
    }),
  },
  custom_placement_config:: {
    new(
      data_locations
    ):: std.prune(a={
      data_locations: data_locations,
    }),
  },
  encryption:: {
    new(
      default_kms_key_name
    ):: std.prune(a={
      default_kms_key_name: default_kms_key_name,
    }),
  },
  lifecycle_rule:: {
    action:: {
      new(
        type,
        storage_class=null
      ):: std.prune(a={
        storage_class: storage_class,
        type: type,
      }),
    },
    condition:: {
      new(
        age=null,
        created_before=null,
        custom_time_before=null,
        days_since_custom_time=null,
        days_since_noncurrent_time=null,
        matches_prefix=null,
        matches_storage_class=null,
        matches_suffix=null,
        noncurrent_time_before=null,
        num_newer_versions=null,
        with_state=null
      ):: std.prune(a={
        age: age,
        created_before: created_before,
        custom_time_before: custom_time_before,
        days_since_custom_time: days_since_custom_time,
        days_since_noncurrent_time: days_since_noncurrent_time,
        matches_prefix: matches_prefix,
        matches_storage_class: matches_storage_class,
        matches_suffix: matches_suffix,
        noncurrent_time_before: noncurrent_time_before,
        num_newer_versions: num_newer_versions,
        with_state: with_state,
      }),
    },
    new(
      action=null,
      condition=null
    ):: std.prune(a={
      action: action,
      condition: condition,
    }),
  },
  logging:: {
    new(
      log_bucket,
      log_object_prefix=null
    ):: std.prune(a={
      log_bucket: log_bucket,
      log_object_prefix: log_object_prefix,
    }),
  },
  new(
    resourceLabel,
    location,
    name,
    autoclass=null,
    cors=null,
    custom_placement_config=null,
    default_event_based_hold=null,
    encryption=null,
    force_destroy=null,
    labels=null,
    lifecycle_rule=null,
    logging=null,
    project=null,
    public_access_prevention=null,
    requester_pays=null,
    retention_policy=null,
    storage_class=null,
    timeouts=null,
    uniform_bucket_level_access=null,
    versioning=null,
    website=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_bucket',
    label=resourceLabel,
    attrs=self.newAttrs(
      autoclass=autoclass,
      cors=cors,
      custom_placement_config=custom_placement_config,
      default_event_based_hold=default_event_based_hold,
      encryption=encryption,
      force_destroy=force_destroy,
      labels=labels,
      lifecycle_rule=lifecycle_rule,
      location=location,
      logging=logging,
      name=name,
      project=project,
      public_access_prevention=public_access_prevention,
      requester_pays=requester_pays,
      retention_policy=retention_policy,
      storage_class=storage_class,
      timeouts=timeouts,
      uniform_bucket_level_access=uniform_bucket_level_access,
      versioning=versioning,
      website=website
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    autoclass=null,
    cors=null,
    custom_placement_config=null,
    default_event_based_hold=null,
    encryption=null,
    force_destroy=null,
    labels=null,
    lifecycle_rule=null,
    logging=null,
    project=null,
    public_access_prevention=null,
    requester_pays=null,
    retention_policy=null,
    storage_class=null,
    timeouts=null,
    uniform_bucket_level_access=null,
    versioning=null,
    website=null
  ):: std.prune(a={
    autoclass: autoclass,
    cors: cors,
    custom_placement_config: custom_placement_config,
    default_event_based_hold: default_event_based_hold,
    encryption: encryption,
    force_destroy: force_destroy,
    labels: labels,
    lifecycle_rule: lifecycle_rule,
    location: location,
    logging: logging,
    name: name,
    project: project,
    public_access_prevention: public_access_prevention,
    requester_pays: requester_pays,
    retention_policy: retention_policy,
    storage_class: storage_class,
    timeouts: timeouts,
    uniform_bucket_level_access: uniform_bucket_level_access,
    versioning: versioning,
    website: website,
  }),
  retention_policy:: {
    new(
      retention_period,
      is_locked=null
    ):: std.prune(a={
      is_locked: is_locked,
      retention_period: retention_period,
    }),
  },
  timeouts:: {
    new(
      create=null,
      read=null,
      update=null
    ):: std.prune(a={
      create: create,
      read: read,
      update: update,
    }),
  },
  versioning:: {
    new(
      enabled
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  website:: {
    new(
      main_page_suffix=null,
      not_found_page=null
    ):: std.prune(a={
      main_page_suffix: main_page_suffix,
      not_found_page: not_found_page,
    }),
  },
  withAutoclass(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          autoclass: value,
        },
      },
    },
  },
  withAutoclassMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          autoclass+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCors(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          cors: value,
        },
      },
    },
  },
  withCorsMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          cors+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCustomPlacementConfig(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          custom_placement_config: value,
        },
      },
    },
  },
  withCustomPlacementConfigMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          custom_placement_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDefaultEventBasedHold(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          default_event_based_hold: value,
        },
      },
    },
  },
  withEncryption(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          encryption: value,
        },
      },
    },
  },
  withEncryptionMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          encryption+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withForceDestroy(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          force_destroy: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLifecycleRule(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          lifecycle_rule: value,
        },
      },
    },
  },
  withLifecycleRuleMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          lifecycle_rule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withLogging(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          logging: value,
        },
      },
    },
  },
  withLoggingMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          logging+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withPublicAccessPrevention(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          public_access_prevention: value,
        },
      },
    },
  },
  withRequesterPays(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          requester_pays: value,
        },
      },
    },
  },
  withRetentionPolicy(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          retention_policy: value,
        },
      },
    },
  },
  withRetentionPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          retention_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withStorageClass(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          storage_class: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUniformBucketLevelAccess(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          uniform_bucket_level_access: value,
        },
      },
    },
  },
  withVersioning(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          versioning: value,
        },
      },
    },
  },
  withVersioningMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          versioning+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withWebsite(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          website: value,
        },
      },
    },
  },
  withWebsiteMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          website+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
