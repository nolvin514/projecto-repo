<h1>
    <hr>
    <table>
        <thead>
            <tr>
                <td>ID</td>
                <td>Nombre</td>
                <td>Edad</td>
                <td><a href="index.php?page=mnt.personas.persona&mode=INS&idpersona=0">Nuevo</a></td>
            </tr>
        </thead>
        <tbody>
            {{foreach personas}}
                <tr>
                    <td>{{idpersona}}</td>
                    <td>{{nombre}}</td>
                    <td>{{edad}}</td>
                    <td>
                        <a href="index.php?page=mnt.personas.persona&mode=UPD&idpersona={{idpersona}}">Editar</a>
                        Editar&nbsp;Eliminar</td>
                </tr>
            {{endfor personas}}
        </tbody>
    </table>
</h1>