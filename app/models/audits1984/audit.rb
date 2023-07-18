module Audits1984
  class Audit < Console1984::Base
    belongs_to :session, class_name: "Console1984::Session", touch: true
    belongs_to :auditor, class_name: Audits1984.auditor_class

    enum status: {
      pending: 0,
      approved: 1, 
      flagged: 2
    }, _prefix: "audit"

    encrypts :notes
  end
end
