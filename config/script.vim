"---------------creador de proyectos de java------------------------------
function! ProjectJava()
	call inputsave()
	let name= input('Nombre del Projecto: ')
	call inputrestore()
	if !empty(glob(join(["./",name],'')))
		redraw
		echo "ya existe un proyecto"
	else
		let dir=join(["mkdir ./",name],'')
		call system(dir)
		let dir= join([dir,"build"],'/')
		call system(dir)
		let dir=join([dir,"classes"],'/')
		call system(dir)
		let dir=join([join(["mkdir ./",name],''),"src"],'/')
		call system(dir)
		redraw
		echo "proyecto creado"
	endif
endfunction

command! ProjectJava call ProjectJava()

