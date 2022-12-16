local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    bucket,
    path,
    content_md5=null,
    content_type=null,
    credentials=null,
    duration=null,
    extension_headers=null,
    http_method=null,
    _meta={}
  ):: tf.withData(
    type='google_storage_object_signed_url',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      bucket=bucket,
      content_md5=content_md5,
      content_type=content_type,
      credentials=credentials,
      duration=duration,
      extension_headers=extension_headers,
      http_method=http_method,
      path=path
    ),
    _meta=_meta
  ),
  newAttrs(
    bucket,
    path,
    content_md5=null,
    content_type=null,
    credentials=null,
    duration=null,
    extension_headers=null,
    http_method=null
  ):: std.prune(a={
    bucket: bucket,
    content_md5: content_md5,
    content_type: content_type,
    credentials: credentials,
    duration: duration,
    extension_headers: extension_headers,
    http_method: http_method,
    path: path,
  }),
  withBucket(dataSrcLabel, value):: {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          bucket: value,
        },
      },
    },
  },
  withContentMd5(dataSrcLabel, value):: {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          content_md5: value,
        },
      },
    },
  },
  withContentType(dataSrcLabel, value):: {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          content_type: value,
        },
      },
    },
  },
  withCredentials(dataSrcLabel, value):: {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          credentials: value,
        },
      },
    },
  },
  withDuration(dataSrcLabel, value):: {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          duration: value,
        },
      },
    },
  },
  withExtensionHeaders(dataSrcLabel, value):: {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          extension_headers: value,
        },
      },
    },
  },
  withHttpMethod(dataSrcLabel, value):: {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          http_method: value,
        },
      },
    },
  },
  withPath(dataSrcLabel, value):: {
    data+: {
      google_storage_object_signed_url+: {
        [dataSrcLabel]+: {
          path: value,
        },
      },
    },
  },
}
