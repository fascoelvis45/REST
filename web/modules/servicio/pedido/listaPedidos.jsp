 
<!-- Left side column. contains the logo and sidebar -->

<%@include file="../../util/conectionDB.jsp" %>
<%  String id_usuario = (String) request.getParameter("id_usuario");%>
<section class="content-header">
    <h1>
        REPORTE PEDIDOS
        <small>Lista de Pedidos PENDIENTES<FECHA DEL SISTEMA> </small>
    </h1>

    <div class="box-body">

        <button class="btn btn-success btn-lg" onclick="cargarURL('pedido/addPedidoListaMesas.jsp?id_usuario=<%=id_usuario%>', 'content')">
            <b>    <i class="fa fa-plus"></i> PEDIDO</b>

        </button>

    </div>

</div>



</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">

            <div class="box">



                <div class="box-header with-border">
                    <h3 class="box-title"><b>17/02/2016</b></h3>

                    <div class="btn-group pull-right">

                        <button type="button" class="btn btn-info">PENDIENTES</button> 

                        <button type="button" class="btn btn-success">ENTREGADOS</button> 

                        <button type="button" class="btn btn-danger">TERMINADOS</button>

                    </div>  
                </div><!-- /.box-header -->
                <div class="box-body">
                    <table class="table table-bordered table-striped table-hover">
                        <tr>
                            <th style="width: 10px">#</th>
                            <th>Mesa</th>
                            <th>Productos</th>
                            <th style="width: 40px">OPC</th>
                        </tr>

                        <%
                          
                            SQL = "SELECT * FROM pedido "
                                    + " where  id_usuario = '" + id_usuario + "'";

                            rs = scSQL.executeQuery(SQL);

                            while (rs.next()) {
                        %>

                        <tr>
                            <td>x</td>  

                            <td> 

                                <ul>
                                    <%

                                        SQL1 = "SELECT y.numero numero FROM pedido_mesa x "
                                                + " inner join mesa y on x.id_mesa = y.id "
                                                + " where  x.id_pedido = '" + rs.getObject("id") + "' ";


                                        rs1 = scSQL1.executeQuery(SQL1);
                                        while (rs1.next()) {
                                    %>    
                                    <li>
                                        Mesa <%=rs1.getObject("numero")%>
                                    </li>
                                    <%}%>
                                </ul>

                            </td>
                            <td> 
                                <table class="table table-bordered">
                                    <%

                                        SQL2 = " SELECT y.nombre FROM pedido_destalle x "
                                               + " INNER JOIN producto y ON y.id = x.id_producto "
                                               + " WHERE x.id_pedido = '"+  rs.getObject("id") +"' " ;


                                        rs2 = scSQL2.executeQuery(SQL2);
                                        while (rs2.next()) {
                                    %>    
                                    
                                    <tr><td>
                                        <%=rs2.getObject("nombre")%>
                                        </td>
                                        <td>
                                            
                                            <span class="badge bg-red">55%</span>
                                            
                                        </td>
                                    </tr>
                                    <%}%>
                                </table>
                            </td>
                            <td> 
                                <button class="btn btn-success btn-sm">
                                    <b>    <i class="fa fa-plus"></i> PRODUCTO</b>
                                </button>

                                <button class="btn btn-success btn-sm">
                                    <b>    <i class="fa fa-plus"></i> MESA</b>
                                </button></td>
                        </tr>

                        <%
                            }
                        %>




                    </table>
                </div><!-- /.box-body -->

                <div class="box-footer clearfix">
                    <ul class="pagination pagination-sm no-margin pull-right">
                        <li><a href="#">&laquo;</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">&raquo;</a></li>
                    </ul>
                </div>
            </div><!-- /.box -->


        </div><!-- /.col -->

    </div><!-- /.row -->

</section><!-- /.content -->

