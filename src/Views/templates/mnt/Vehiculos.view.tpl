<h1>
    <hr>
    <table>
        <thead>
            <tr>
                <td>ID</td>
                <td>Placa</td>
                <td>Modelo</td>
                <td>Año</td>
                <td>VIN</td>
                <td><a href="index.php?page=mnt.vehiculos.vehiculo&mode=INS&idcarro=0">Nuevo</a></td>
            </tr>
        </thead>
        <tbody>
            {{foreach vehiculos}}
                <tr>
                    <td>{{idcarro}}</td>
                    <td>
                        <a href="index.php?page=mnt.vehiculos.vehiculo&mode=DSP&idcarro={{idcarro}}">{{placa}}</a>
                    </td>
                    <td>{{modelo}}</td>
                    <td>{{anio}}</td>
                    <td>{{vin}}</td>
                    <td>
                        <a href="index.php?page=mnt.vehiculos.vehiculo&mode=UPD&idcarro={{idcarro}}">Editar</a>
                        &nbsp;
                        <a href="index.php?page=mnt.vehiculos.vehiculo&mode=DEL&idcarro={{idcarro}}">Eliminar</a>
                    </td>
                </tr>
            {{endfor vehiculos}}
        </tbody>
    </table>
</h1>