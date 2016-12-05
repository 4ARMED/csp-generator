use csp
db.csp.remove({})
db.csp.createIndex( { "csp-report.document-uri": 1, "csp-report.blocked-uri": 1 }, { unique: true })