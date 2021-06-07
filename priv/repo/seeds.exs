alias TeamBudget.{Accounts.User, Repo}

%{
  first_name: "João Eliandro",
  last_name: "Germano",
  email: "eliandrogermano@gmail.com",
  password_hash: "12312312"
}
|> User.changeset()
|> Repo.insert()

%{
  first_name: "John Doe",
  last_name: "Simon",
  email: "johndoesimon@jds.com",
  password_hash: "12312312"
}
|> User.changeset()
|> Repo.insert()
