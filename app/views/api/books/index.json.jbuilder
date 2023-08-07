json.library do
json.extract! @library, :id, :name
  json.books @books do |book|
    json.id book.id
    json.title book.title
    json.description book.description
    json.author book.author
    json.status book.status
    if book.checked_out_by.present?
    json.checked_out_by book.checked_out_by.name
    end
  end
end