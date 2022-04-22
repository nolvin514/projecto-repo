<h1>
    <hr>
    <table>
        <thead>
            <tr>
                <td>Codigo</td>
                <td>Categoria</td>
                <td>Estado</td>
                <td><a href="index.php?page=mnt.categorias.categoria&mode=INS&catid=0">Nuevo</a></td>
            </tr>
        </thead>
        <tbody>
            {{foreach categorias}}
                <tr>
                    <td>{{catid}}</td>
                    <td>{{catnom}}</td>
                    <td>{{catest}}</td>
                    <td>
                        <a href="index.php?page=mnt.categorias.categoria&mode=UPD&catid={{catid}}">Editar</a>
                        Editar&nbsp;Eliminar</td>
                </tr>
            {{endfor categorias}}
        </tbody>
    </table>
</h1>