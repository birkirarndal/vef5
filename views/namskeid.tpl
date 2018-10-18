% rebase('base.tpl', title="Skráning í vinnustofur")
	
	<p>Nafn: <b>{{n}}</b></p>
	<p>Heimilisfang: <b>{{h}}</b></p>
	<p>Netfang: <b>{{e}}</b></p>
	<p>Símanúmer: <b>{{s}}</b></p>
	<h3>Vinnustofur</h3>
	<ul>
		% for i in nam:
		<li>
			% if i is not None:
				<b>{{i}}</b>
			% end
		</li>
		% end
	</ul>
	<p>Hádegismatur: <b>{{m}}</b></p>
	<p>Verð án/vsk: <b>{{sub}} kr</b> - verð með/vsk: <b>{{total}} kr.</b></p>