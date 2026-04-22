declare namespace VariablesScssNamespace {
  export interface IVariablesScss {
    "tjs-mappable-preview__metadata": string;
    tjsMappablePreviewMetadata: string;
  }
}

declare const VariablesScssModule: VariablesScssNamespace.IVariablesScss & {
  /** WARNING: Only available when `css-loader` is used without `style-loader` or `mini-css-extract-plugin` */
  locals: VariablesScssNamespace.IVariablesScss;
};

export = VariablesScssModule;
