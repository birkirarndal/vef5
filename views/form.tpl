% rebase('base.tpl', title="Skráningarform")

<form method="post" action="data" accept-charset="ISO-8859-1">
	<label>
		Nafn:
		<br>
		<input type="text" name="nafn" required>
	</label>
	<br><br>
	<label>
		Heimilisfang:
		<br>
		<input type="text" name="heimili" required>
	</label>
	<br><br>
	<label>
		Email:
		<br>
		<input type="email" name="email" required>
	</label>
	<br><br>
	<label>
		Símanúmer:
		<br>
		<input type="text" name="simi" required pattern="^(\+354 )?\d{3}[  -]?\d{4}$" placeholder="1234567">
	</label>
	<br><br>
	<h3>Fyrir hádegi</h3>
	<h4><label><input type="checkbox" name="namsk" value="Python-1">Python</label> |
	<label><input type="checkbox" name="namsk" value="Javaskrift-1">Javaskrift</label> |
	<label><input type="checkbox" name="namsk" value="gagnasofn-1">Gagnasöfn</label>
	</h4>
	<h3>Hádegisverður</h3>
	<label><input type="radio" name="matur" value="Já">Já takk</label> |
	<label><input type="radio" name="matur" value="Nei">Nei takk</label>
	<h3>Eftir Hádegi</h3>
	<h4><label><input type="checkbox" name="namsk" value="Python-2">Python 2</label> |
	<label><input type="checkbox" name="namsk" value="Javaskrift-2">Javaskrift 2</label> |
	<label><input type="checkbox" name="namsk" value="gagnasofn-2">Gagnasöfn 2</label>
	</h4>
	<input type="submit" name="submit" value="Panta">
</form>