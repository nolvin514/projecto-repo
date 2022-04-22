<h1>Trabajando con Vehiculo</h1>
<hr>
<section class="container-m">
    <form action="index.php?page=mnt.vehiculos.vehiculo" method="post">
    {{ifnot isInsert}}
    <fieldset><label for="idcarro">ID</label><input id="idcarro" name="idcarro" value="{{idcarro}}" placeholder="" type="text"></fieldset>
    {{endifnot isInsert}}
    <fieldset><label for="placa">Placa</label><input id="placa" name="placa" value="{{placa}}" placeholder="" type="text"></fieldset>
    <fieldset><label for="modelo">Modelo</label><input id="modelo" name="modelo" value="{{modelo}}" placeholder="" type="text"></fieldset>
    <fieldset><label for="anio">Año</label><input id="anio" name="anio" value="{{anio}}" placeholder="" type="text"></fieldset>
    <fieldset><label for="vin">VIN</label><input id="vin" name="vin" value="{{vin}}" placeholder="" type="text"></fieldset>
    <fieldset>
        <button type="submit" name="btnConfirmar" class="btn primary">Confirmar</button>
        &nbsp;<button type="button" name="btnCancelar" class="btn secondary">Cancelar</button>
    </fieldset>
    </form>
</section>
<script>
   document.addEventListener("DOMContentLoaded",(e)=>{
       document.getElementById("btnCancelar").addEventListener('click',(e)=>{
           e.preventDefault();
           e.stopPropagation();
           location.assign("index.php?page=mnt.vehiculos.vehiculos");
       })
   });
</script>