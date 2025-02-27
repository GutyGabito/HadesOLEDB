USE [HADES]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarImpuestosPorProveedor]    Script Date: 09/12/2018 08:05:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarImpuestosPorProveedor]

@Codigo nvarchar (250),
@IVA decimal (10, 2),
@OtrosImpuestos decimal (10, 2),
@Flete decimal (10, 2),
@Utilidad decimal (10, 2)



AS
BEGIN

	UPDATE ImpuestosProducto SET
        
    [IVA] = @IVA,
    [OtrosImpuestos] = @OtrosImpuestos,
    [Flete] = @Flete,  
    [Utilidad] = @Utilidad
       
    WHERE [CodigoProducto]= @Codigo
    	
END
GO
