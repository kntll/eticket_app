<!DOCTYPE html>

<html>
<head></head>
<body>

**Database tables:** Users, tickets

**Users includes**

<table>
	<tr>
		<td> id </td> 	<td> INT </td>
	</tr>
	<tr>
		<td> email </td> 	<td> VARCHAR </td>
	</tr>
	<tr>
		<td> password </td> 	<td> VARCHAR </td>
	</tr>
	<tr> 
		<td>tickets_selling</td> <td> INT (user-id) </td>
	</tr>
	<tr>	
		<td>tickets-bought</td> <td> INT (user-id)</td>
	</tr>
	

</table>

**tickets**

<table>
	<tr>
		<td>id</td><td>INT</td>
	</tr>
	<tr>
		<td> user </td><td> INT (user-id) </td>
	</tr>
	<tr>	
		<td>ticket_name</td><td>VARCHAR</td>
	</tr>
	<tr>
		<td>artist</td><td>VARCHAR</td>
	</tr>
	<tr>	
		<td>venue</td><td>VARCHAR</td>
	</tr>
	<tr>	
		<td>date-time</td><td>VARCHAR</td>
	</tr>
	<tr>
		<td>costs</td><td>INT</td>
	</tr>
	<tr>
		<td>description</td><td>TEXT</td>
	</tr>
	<tr>
		<td>url</td><td>TEXT</td>
	</tr>
</table>


##Classes

class UsersController

	def save
		@user = user.find(params[:id]
	end
	
	def destroy 
		@user = User.find(params[:id])
		@user.destroy
	end
	
	def edit
		@user = user.find(params[:id])
	end
	
	def index
		@user = User.all
	end
	
	def show
		@user = User.find([params[:id])	
	end

class Ticket

	def search
		@ticket = Ticket.search(params[:id])
	end
	
	def index
		@ticket = Ticket.all
	end
	
	def show
		@ticket = Ticket.find(params[:id])
  end
  
Class Artists

	def show
		@artist = Artists.find([params[:id])	
	end



<img src= "">

	</body>
</html>
