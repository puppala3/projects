class AccountManagement:
    def __init__(self, bank_name):
        self._bank_name=bank_name #Private self attribute
        self.total_accounts = 0  # Public self attribute
        self.total_money = 0  # Public self attribute
        self._account_details = {}  # Private self attribute
    def __repr__(self):
        return f"AccountManagement({self._bank_name})"
    def create_account(self, name, account_id):
        try:
            if account_id in self._account_details:
                raise ValueError("Sorry,this ID was taken already.")
            self._account_details[account_id] = {'name': name, 'balance': 0}
            self.total_accounts += 1
            print("Account is created Successfully!!!")
        except ValueError as e:
            print(e)
    def deposit(self, account_id, amount):
        try:
            amount = float(amount)
            if amount < 0:
              raise ValueError("Deposit amount should be greater than zero.")
            if account_id not in self._account_details:
               raise ValueError("Account ID does not exist.")
            self._account_details[account_id]['balance'] += amount
            self.total_money += amount
            print("Amount is deposited successfully!")
        except ValueError as e:
            print(e)
    def withdraw(self, account_id, amount):
        try:
            amount = float(amount)
            if account_id not in self._account_details:
                raise ValueError("Account ID does not exist.")
            if amount > self._account_details[account_id]['balance']:
                raise ValueError("Withdrawal amount exceeds account balance.")
            self._account_details[account_id]['balance'] -= amount
            self.total_money -= amount
            print("Amount dispensed""\n" "Thankyou!!")
        except ValueError as e:
            print(e)
    def check_balance(self, account_id):
        try:
            if account_id not in self._account_details:
                raise ValueError("Account ID does not exist.")
            return self._account_details[account_id]['balance']
        except ValueError as e:
            print(e)
    def delete_account(self, account_id):
        try:
            if account_id not in self._account_details:
                raise ValueError("Account ID does not exist.")
            self.total_money-=self._account_details[account_id]['balance']
            del self._account_details[account_id]
            self.total_accounts -= 1
        except ValueError as e:
            print(e)
    def total_cash(self):
        return self.total_money
    def _display_account_details(self, display_amount):    #private Method
        details = []
        if not self._account_details:  
           details.append("No Account Exists.")
        else:
           print("\nAccount details:\n")
           for account_id, data in self._account_details.items():
               detail = f"Name: {data['name']}\nID: {account_id}\n"
               if display_amount:
                detail += f"Balance: ${data['balance']}\n"
               details.append(detail)
        return "\n".join(details)
account = AccountManagement("Chase bank")
print(account)
while True:
    print("\nChoose an option:")
    print("1. Create Account")
    print("2. Deposit")
    print("3. Withdraw")
    print("4. Check Balance")
    print("5. Delete Account")
    print("6. Total Accounts")
    print("7. Display Account Details")
    print("8. Total Money")
    print("9. Exit")
    choice = input("Enter your choice (1-9): ")
    if choice == '1':
        name = input("Enter name: ")
        account_id = int(input("Enter account ID: "))
        account.create_account(name, account_id)
    elif choice == '2':
        account_id = int(input("Enter account ID: "))
        amount = float(input("Enter deposit amount: "))
        account.deposit(account_id, amount)
    elif choice == '3':
        account_id = int(input("Enter account ID: "))
        amount = float(input("Enter withdrawal amount: "))
        account.withdraw(account_id, amount)
    elif choice == '4':
        account_id = int(input("Enter account ID: "))
        balance = account.check_balance(account_id)
        if balance is not None:
            print(f"Current balance: ${balance:.2f}")
    elif choice == '5':
        account_id = int(input("Enter account ID: "))
        account.delete_account(account_id)
        print("Account is deleted.")
    elif choice == '6':
        if account.total_accounts == 0:
            print("No account exists.")
        else:
            print(f"Total accounts: {account.total_accounts}")
    elif choice == '7':
        print(account._display_account_details("TRUE"))
    elif choice == '8':
        if account.total_cash() == 0:
            print("No cash exists.")
        else:
            print(f"Total Money: ${account.total_cash():.2f}")
    elif choice == '9':
        break
    else:
        print("Invalid choice. Please choose between 1-9.")
