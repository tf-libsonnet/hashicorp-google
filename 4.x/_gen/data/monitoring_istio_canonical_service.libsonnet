local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='monitoring_istio_canonical_service', url='', help='`monitoring_istio_canonical_service` represents the `google_monitoring_istio_canonical_service` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.monitoring_istio_canonical_service.new` injects a new `data_google_monitoring_istio_canonical_service` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.monitoring_istio_canonical_service.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.monitoring_istio_canonical_service` using the reference:\n\n    $._ref.data_google_monitoring_istio_canonical_service.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_monitoring_istio_canonical_service.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `canonical_service` (`string`): The name of the canonical service underlying this service.. \n                        Corresponds to the destination_service_name metric label in Istio metrics.\n  - `canonical_service_namespace` (`string`): The namespace of the canonical service underlying this service.\n                        Corresponds to the destination_service_namespace metric label in Istio metrics.\n  - `mesh_uid` (`string`): Identifier for the Istio mesh in which this canonical service is defined.\n                        Corresponds to the meshUid metric label in Istio metrics.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    canonical_service,
    canonical_service_namespace,
    mesh_uid,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_monitoring_istio_canonical_service',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      canonical_service=canonical_service,
      canonical_service_namespace=canonical_service_namespace,
      mesh_uid=mesh_uid,
      project=project
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.monitoring_istio_canonical_service.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_istio_canonical_service`\nTerraform data source.\n\nUnlike [google.data.monitoring_istio_canonical_service.new](#fn-monitoringistiocanonicalservicenew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `canonical_service` (`string`): The name of the canonical service underlying this service.. \n                        Corresponds to the destination_service_name metric label in Istio metrics.\n  - `canonical_service_namespace` (`string`): The namespace of the canonical service underlying this service.\n                        Corresponds to the destination_service_namespace metric label in Istio metrics.\n  - `mesh_uid` (`string`): Identifier for the Istio mesh in which this canonical service is defined.\n                        Corresponds to the meshUid metric label in Istio metrics.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `monitoring_istio_canonical_service` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    canonical_service,
    canonical_service_namespace,
    mesh_uid,
    project=null
  ):: std.prune(a={
    canonical_service: canonical_service,
    canonical_service_namespace: canonical_service_namespace,
    mesh_uid: mesh_uid,
    project: project,
  }),
  '#withCanonicalService':: d.fn(help='`google.string.withCanonicalService` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the canonical_service field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `canonical_service` field.\n', args=[]),
  withCanonicalService(dataSrcLabel, value): {
    data+: {
      google_monitoring_istio_canonical_service+: {
        [dataSrcLabel]+: {
          canonical_service: value,
        },
      },
    },
  },
  '#withCanonicalServiceNamespace':: d.fn(help='`google.string.withCanonicalServiceNamespace` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the canonical_service_namespace field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `canonical_service_namespace` field.\n', args=[]),
  withCanonicalServiceNamespace(dataSrcLabel, value): {
    data+: {
      google_monitoring_istio_canonical_service+: {
        [dataSrcLabel]+: {
          canonical_service_namespace: value,
        },
      },
    },
  },
  '#withMeshUid':: d.fn(help='`google.string.withMeshUid` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the mesh_uid field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `mesh_uid` field.\n', args=[]),
  withMeshUid(dataSrcLabel, value): {
    data+: {
      google_monitoring_istio_canonical_service+: {
        [dataSrcLabel]+: {
          mesh_uid: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_monitoring_istio_canonical_service+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
