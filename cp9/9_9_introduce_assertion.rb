# 9.9 アサーションの導入（Introduce Assertion）

def expense_limit
  (@expense_limit != NULL_EXPENSE) ? \
    @expense_limit : \
    @primary_project.member_expense_limit
end
