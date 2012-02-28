module AdminHelper

	def admin_signed_in
		if current_student
			if current_student.id < 5
				return 1
			end
		end
	end
end
