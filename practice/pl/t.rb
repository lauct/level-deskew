require 'tk'

msg="你好！中国"
root=TkRoot.new{title msg}
label_msg=TkLabel.new(root){
	  text  msg
		    pack :padx=>2,:pady=>2,:side=>'top'
			  font "monaco 20 bold"
}
  
TkButton.new(root){
	  text "变色"
		    pack :padx=>2,:pady=>2,:side=>'bottom'
			  command{
				      label_msg.configure('foreground'=>'red')
						    }
}

Tk.mainloop
