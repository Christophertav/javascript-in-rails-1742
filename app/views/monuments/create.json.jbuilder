if @monument.persisted?
  json.form render(partial: "monuments/form", formats: :html, locals: {monument: Monument.new})
  json.inserted_item render(partial: "monuments/monument", formats: :html, locals: {monument: @monument})
  # { form: "", inserted_item: '' }
else
  json.form render(partial: "monuments/form", formats: :html, locals: {monument: @monument})
  # { form: '' }
end
