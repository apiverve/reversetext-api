declare module '@apiverve/reversetext' {
  export interface reversetextOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface reversetextResponse {
    status: string;
    error: string | null;
    data: ReverseTextData;
    code?: number;
  }


  interface ReverseTextData {
      reversed: string;
      original: string;
      mode:     string;
      length:   number;
  }

  export default class reversetextWrapper {
    constructor(options: reversetextOptions);

    execute(callback: (error: any, data: reversetextResponse | null) => void): Promise<reversetextResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: reversetextResponse | null) => void): Promise<reversetextResponse>;
    execute(query?: Record<string, any>): Promise<reversetextResponse>;
  }
}
