local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data_loss_prevention_deidentify_template', url='', help='`data_loss_prevention_deidentify_template` represents the `google_data_loss_prevention_deidentify_template` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  deidentify_config:: {
    info_type_transformations:: {
      '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.new` constructs a new object with attributes and blocks configured for the `info_type_transformations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `transformations` (`list[obj]`): Transformation for each infoType. Cannot specify more than one for a given infoType. When `null`, the `transformations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.new](#fn-deidentify_configtransformationsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `info_type_transformations` sub block.\n', args=[]),
      new(
        transformations=null
      ):: std.prune(a={
        transformations: transformations,
      }),
      transformations:: {
        info_types:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type.\n\n**Returns**:\n  - An attribute object that represents the `info_types` sub block.\n', args=[]),
          new(
            name
          ):: std.prune(a={
            name: name,
          }),
        },
        '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.new` constructs a new object with attributes and blocks configured for the `transformations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `info_types` (`list[obj]`): InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to\nall findings that correspond to infoTypes that were requested in InspectConfig. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.info_types.new](#fn-deidentify_configinfo_type_transformationsinfo_typesnew) constructor.\n  - `primitive_transformation` (`list[obj]`): Primitive transformation to apply to the infoType. When `null`, the `primitive_transformation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.new](#fn-deidentify_configinfo_type_transformationsprimitive_transformationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `transformations` sub block.\n', args=[]),
        new(
          info_types=null,
          primitive_transformation=null
        ):: std.prune(a={
          info_types: info_types,
          primitive_transformation: primitive_transformation,
        }),
        primitive_transformation:: {
          character_mask_config:: {
            characters_to_ignore:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.characters_to_ignore.new` constructs a new object with attributes and blocks configured for the `characters_to_ignore`\nTerraform sub block.\n\n\n\n**Args**:\n  - `characters_to_skip` (`string`): Characters to not transform when masking. When `null`, the `characters_to_skip` field will be omitted from the resulting object.\n  - `common_characters_to_ignore` (`string`): Common characters to not transform when masking. Useful to avoid removing punctuation. Possible values: [&#34;NUMERIC&#34;, &#34;ALPHA_UPPER_CASE&#34;, &#34;ALPHA_LOWER_CASE&#34;, &#34;PUNCTUATION&#34;, &#34;WHITESPACE&#34;] When `null`, the `common_characters_to_ignore` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `characters_to_ignore` sub block.\n', args=[]),
              new(
                characters_to_skip=null,
                common_characters_to_ignore=null
              ):: std.prune(a={
                characters_to_skip: characters_to_skip,
                common_characters_to_ignore: common_characters_to_ignore,
              }),
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.new` constructs a new object with attributes and blocks configured for the `character_mask_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `masking_character` (`string`): Character to use to mask the sensitive values—for example, * for an alphabetic string such as a name, or 0 for a numeric string\nsuch as ZIP code or credit card number. This string must have a length of 1. If not supplied, this value defaults to * for\nstrings, and 0 for digits. When `null`, the `masking_character` field will be omitted from the resulting object.\n  - `number_to_mask` (`number`): Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally. When `null`, the `number_to_mask` field will be omitted from the resulting object.\n  - `reverse_order` (`bool`): Mask characters in reverse order. For example, if masking_character is 0, number_to_mask is 14, and reverse_order is &#39;false&#39;, then the\ninput string &#39;1234-5678-9012-3456&#39; is masked as &#39;00000000000000-3456&#39;. When `null`, the `reverse_order` field will be omitted from the resulting object.\n  - `characters_to_ignore` (`list[obj]`): Characters to skip when doing de-identification of a value. These will be left alone and skipped. When `null`, the `characters_to_ignore` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.characters_to_ignore.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcharacters_to_ignorenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `character_mask_config` sub block.\n', args=[]),
            new(
              characters_to_ignore=null,
              masking_character=null,
              number_to_mask=null,
              reverse_order=null
            ):: std.prune(a={
              characters_to_ignore: characters_to_ignore,
              masking_character: masking_character,
              number_to_mask: number_to_mask,
              reverse_order: reverse_order,
            }),
          },
          crypto_deterministic_config:: {
            context:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.context.new` constructs a new object with attributes and blocks configured for the `context`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name describing the field. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `context` sub block.\n', args=[]),
              new(
                name=null
              ):: std.prune(a={
                name: name,
              }),
            },
            crypto_key:: {
              kms_wrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped.new` constructs a new object with attributes and blocks configured for the `kms_wrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `crypto_key_name` (`string`): The resource name of the KMS CryptoKey to use for unwrapping.\n  - `wrapped_key` (`string`): The wrapped data crypto key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `kms_wrapped` sub block.\n', args=[]),
                new(
                  crypto_key_name,
                  wrapped_key
                ):: std.prune(a={
                  crypto_key_name: crypto_key_name,
                  wrapped_key: wrapped_key,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.new` constructs a new object with attributes and blocks configured for the `crypto_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_wrapped` (`list[obj]`): Kms wrapped key When `null`, the `kms_wrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configkms_wrappednew) constructor.\n  - `transient` (`list[obj]`): Transient crypto key When `null`, the `transient` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configtransientnew) constructor.\n  - `unwrapped` (`list[obj]`): Unwrapped crypto key When `null`, the `unwrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configunwrappednew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_key` sub block.\n', args=[]),
              new(
                kms_wrapped=null,
                transient=null,
                unwrapped=null
              ):: std.prune(a={
                kms_wrapped: kms_wrapped,
                transient: transient,
                unwrapped: unwrapped,
              }),
              transient:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient.new` constructs a new object with attributes and blocks configured for the `transient`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate &#39;TransientCryptoKey&#39; protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated).\n\n**Returns**:\n  - An attribute object that represents the `transient` sub block.\n', args=[]),
                new(
                  name
                ):: std.prune(a={
                  name: name,
                }),
              },
              unwrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped.new` constructs a new object with attributes and blocks configured for the `unwrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): A 128/192/256 bit key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `unwrapped` sub block.\n', args=[]),
                new(
                  key
                ):: std.prune(a={
                  key: key,
                }),
              },
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.new` constructs a new object with attributes and blocks configured for the `crypto_deterministic_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `context` (`list[obj]`): A context may be used for higher security and maintaining referential integrity such that the same identifier in two different contexts will be given a distinct surrogate. The context is appended to plaintext value being encrypted. On decryption the provided context is validated against the value used during encryption. If a context was provided during encryption, same context must be provided during decryption as well.\n\nIf the context is not set, plaintext would be used as is for encryption. If the context is set but:\n\n1.  there is no record present when transforming a given value or\n2.  the field is not present when transforming a given value,\n\nplaintext would be used as is for encryption.\n\nNote that case (1) is expected when an &#39;InfoTypeTransformation&#39; is applied to both structured and non-structured &#39;ContentItem&#39;s. When `null`, the `context` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.context.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcontextnew) constructor.\n  - `crypto_key` (`list[obj]`): The key used by the encryption function. When `null`, the `crypto_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_keynew) constructor.\n  - `surrogate_info_type` (`list[obj]`): The custom info type to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom info type followed by the number of characters comprising the surrogate. The following scheme defines the format: {info type name}({surrogate character count}):{surrogate}\n\nFor example, if the name of custom info type is &#39;MY\\_TOKEN\\_INFO\\_TYPE&#39; and the surrogate is &#39;abc&#39;, the full replacement value will be: &#39;MY\\_TOKEN\\_INFO\\_TYPE(3):abc&#39;\n\nThis annotation identifies the surrogate when inspecting content using the custom info type &#39;Surrogate&#39;. This facilitates reversal of the surrogate when it occurs in free text.\n\nNote: For record transformations where the entire cell in a table is being transformed, surrogates are not mandatory. Surrogates are used to denote the location of the token and are necessary for re-identification in free form text.\n\nIn order for inspection to work properly, the name of this info type must not occur naturally anywhere in your data; otherwise, inspection may either\n\n*   reverse a surrogate that does not correspond to an actual identifier\n*   be unable to parse the surrogate and result in an error\n\nTherefore, choose your custom info type name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\\_TOKEN\\_TYPE. When `null`, the `surrogate_info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationsurrogate_info_typenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_deterministic_config` sub block.\n', args=[]),
            new(
              context=null,
              crypto_key=null,
              surrogate_info_type=null
            ):: std.prune(a={
              context: context,
              crypto_key: crypto_key,
              surrogate_info_type: surrogate_info_type,
            }),
            surrogate_info_type:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type.new` constructs a new object with attributes and blocks configured for the `surrogate_info_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern &#39;[A-Za-z0-9$-_]{1,64}&#39;. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `surrogate_info_type` sub block.\n', args=[]),
              new(
                name=null
              ):: std.prune(a={
                name: name,
              }),
            },
          },
          crypto_replace_ffx_fpe_config:: {
            context:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.context.new` constructs a new object with attributes and blocks configured for the `context`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name describing the field. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `context` sub block.\n', args=[]),
              new(
                name=null
              ):: std.prune(a={
                name: name,
              }),
            },
            crypto_key:: {
              kms_wrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.kms_wrapped.new` constructs a new object with attributes and blocks configured for the `kms_wrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `crypto_key_name` (`string`): The resource name of the KMS CryptoKey to use for unwrapping.\n  - `wrapped_key` (`string`): The wrapped data crypto key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `kms_wrapped` sub block.\n', args=[]),
                new(
                  crypto_key_name,
                  wrapped_key
                ):: std.prune(a={
                  crypto_key_name: crypto_key_name,
                  wrapped_key: wrapped_key,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.new` constructs a new object with attributes and blocks configured for the `crypto_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_wrapped` (`list[obj]`): Kms wrapped key When `null`, the `kms_wrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.kms_wrapped.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configkms_wrappednew) constructor.\n  - `transient` (`list[obj]`): Transient crypto key When `null`, the `transient` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.transient.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configtransientnew) constructor.\n  - `unwrapped` (`list[obj]`): Unwrapped crypto key When `null`, the `unwrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configunwrappednew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_key` sub block.\n', args=[]),
              new(
                kms_wrapped=null,
                transient=null,
                unwrapped=null
              ):: std.prune(a={
                kms_wrapped: kms_wrapped,
                transient: transient,
                unwrapped: unwrapped,
              }),
              transient:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.transient.new` constructs a new object with attributes and blocks configured for the `transient`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate &#39;TransientCryptoKey&#39; protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated).\n\n**Returns**:\n  - An attribute object that represents the `transient` sub block.\n', args=[]),
                new(
                  name
                ):: std.prune(a={
                  name: name,
                }),
              },
              unwrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped.new` constructs a new object with attributes and blocks configured for the `unwrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): A 128/192/256 bit key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `unwrapped` sub block.\n', args=[]),
                new(
                  key
                ):: std.prune(a={
                  key: key,
                }),
              },
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.new` constructs a new object with attributes and blocks configured for the `crypto_replace_ffx_fpe_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `common_alphabet` (`string`): Common alphabets. Possible values: [&#34;FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED&#34;, &#34;NUMERIC&#34;, &#34;HEXADECIMAL&#34;, &#34;UPPER_CASE_ALPHA_NUMERIC&#34;, &#34;ALPHA_NUMERIC&#34;] When `null`, the `common_alphabet` field will be omitted from the resulting object.\n  - `custom_alphabet` (`string`): This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before/after encryption/decryption. Each character listed must appear only once. Number of characters must be in the range \\[2, 95\\]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is:\n\n&#39;&#39;0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ~&#39;!@#$%^&amp;*()_-&#43;={[}]|:;&#34;&#39;&lt;,&gt;.?/&#39;&#39; When `null`, the `custom_alphabet` field will be omitted from the resulting object.\n  - `radix` (`number`): The native way to select the alphabet. Must be in the range \\[2, 95\\]. When `null`, the `radix` field will be omitted from the resulting object.\n  - `context` (`list[obj]`): The &#39;tweak&#39;, a context may be used for higher security since the same identifier in two different contexts won&#39;t be given the same surrogate. If the context is not set, a default tweak will be used.\n\nIf the context is set but:\n\n1.  there is no record present when transforming a given value or\n2.  the field is not present when transforming a given value,\n\na default tweak will be used.\n\nNote that case (1) is expected when an &#39;InfoTypeTransformation&#39; is applied to both structured and non-structured &#39;ContentItem&#39;s. Currently, the referenced field may be of value type integer or string.\n\nThe tweak is constructed as a sequence of bytes in big endian byte order such that:\n\n*   a 64 bit integer is encoded followed by a single byte of value 1\n*   a string is encoded in UTF-8 format followed by a single byte of value 2 When `null`, the `context` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.context.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcontextnew) constructor.\n  - `crypto_key` (`list[obj]`): The key used by the encryption algorithm. When `null`, the `crypto_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_keynew) constructor.\n  - `surrogate_info_type` (`list[obj]`): The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info\\_type\\_name(surrogate\\_character\\_count):surrogate\n\nFor example, if the name of custom infoType is &#39;MY\\_TOKEN\\_INFO\\_TYPE&#39; and the surrogate is &#39;abc&#39;, the full replacement value will be: &#39;MY\\_TOKEN\\_INFO\\_TYPE(3):abc&#39;\n\nThis annotation identifies the surrogate when inspecting content using the custom infoType [&#39;SurrogateType&#39;](https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#surrogatetype). This facilitates reversal of the surrogate when it occurs in free text.\n\nIn order for inspection to work properly, the name of this infoType must not occur naturally anywhere in your data; otherwise, inspection may find a surrogate that does not correspond to an actual identifier. Therefore, choose your custom infoType name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\\_TOKEN\\_TYPE When `null`, the `surrogate_info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationsurrogate_info_typenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_replace_ffx_fpe_config` sub block.\n', args=[]),
            new(
              common_alphabet=null,
              context=null,
              crypto_key=null,
              custom_alphabet=null,
              radix=null,
              surrogate_info_type=null
            ):: std.prune(a={
              common_alphabet: common_alphabet,
              context: context,
              crypto_key: crypto_key,
              custom_alphabet: custom_alphabet,
              radix: radix,
              surrogate_info_type: surrogate_info_type,
            }),
            surrogate_info_type:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type.new` constructs a new object with attributes and blocks configured for the `surrogate_info_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern &#39;[A-Za-z0-9$-_]{1,64}&#39;. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `surrogate_info_type` sub block.\n', args=[]),
              new(
                name=null
              ):: std.prune(a={
                name: name,
              }),
            },
          },
          '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.new` constructs a new object with attributes and blocks configured for the `primitive_transformation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `replace_with_info_type_config` (`bool`): Replace each matching finding with the name of the info type. When `null`, the `replace_with_info_type_config` field will be omitted from the resulting object.\n  - `character_mask_config` (`list[obj]`): Partially mask a string by replacing a given number of characters with a fixed character.\nMasking can start from the beginning or end of the string. When `null`, the `character_mask_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.new](#fn-deidentify_configinfo_type_transformationstransformationscharacter_mask_confignew) constructor.\n  - `crypto_deterministic_config` (`list[obj]`): Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC [https://tools.ietf.org/html/rfc5297](https://tools.ietf.org/html/rfc5297). When `null`, the `crypto_deterministic_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.new](#fn-deidentify_configinfo_type_transformationstransformationscrypto_deterministic_confignew) constructor.\n  - `crypto_replace_ffx_fpe_config` (`list[obj]`): Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the &#39;content.reidentify&#39; API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See [https://cloud.google.com/dlp/docs/pseudonymization](https://cloud.google.com/dlp/docs/pseudonymization) to learn more.\n\nNote: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity. When `null`, the `crypto_replace_ffx_fpe_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.new](#fn-deidentify_configinfo_type_transformationstransformationscrypto_replace_ffx_fpe_confignew) constructor.\n  - `replace_config` (`list[obj]`): Replace each input value with a given value. When `null`, the `replace_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new](#fn-deidentify_configinfo_type_transformationstransformationsreplace_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `primitive_transformation` sub block.\n', args=[]),
          new(
            character_mask_config=null,
            crypto_deterministic_config=null,
            crypto_replace_ffx_fpe_config=null,
            replace_config=null,
            replace_with_info_type_config=null
          ):: std.prune(a={
            character_mask_config: character_mask_config,
            crypto_deterministic_config: crypto_deterministic_config,
            crypto_replace_ffx_fpe_config: crypto_replace_ffx_fpe_config,
            replace_config: replace_config,
            replace_with_info_type_config: replace_with_info_type_config,
          }),
          replace_config:: {
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new` constructs a new object with attributes and blocks configured for the `replace_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `new_value` (`list[obj]`): Replace each input value with a given value. When `null`, the `new_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationnew_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `replace_config` sub block.\n', args=[]),
            new(
              new_value=null
            ):: std.prune(a={
              new_value: new_value,
            }),
            new_value:: {
              date_value:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.date_value.new` constructs a new object with attributes and blocks configured for the `date_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a\nyear by itself or a year and month where the day is not significant. When `null`, the `day` field will be omitted from the resulting object.\n  - `month` (`number`): Month of year. Must be from 1 to 12, or 0 if specifying a year without a month and day. When `null`, the `month` field will be omitted from the resulting object.\n  - `year` (`number`): Year of date. Must be from 1 to 9999, or 0 if specifying a date without a year. When `null`, the `year` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `date_value` sub block.\n', args=[]),
                new(
                  day=null,
                  month=null,
                  year=null
                ):: std.prune(a={
                  day: day,
                  month: month,
                  year: year,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.new` constructs a new object with attributes and blocks configured for the `new_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): A boolean value. When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `day_of_week_value` (`string`): Represents a day of the week. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `day_of_week_value` field will be omitted from the resulting object.\n  - `float_value` (`number`): A float value. When `null`, the `float_value` field will be omitted from the resulting object.\n  - `integer_value` (`number`): An integer value. When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `string_value` (`string`): A string value. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `timestamp_value` (`string`): A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits.\nExamples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `timestamp_value` field will be omitted from the resulting object.\n  - `date_value` (`list[obj]`): Represents a whole or partial calendar date. When `null`, the `date_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.date_value.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationreplace_configdate_valuenew) constructor.\n  - `time_value` (`list[obj]`): Represents a time of day. When `null`, the `time_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.time_value.new](#fn-deidentify_configinfo_type_transformationstransformationsprimitive_transformationreplace_configtime_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `new_value` sub block.\n', args=[]),
              new(
                boolean_value=null,
                date_value=null,
                day_of_week_value=null,
                float_value=null,
                integer_value=null,
                string_value=null,
                time_value=null,
                timestamp_value=null
              ):: std.prune(a={
                boolean_value: boolean_value,
                date_value: date_value,
                day_of_week_value: day_of_week_value,
                float_value: float_value,
                integer_value: integer_value,
                string_value: string_value,
                time_value: time_value,
                timestamp_value: timestamp_value,
              }),
              time_value:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.time_value.new` constructs a new object with attributes and blocks configured for the `time_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_value` sub block.\n', args=[]),
                new(
                  hours=null,
                  minutes=null,
                  nanos=null,
                  seconds=null
                ):: std.prune(a={
                  hours: hours,
                  minutes: minutes,
                  nanos: nanos,
                  seconds: seconds,
                }),
              },
            },
          },
        },
      },
    },
    '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.new` constructs a new object with attributes and blocks configured for the `deidentify_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `info_type_transformations` (`list[obj]`): Specifies free-text based transformations to be applied to the dataset. When `null`, the `info_type_transformations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.new](#fn-info_type_transformationsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `deidentify_config` sub block.\n', args=[]),
    new(
      info_type_transformations=null
    ):: std.prune(a={
      info_type_transformations: info_type_transformations,
    }),
  },
  '#new':: d.fn(help="\n`google.data_loss_prevention_deidentify_template.new` injects a new `google_data_loss_prevention_deidentify_template` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data_loss_prevention_deidentify_template.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data_loss_prevention_deidentify_template` using the reference:\n\n    $._ref.google_data_loss_prevention_deidentify_template.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_data_loss_prevention_deidentify_template.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A description of the template. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User set display name of the template. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `parent` (`string`): The parent of the template in any of the following formats:\n\n* \u0026#39;projects/{{project}}\u0026#39;\n* \u0026#39;projects/{{project}}/locations/{{location}}\u0026#39;\n* \u0026#39;organizations/{{organization_id}}\u0026#39;\n* \u0026#39;organizations/{{organization_id}}/locations/{{location}}\u0026#39;\n  - `deidentify_config` (`list[obj]`): Configuration of the deidentify template When `null`, the `deidentify_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.new](#fn-deidentify_confignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    parent,
    deidentify_config=null,
    description=null,
    display_name=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_loss_prevention_deidentify_template',
    label=resourceLabel,
    attrs=self.newAttrs(
      deidentify_config=deidentify_config,
      description=description,
      display_name=display_name,
      parent=parent,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.newAttrs` constructs a new object with attributes and blocks configured for the `data_loss_prevention_deidentify_template`\nTerraform resource.\n\nUnlike [google.data_loss_prevention_deidentify_template.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A description of the template. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User set display name of the template. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `parent` (`string`): The parent of the template in any of the following formats:\n\n* &#39;projects/{{project}}&#39;\n* &#39;projects/{{project}}/locations/{{location}}&#39;\n* &#39;organizations/{{organization_id}}&#39;\n* &#39;organizations/{{organization_id}}/locations/{{location}}&#39;\n  - `deidentify_config` (`list[obj]`): Configuration of the deidentify template When `null`, the `deidentify_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.new](#fn-deidentify_confignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_loss_prevention_deidentify_template` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    parent,
    deidentify_config=null,
    description=null,
    display_name=null,
    timeouts=null
  ):: std.prune(a={
    deidentify_config: deidentify_config,
    description: description,
    display_name: display_name,
    parent: parent,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDeidentifyConfig':: d.fn(help='`google.list[obj].withDeidentifyConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the deidentify_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDeidentifyConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `deidentify_config` field.\n', args=[]),
  withDeidentifyConfig(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          deidentify_config: value,
        },
      },
    },
  },
  '#withDeidentifyConfigMixin':: d.fn(help='`google.list[obj].withDeidentifyConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the deidentify_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDeidentifyConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `deidentify_config` field.\n', args=[]),
  withDeidentifyConfigMixin(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          deidentify_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
