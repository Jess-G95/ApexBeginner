trigger AccountDedupe on Account (after insert) {
    for(Account dupeAccount : Trigger.new) {
        Case c = new Case();
        c.Subject = 'Dedupe this account';
        c.OwnerId = '0054H000007cpvCQAQ';
        c.AccountId = dupeAccount.Id;
        insert c;
    }

}