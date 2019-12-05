using ServiciosWeb.Datos.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ServiciosWeb.WebApi.Controllers
{
    public class UsuarioController : ApiController
    {
        RestauranteConnection BD = new RestauranteConnection();
        
        [HttpGet]
        public IEnumerable<t_usuario> Get()
        {
            var listado = BD.t_usuario.ToList();
            return listado;
        }

        //GET api/Usuario/{id}
        /// <summary>
        /// Permite consultar la información de todos los libros
        /// </summary>
        /// <param name="id">Identificador del objeto GET</param>
        /// <returns></returns>
        [HttpGet]
        public t_usuario Get(int id)
        {
            var usuario = BD.t_usuario.FirstOrDefault(x => x.usua_id == id);
            return usuario;
        }

        //INSERCIÖN
        [HttpPost]
        public bool Post(t_usuario usuario)
        {
            BD.t_usuario.Add(usuario);
            return BD.SaveChanges() > 0;
        }

        [HttpPut]
        public bool Put(t_usuario usuario)
        {
            var usuarioActualizar = BD.t_usuario.FirstOrDefault(x => x.usua_id == usuario.usua_id);
            //usuarioActualizar.usua_email = usuario.usua_email;
            usuarioActualizar.usua_pass = usuario.usua_pass;
            usuarioActualizar.usua_nomb = usuario.usua_nomb;
            usuarioActualizar.usua_dni = usuario.usua_dni;
            usuarioActualizar.usua_direc = usuario.usua_direc;
            usuarioActualizar.dist_id = usuario.dist_id;
            usuarioActualizar.usua_refedirec = usuario.usua_refedirec;
            usuarioActualizar.usua_fecnac = usuario.usua_fecnac;
            usuarioActualizar.usua_rutaimagen = usuario.usua_rutaimagen;
            return BD.SaveChanges() > 0;
        }

        [HttpDelete]
        public bool Delete(int id)
        {
            var usuarioEliminar = BD.t_usuario.FirstOrDefault(x => x.usua_id == id);
            BD.t_usuario.Remove(usuarioEliminar);
            return BD.SaveChanges() > 0;
        }

    }
}
