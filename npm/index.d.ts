declare module '@apiverve/reversetext' {
  export interface reversetextOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface reversetextResponse {
    status: string;
    error: string | null;
    data: ReverseTextData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ReverseTextData {
      reversed: null | string;
      original: null | string;
      mode:     null | string;
      length:   number | null;
  }

  export default class reversetextWrapper {
    constructor(options: reversetextOptions);

    execute(callback: (error: any, data: reversetextResponse | null) => void): Promise<reversetextResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: reversetextResponse | null) => void): Promise<reversetextResponse>;
    execute(query?: Record<string, any>): Promise<reversetextResponse>;
  }
}
