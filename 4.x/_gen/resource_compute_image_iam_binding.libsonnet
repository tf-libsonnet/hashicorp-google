local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  condition:: {
    new(
      expression,
      title,
      description=null
    ):: std.prune(a={
      description: description,
      expression: expression,
      title: title,
    }),
  },
  new(
    resourceLabel,
    image,
    members,
    role,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_image_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      image=image,
      members=members,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    image,
    members,
    role,
    condition=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    image: image,
    members: members,
    project: project,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_compute_image_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_compute_image_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withImage(resourceLabel, value):: {
    resource+: {
      google_compute_image_iam_binding+: {
        [resourceLabel]+: {
          image: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_compute_image_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_image_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_compute_image_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
