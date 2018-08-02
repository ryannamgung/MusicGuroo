<%= f.date_field :date,  value: @lesson.teacher.available_slots.first.strftime("%Y-%m-%d") %>
<%= f.time_field :time,  value: @lesson.teacher.available_slots.first.strftime("%T") %>
