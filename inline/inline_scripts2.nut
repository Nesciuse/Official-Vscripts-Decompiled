EntityGroup <- [];
MyEntityGroup <- {};
MyEntityGroupArray <- EntityGroup;
function __AppendToScriptGroup( name ) 
{
	if ( name.len() == 0 ) 
	{ 
		EntityGroup.append( null ); 
	} 
	else
	{ 
		local ent = Entities.FindByName( null, name );
		EntityGroup.append( ent );
		if ( ent != null )
		{
			ent.ValidateScriptScope();
			MyEntityGroup[name] <- ent;
			ent.GetScriptScope().EntityGroup <- EntityGroup;
		}
	}
}