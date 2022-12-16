local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    certificate_authority_id=null,
    location=null,
    pool=null,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_privateca_certificate_authority',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      certificate_authority_id=certificate_authority_id,
      location=location,
      pool=pool,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    certificate_authority_id=null,
    location=null,
    pool=null,
    project=null
  ):: std.prune(a={
    certificate_authority_id: certificate_authority_id,
    location: location,
    pool: pool,
    project: project,
  }),
  withCertificateAuthorityId(dataSrcLabel, value):: {
    data+: {
      google_privateca_certificate_authority+: {
        [dataSrcLabel]+: {
          certificate_authority_id: value,
        },
      },
    },
  },
  withLocation(dataSrcLabel, value):: {
    data+: {
      google_privateca_certificate_authority+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  withPool(dataSrcLabel, value):: {
    data+: {
      google_privateca_certificate_authority+: {
        [dataSrcLabel]+: {
          pool: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_privateca_certificate_authority+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
