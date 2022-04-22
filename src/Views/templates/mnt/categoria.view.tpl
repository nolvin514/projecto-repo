<h1>Trabajando con Categorias</h1>
<hr>
<section class="container-m">
    <form action="index.php?page=mnt_categorias.categoria" method="post">
        {{ifnot isInsert}}
        <fieldset class="row flex-center align-center">
            <label for="catid" class="col-5">Codigo</label>
            <input type="text" class="col-7" id="catid" value="{{catid}}" placeholder="" name="catid">
        </fieldset>
        {{endifnot isInsert}}
        <fieldset class="row flex-center align-center">
            <label for="catnom" class="col-5">Categoria</label>
            <input class="col-7" id="catnom" name="catnom" value="{{catnom}}" placeholder="" type="text">
        </fieldset>
        <fieldset class="row flex-center align-center">
            <label for="catest" class="col-5">Estado</label>
            <select class="col=7" name="catest" id="catest">
                {{catEstOptions}}
            </select>
        </fieldset class="row flex-center align-center">
        <fieldset class="row flex-end align-center">
            <button type="submit" name="btnConfirmar" class="btn primary">Confirmar</button>
            &nbsp;<button type="button" name="btnCancelar" class="btn primary">Cancelar</button>
            &nbsp;
        </fieldset>
    </form>
</section>
<script>
    document.addEventListener("DOMContentLoaded", (e)=>{
        document.getElementById("btnCancelar").addEventListener('click',(e)=>{
            e.preventDefault();
            e.stopPropagation();
            window.location.assign("index.php?page=mnt_categorias_categorias");
        });
    });
</script>