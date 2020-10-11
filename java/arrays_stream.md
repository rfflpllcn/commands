
##### findAccountByOwnerId(long id) takes user id and returns this user account or null in case no account was found;
>>>>
        @Override
         public Account findAccountByOwnerId(long id) {
             return Arrays.stream(accounts)
                          .filter(account -> account.getOwner().getId() == id)
                          .findFirst()
                          .orElse(null);
         }
#####  countAccountsWithBalanceGreaterThan(long balance) returns the number of accounts with a balance exceeding the provided number.

         @Override
         public long countAccountsWithBalanceGreaterThan(long value) {
             return Arrays.stream(accounts)
                          .map(Account::getBalance)
                          .filter(balance -> balance > value)
                          .count();
         }
     }