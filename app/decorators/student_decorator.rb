class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    values = []
    subject_item.subject_item_notes.each { |note| values << note.value}
    result = sprintf('%.2f', values.sum.to_f / subject_item_notes.count)

    # result == 'Inf' ? avg_note = 0 : result

    if result == "Inf"
      avg_note = 0
    else
      avg_note = result
    end
    return avg_note
  end
end
