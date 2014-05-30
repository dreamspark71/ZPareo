package servlets.matiere;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import dao.DAOFactory;
import dao.MatiereDao;
import forms.MatiereForm;

@SuppressWarnings("serial")
@WebServlet("/ai/matiere/suppression")
public class MatiereSuppression extends HttpServlet
{
	public static final String CONF_DAO_FACTORY = "daofactory";
	private MatiereDao matiereDao;
	
	public void init() throws ServletException 
    {
        this.matiereDao = ((DAOFactory) getServletContext().getAttribute(CONF_DAO_FACTORY)).getMatiereDao();
    }

    public MatiereSuppression() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		MatiereForm form = new MatiereForm(this.matiereDao);
		
		form.supprimerMatiere(request);
		response.sendRedirect("http://localhost:8080/ZPareo/ai/matiere");  
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	}

}
