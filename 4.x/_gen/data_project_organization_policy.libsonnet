local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    constraint,
    project,
    _meta={}
  ):: tf.withData(
    type='google_project_organization_policy',
    label=dataSrcLabel,
    attrs=self.newAttrs(constraint=constraint, project=project),
    _meta=_meta
  ),
  newAttrs(
    constraint,
    project
  ):: std.prune(a={
    constraint: constraint,
    project: project,
  }),
  withConstraint(dataSrcLabel, value):: {
    data+: {
      google_project_organization_policy+: {
        [dataSrcLabel]+: {
          constraint: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_project_organization_policy+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
