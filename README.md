Execute build.bat at root of repository or do such steps.

Create a branch with no serializeField on a scriptableRendererData
Create a branch with a serializeField, correctly saved onto an asset
Switch to no_serializedField and build in batch mode, log no value onto ForwardRenderer
Switch to add_serializedField and build in batch mode, log serialize field value onto ForwardRenderer.
Expected: Log SerializeField value of 42 on branch add_serializedField

Get: SerializeField value of -1 on first switch and build.

This is fixed by triggering another batch build on the branch add_serializedField.