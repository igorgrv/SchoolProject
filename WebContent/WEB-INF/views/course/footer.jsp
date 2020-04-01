<!-- 
@igorgrv author 
-->
	</body>
	

	<script type="text/javascript">
			function activeNow(id){
				$.post("activeCourse", {'id': id}, function(){
					$("#active_"+id).html("ACTIVATED");
					$("#active_"+id).attr("class", "table-success");
					$("#tdActive_"+id).closest("a").hide();
				});
			}
			
			function removeNow(id){
				$.post("removeCourse", {'id':id}, function(){
					$("#remove_"+id).closest("tr").hide();
				});
			}
						
	</script>
	
</html>