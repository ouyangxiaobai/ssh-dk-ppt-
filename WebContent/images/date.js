				var week; 
				if(new Date().getDay()==0)          week="星期日"
				if(new Date().getDay()==1)          week="星期一"
				if(new Date().getDay()==2)          week="星期二" 
				if(new Date().getDay()==3)          week="星期三"
				if(new Date().getDay()==4)          week="星期四"
				if(new Date().getDay()==5)          week="星期五"
				if(new Date().getDay()==6)          week="星期六"
				document.write(new Date().getFullYear()+"年"+(new Date().getMonth()+1)+"月"+new Date().getDate()+"日 "+week);