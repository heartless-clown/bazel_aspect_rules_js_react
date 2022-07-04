/// <reference types="react" />
/// <reference types="react-dom" />

// Fixes the issue with importing logo.svg when building
// IDK, why react-scripts/lib/react-app.d.ts not working
declare module '*.svg' {
    import * as React from 'react';

    export const ReactComponent: React.FunctionComponent<React.SVGProps<
        SVGSVGElement
        > & { title?: string }>;

    const src: string;
    export default src;
}
