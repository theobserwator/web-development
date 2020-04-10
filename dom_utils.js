						
			function select(id, options) {
    			var sel = document.createElement("select");
				sel.id = id;
				for (var i=0; i<options.length; i++) {
				    var opt = document.createElement("option");
					opt.value=options[i];
					opt.text=options[i];
					sel.appendChild(opt);
				}
				return sel;
			}
		
		
			function button(text, func) {
			    var btn = document.createElement('input');
				btn.type = "button";
				btn.value = text;
				btn.onclick = func;
				return btn;
			}
		
		
			function label(text) {
				var newLabel = document.createElement('label');
				newLabel.innerHTML = text;
				return newLabel;
			}
			
			function br() {
				return document.createElement('br');
			}
			
			function text(id) {
				var textField = document.createElement('input');
				textField.type = 'text';
				textField.id = id;
				return textField;
			}
			
			function number(id) {
				var nField = document.createElement('input');
				nField.type = 'number';
				nField.id = id;
				nField.min = 1;
				return nField;
			}
			