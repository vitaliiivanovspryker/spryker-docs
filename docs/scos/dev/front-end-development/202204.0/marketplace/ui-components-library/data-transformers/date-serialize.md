---
title: Data Transformer Date-serialize
description: This document provides details about the Data Transformer Date-serialize service in the Components Library.
template: concept-topic-template
related:
  - title: Data Transformers
    link: docs/scos/dev/front-end-development/page.version/marketplace/ui-components-library/data-transformers/data-transformers.html
  - title: Data Transformer Array-map
    link: docs/scos/dev/front-end-development/page.version/marketplace/ui-components-library/data-transformers/data-transformer-array-map.html
  - title: Data Transformer Chain
    link: docs/scos/dev/front-end-development/page.version/marketplace/ui-components-library/data-transformers/data-transformer-chain.html
  - title: Data Transformer Date-parse
    link: docs/scos/dev/front-end-development/page.version/marketplace/ui-components-library/data-transformers/data-transformer-date-parse.html
  - title: Data Transformer Lens
    link: docs/scos/dev/front-end-development/page.version/marketplace/ui-components-library/data-transformers/data-transformer-lens.html
  - title: Data Transformer Object-map
    link: docs/scos/dev/front-end-development/page.version/marketplace/ui-components-library/data-transformers/data-transformer-object-map.html
  - title: Data Transformer Pluck
    link: docs/scos/dev/front-end-development/page.version/marketplace/ui-components-library/data-transformers/data-transformer-pluck.html
---

This document explains the Data Transformer Date-serialize service in the Components Library.

## Overview

Data Transformer Date-serialize is an Angular Service that serializes JS Date Object into a Date ISO string.

In the following example, the `datasource` transforms `date` object into the serialized `date` string.

```html
<spy-select
    [datasource]="{
        type: 'inline',
        data: Date.now(),
        transform: {
            type: 'date-serialize'
        },
    }"
>
</spy-select>
```

## Service registration

Register the service:

```ts
declare module '@spryker/data-transformer' {
    interface DataTransformerRegistry {
        'date-serialize': DateSerializeDataTransformerConfig;
    }
}

@NgModule({
    imports: [
        DataTransformerModule.withTransformers({
            'date-serialize': DateSerializeDataTransformerService,
        }),
    ],
})
export class RootModule {}
```

## Interfaces

Below you can find interfaces for the Data Transformer Date-serialize:

```ts
export interface DateSerializeDataTransformerConfig extends DataTransformerConfig {}
```
