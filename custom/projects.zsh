PROJECT_PATHS=(~/Projects/Openminds ~/Projects/Openminds/iwt ~/Projects/PotatoFactory ~/Projects/Fileflambe  ~/Projects/ArrrrCamp)

function project () {
	cmd="cd"
	file=$1
	
	if [[ "open" == "$file" ]] then
		file=$2
		cmd=(${(s: :)EDITOR})
	fi
	
	for project in $PROJECT_PATHS; do
		if [[ -d $project/$file ]] then
			$cmd "$project/$file"
			unset project # Unset project var
			return
		fi
	done

	echo "No such project $1"
}

alias p="project"

function _project () {
	compadd `/bin/ls -l $PROJECT_PATHS | awk '{ print $9 }'`
}

compdef _project project

export CC=gcc