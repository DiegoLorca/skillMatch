# Problema a solucionar a futuro.
Necesito redireccionar desde new_user_registration  a edit_user_registration
se creo el siguiente metodo en models/user


 def completed_profile?
   if name.present? && birthdate.present? && biography.present? && photo.present?
     true
   else
     false
   end
 end

 Esto pregunta si el perfil del usuario esta completo, si lo esta, redirigir a pages_index o a pages_dashboard, esto esta en conjunto con un codigo en controllers/pages (pero no estoy un 100% seguro si va ahí realmente).

 def index (o tambien puede ser en dashboard)
   if current_user.completed_profile?
     redirect_to pages_dashboard_path
   else
     redirect_to edit_user_registration_path
   end
 end

 # Falto subir la imagen a AWS ocupando S3
