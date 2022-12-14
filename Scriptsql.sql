USE [intcomexBD]
GO

-- Creacion de tabla clientes
CREATE TABLE tbCliente (
    Id int identity(1,1),
	CONSTRAINT PK_IdCliente PRIMARY KEY NONCLUSTERED (Id),
    Usuario varchar(100),
    NombreCompleto varchar(100),
    Cargo varchar(100),
    Email varchar(100),
	CodTipoContacto int 
);

-- Creacion de tabla tipo contecto

CREATE TABLE tbTipoContacto(
    Id int identity(1,1),
	CONSTRAINT PK_Id PRIMARY KEY NONCLUSTERED (Id),
    Nombre varchar(100) 
);

-- Creacion de relacion

ALTER TABLE tbCliente
   ADD CONSTRAINT FK_Cliente_Contacto FOREIGN KEY (CodTipoContacto)
      REFERENCES tbTipoContacto (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;

-- INSERT

INSERT INTO [dbo].[tbTipoContacto] VALUES ('Contacto Comercial' ) 
INSERT INTO [dbo].[tbTipoContacto] VALUES ('Pago de factura' ) 
INSERT INTO [dbo].[tbTipoContacto] VALUES ('Representante legal') 
INSERT INTO [dbo].[tbTipoContacto] VALUES ('Retiro de mercadería') 