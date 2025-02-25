package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.claseUsuario;
import persistencia.exceptions.NonexistentEntityException;

//Java Class
public class controladoraPersistencia {
    claseUsuarioJpaController usuJpa = new claseUsuarioJpaController();
    
    public void crearUsuario(claseUsuario usu){
        usuJpa.create(usu);
    }
    
    public List<claseUsuario> traerUsuarios(){
        return usuJpa.findclaseUsuarioEntities();
    }
    
    public void borrarUsuario(int id_eliminar){
        try{
            usuJpa.destroy(id_eliminar);
        }catch(NonexistentEntityException ex){
            Logger.getLogger(controladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
