using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Organizer.Common
{
    public sealed class ValueDependsOnPropertyAttribute : Attribute
    {
        public ValueDependsOnPropertyAttribute(string sourcePropertyName)
        {
            SourceProperName = sourcePropertyName;
        }

        internal string SourceProperName { get; }
    }
}
