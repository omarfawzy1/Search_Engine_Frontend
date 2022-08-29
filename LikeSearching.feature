Feature: Search for a PO with like (~) symbol

  Background:
    Given Purchase Orders in the system are as follows:
      | Code       | Type                   | Vendor            | Reference Document                 | Business Unit | State     |
      | 2020000048 | Local Purchase Order   | 000002 - Zhejiang | --                                 | Signmedia     | Shipped   |
      | 2020000047 | Service Purchase Order | 000002 - Zhejiang | Local Purchase Order - 2018000017  | Signmedia     | Confirmed |
      | 2020000046 | Service Purchase Order | 000002 - Zhejiang | Import Purchase Order - 2018000023 | Offset        | Confirmed |
      | 2020000045 | Service Purchase Order | 000001 - Zhejiang | Import Purchase Order - 2018000001 | Signmedia     | Confirmed |
      | 2020000004 | Service Purchase Order | 000001 - Zhejiang | Import Purchase Order - 2018000055 | Flexo         | Draft     |
      | 2020000002 | Local Purchase Order   | 000001 - Sigewerk | --                                 | Flexo         | Shipped   |
      | 2020000003 | Local Purchase Order   | 000002 - Sigewerk | --                                 | Flexo         | Shipped   |
      | 2018000001 | Import Purchase Order  | 000003 - Zhejiang | --                                 | Signmedia     | Cleared   |
      | 2018100006 | Local Purchase Order   | 000002 - Zhejiang | --                                 | Signmedia     | Draft     |

  Scenario:Search for a PO with Code
    Given Operator is logged in
    When Operator requests for purchase orders with Code with query "PO with Code ~ 2018"
    Then the System Results Will Show as follows:
      | Code       | Type                  | Vendor            | Reference Document | Business Unit | State   |
      | 2018000001 | Import Purchase Order | 000002 - Zhejiang | --                 | Signmedia     | Cleared |
      | 2018100006 | Local Purchase Order  | 000002 - Zhejiang | --                 | Signmedia     | Draft   |

  Scenario:Search for a PO with Type
    Given Operator is logged in
    When Operator requests for purchase orders with Type with query "PO with Type ~ Service"
    Then the System Results Will Show as follows:
      | Code       | Type                   | Vendor            | Reference Document                 | Business Unit | State     |
      | 2020000047 | Service Purchase Order | 000002 - Zhejiang | Local Purchase Order - 2018000017  | Signmedia     | Confirmed |
      | 2020000046 | Service Purchase Order | 000002 - Zhejiang | Import Purchase Order - 2018000023 | Offset        | Confirmed |
      | 2020000045 | Service Purchase Order | 000001 - Zhejiang | Import Purchase Order - 2018000001 | Signmedia     | Confirmed |
      | 2020000004 | Service Purchase Order | 000001 - Zhejiang | Import Purchase Order - 2018000055 | Flexo         | Draft     |

  Scenario:Search for a PO with Vendor
    Given Operator is logged in
    When Operator requests for purchase orders with Vendor with query "PO with Vendor ~ Sigewerk"
    Then the System Results Will Show as follows:
      | Code       | Type                 | Vendor            | Reference Document | Business Unit | State   |
      | 2020000002 | Local Purchase Order | 000001 - Sigewerk | --                 | Flexo         | Shipped |
      | 2020000003 | Local Purchase Order | 000002 - Sigewerk | --                 | Flexo         | Shipped |

  Scenario:Search for a PO with Reference Document
    Given Operator is logged in
    When Operator requests for purchase orders with Reference Document with query "PO with Reference Document ~ Import P"
    Then the System Results Will Show as follows:
      | Code       | Type                   | Vendor            | Reference Document                 | Business Unit | State     |
      | 2020000046 | Service Purchase Order | 000002 - Zhejiang | Import Purchase Order - 2018000023 | Offset        | Confirmed |
      | 2020000045 | Service Purchase Order | 000001 - Zhejiang | Import Purchase Order - 2018000001 | Signmedia     | Confirmed |
      | 2020000004 | Service Purchase Order | 000001 - Zhejiang | Import Purchase Order - 2018000055 | Flexo         | Draft     |

  Scenario:Search for a PO with Business Unit
    Given Operator is logged in
    When Operator requests for purchase orders with Business Unit with query "PO with Business Unit ~ media"
    Then the System Results Will Show as follows:
      | Code       | Type                   | Vendor            | Reference Document                 | Business Unit | State     |
      | 2018000001 | Import Purchase Order  | 000003 - Zhejiang | --                                 | Signmedia     | Cleared   |
      | 2018100006 | Local Purchase Order   | 000002 - Zhejiang | --                                 | Signmedia     | Draft     |
      | 2020000045 | Service Purchase Order | 000001 - Zhejiang | Import Purchase Order - 2018000001 | Signmedia     | Confirmed |
      | 2020000048 | Local Purchase Order   | 000002 - Zhejiang | --                                 | Signmedia     | Shipped   |
      | 2020000047 | Service Purchase Order | 000002 - Zhejiang | Local Purchase Order - 2018000017  | Signmedia     | Confirmed |

  Scenario:Search for a PO with State
    Given Operator is logged in
    When Operator requests for purchase orders with State with query "PO with State ~  Ship"
    Then the System Results Will Show as follows:
      | Code       | Type                   | Vendor            | Reference Document                 | Business Unit | State     |
      | 2020000048 | Local Purchase Order   | 000002 - Zhejiang | --                                 | Signmedia     | Shipped   |
      | 2020000002 | Local Purchase Order   | 000001 - Sigewerk | --                                 | Flexo         | Shipped   |
      | 2020000003 | Local Purchase Order   | 000002 - Sigewerk | --                                 | Flexo         | Shipped   |


  Scenario:Search for a PO and only one record matches
    Given Operator is logged in
    When Operator requests for purchase orders with State with query "PO with State ~  Cleared"
    Then the System will return "https://localhost:8080/#/orders/purchase-order/2018000001"

