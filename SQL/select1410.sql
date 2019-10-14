select
	first_name,
	last_name,
	email,
	case 
		when first_name is null
			then substr(last_name, 1, instr(last_name, ' '))
		when instr(first_name, ' ') > 0
			then substr(first_name, 1, instr(first_name, ' '))
		else first_name
	end as first_name_clear,
	case
		when last_name is null
			then substr(first_name, instr(first_name, ' ')+1, length(first_name))
		when instr(last_name, ' ') > 0
			then substr(last_name, instr(last_name, ' ')+1, length(last_name))
		else last_name
	end as last_name_clear,
	case 
		when instr(email, ' ') >0 and substr(email, 1, instr(email, ' ')) like '%@%'
			then substr(email, 1, instr(email, ' '))
		when email not like '%@%'
			then null
		else email
	end as email_clear,
	case
		when instr(email, ' ') >0 and substr(email, 1, instr(email, ' ')) like '%@%'
			then substr(email, instr(email, ' ')+1, length(email))
		when email not like '%@%'
			then email
		else null
	end as phone_clear
from personsData