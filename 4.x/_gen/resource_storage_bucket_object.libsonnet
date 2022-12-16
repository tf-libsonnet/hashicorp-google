local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  customer_encryption:: {
    new(
      encryption_key,
      encryption_algorithm=null
    ):: std.prune(a={
      encryption_algorithm: encryption_algorithm,
      encryption_key: encryption_key,
    }),
  },
  new(
    resourceLabel,
    bucket,
    name,
    cache_control=null,
    content=null,
    content_disposition=null,
    content_encoding=null,
    content_language=null,
    content_type=null,
    customer_encryption=null,
    detect_md5hash=null,
    event_based_hold=null,
    kms_key_name=null,
    metadata=null,
    source=null,
    storage_class=null,
    temporary_hold=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_bucket_object',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket=bucket,
      cache_control=cache_control,
      content=content,
      content_disposition=content_disposition,
      content_encoding=content_encoding,
      content_language=content_language,
      content_type=content_type,
      customer_encryption=customer_encryption,
      detect_md5hash=detect_md5hash,
      event_based_hold=event_based_hold,
      kms_key_name=kms_key_name,
      metadata=metadata,
      name=name,
      source=source,
      storage_class=storage_class,
      temporary_hold=temporary_hold,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    bucket,
    name,
    cache_control=null,
    content=null,
    content_disposition=null,
    content_encoding=null,
    content_language=null,
    content_type=null,
    customer_encryption=null,
    detect_md5hash=null,
    event_based_hold=null,
    kms_key_name=null,
    metadata=null,
    source=null,
    storage_class=null,
    temporary_hold=null,
    timeouts=null
  ):: std.prune(a={
    bucket: bucket,
    cache_control: cache_control,
    content: content,
    content_disposition: content_disposition,
    content_encoding: content_encoding,
    content_language: content_language,
    content_type: content_type,
    customer_encryption: customer_encryption,
    detect_md5hash: detect_md5hash,
    event_based_hold: event_based_hold,
    kms_key_name: kms_key_name,
    metadata: metadata,
    name: name,
    source: source,
    storage_class: storage_class,
    temporary_hold: temporary_hold,
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
  withBucket(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  withCacheControl(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          cache_control: value,
        },
      },
    },
  },
  withContent(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          content: value,
        },
      },
    },
  },
  withContentDisposition(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          content_disposition: value,
        },
      },
    },
  },
  withContentEncoding(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          content_encoding: value,
        },
      },
    },
  },
  withContentLanguage(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          content_language: value,
        },
      },
    },
  },
  withContentType(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          content_type: value,
        },
      },
    },
  },
  withCustomerEncryption(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          customer_encryption: value,
        },
      },
    },
  },
  withCustomerEncryptionMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          customer_encryption+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDetectMd5Hash(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          detect_md5hash: value,
        },
      },
    },
  },
  withEventBasedHold(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          event_based_hold: value,
        },
      },
    },
  },
  withKmsKeyName(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  withMetadata(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withSource(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          source: value,
        },
      },
    },
  },
  withStorageClass(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          storage_class: value,
        },
      },
    },
  },
  withTemporaryHold(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          temporary_hold: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_object+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
