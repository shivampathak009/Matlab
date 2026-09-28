transaction_file = fopen('transactions.txt', 'r');

if transaction_file == -1
    fprintf('Error: transactions.txt file nahi khul saki!\n');
else
    transaction_data = fscanf(transaction_file, '%f');
    fclose(transaction_file);

    transaction_count = length(transaction_data);

    credit_count = 0;
    debit_count = 0;
    credits = 0;
    debits = 0;
    zero_transactions = 0;
    largest_credit = 0;
    largest_debit = 0;

    for transaction_index = 1:transaction_count
        transaction_value = transaction_data(transaction_index);

        if transaction_value > 0
            credit_count = credit_count + transaction_value;
            credits = credits + 1;

            if transaction_value > largest_credit
                largest_credit = transaction_value;
            end

        elseif transaction_value < 0
            debit_count = debit_count + transaction_value;
            debits = debits + 1;

            debit_magnitude = -transaction_value;

            if debit_magnitude > largest_debit
                largest_debit = debit_magnitude;
            end

        else
            zero_transactions = zero_transactions + 1;
        end
    end

    balance = credit_count + debit_count;

    output_file = fopen('output.txt', 'w');

    fprintf(output_file, 'Total Transactions      : %d\n', transaction_count);
    fprintf(output_file, 'Credit Transactions     : %d\n', credits);
    fprintf(output_file, 'Debit Transactions      : %d\n', debits);
    fprintf(output_file, 'Zero Transactions       : %d\n', zero_transactions);
    fprintf(output_file, 'Total Credits Amount    : %g\n', credit_count);
    fprintf(output_file, 'Total Debits Amount     : %g\n', debit_count);
    fprintf(output_file, 'Net Balance             : %g\n', balance);
    fprintf(output_file, 'Largest Credit          : %g\n', largest_credit);
    fprintf(output_file, 'Largest Debit Magnitude : %g\n', largest_debit);

    fclose(output_file);

    fprintf('\nSummary saved to output.txt\n');
end

