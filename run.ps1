foreach ($i in (get-content .\contacts1.csv)) {
  echo "adding $i";
  set-mailboxjunkemailconfiguration -identity user@domain.com -TrustedSendersAndDomains @{Add="$i"}
}
