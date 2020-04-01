
	</body>
	

	<script type="text/javascript">
			function ativaAgora(id){
				$.post("ativaCurso", {'id': id}, function(){
					$("#ativo_"+id).html("ATIVO");
					$("#ativo_"+id).attr("class", "table-success");
					$("#tdAtiva_"+id).closest("a").hide();
				});
			}
			
			function removeAgora(id){
				$.post("removeCurso", {'id':id}, function(){
					$("#remove_"+id).closest("tr").hide();
				});
			}
						
	</script>
	
</html>