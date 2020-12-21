namespace Organizer.Common.ObservableModels
{
    using System;

    namespace Cheaz.Common.Prism.Attributes
    {
        [AttributeUsage(AttributeTargets.Property, AllowMultiple = true)]
        public sealed class ValueDependsOnCollectionAttribute : Attribute
        {
            public ValueDependsOnCollectionAttribute(string sourceName)
            {
                SourceName = sourceName;
            }

            public override object TypeId => this;

            internal string SourceName { get; }
        }
    }
}
