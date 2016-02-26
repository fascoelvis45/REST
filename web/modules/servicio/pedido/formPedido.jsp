<%@include file="../../util/conectionDB.jsp" %>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-6">
            <!-- general form elements -->

            <!-- Form Element sizes -->
            <div class="box box-success">
                <!--                <div class="box-header with-border">
                                    <h3 class="box-title"><b>BUSCAHR PRODUCTO</b></h3>
                                </div>
                                <div class="box-body">-->

                <%
                    String id_usuario = (String) request.getParameter("id_usuario");
                    String id_mesa = (String) request.getParameter("id_mesa");
                    
                    SQL = "  INSERT INTO VALUES (); ";

//executeUpdate
                    //rs = scSQL.executeQuery(SQL);
                    int a = scSQL.executeUpdate(SQL);

                   
                %>

                <form class="form-horizontal">
                    <div class="box-body">
                        <div class="form-group">
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="inputPassword3" placeholder="Buscar">
                            </div>
                            <div class="col-sm-3">
                                <button type="submit" class="btn btn-info pull-right"><samp><i class="fa fa-search" /> </samp>BUSCAR</button>
                            </div>

                        </div>  


                    </div><!-- /.box-footer -->
                </form>


            </div><!-- /.box-body -->

            <hr>
            <div class="box-header with-border">
                <h3 class="box-title"><b>PRODUCTOS</b></h3>
            </div>
            <div class="box-body">
                <table class="table table-bordered  ">

                    <tr>
                        <td> Caldo de Gallina</td>
                        <td> S/. 10.00</td>
                        <td> <button class="btn btn-success" ><samp><i class="fa fa-plus" /> </samp></button>  </td>
                    </tr>

                </table>
            </div><!-- /.box-body -->
        </div><!-- /.box --> 



    </div>
    <div class="col-md-6">
        <div class="box box-success">
            <div class="box-header with-border">
                <h3 class="box-title"><b>Lista de Productos En El Pedido</b></h3>
            </div>
            <div class="box-body">
                <table class="table table-bordered table-hover">
                    <tr>
                        <th>
                            #
                        </th>
                        <th>
                            PRODUCTO 
                        </th>
                        <th>
                            CANTIDAD
                        </th>
                        <th>
                            PRECIO
                        </th>
                        <th>
                            OPC
                        </th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Caldo de Cagillina</td> 
                        <td>1</td>   
                        <td>S/.10.00</td>   
                        <td> <button class="btn btn-danger " >
                                <span class="icon-row" >
                                    <i class="fa fa-times"></i>
                                </span>
                            </button>

                        </td>
                    </tr>

                </table>
            </div><!-- /.box-body -->
        </div><!-- /.box --> 
    </div><!--/.col (left) -->

</div>   <!-- /.row -->
</section><!-- /.content -->