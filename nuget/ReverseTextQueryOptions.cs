using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.ReverseText
{
    /// <summary>
    /// Query options for the Reverse Text API
    /// </summary>
    public class ReverseTextQueryOptions
    {
        /// <summary>
        /// Text to reverse
        /// Example: Hello World
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }

        /// <summary>
        /// Reversal mode: 'characters', 'words', or 'lines'
        /// Example: characters
        /// </summary>
        [JsonProperty("mode")]
        public string Mode { get; set; }
    }
}
