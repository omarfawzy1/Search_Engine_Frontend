Feature: Show history of searching queries
  Background:
    Given each operator has Search History stored from later to earlier as follows:
      | operator id | Search Query 1                | Search Query 2         | Search Query 3            | Search Query 4                        |
      | 1           | PO with Code ~ 2018           | PO with Type ~ Service | PO with Vendor ~ Zhejiang | PO with Reference Document ~ Import P |
      | 2           | PO with Business Unit ~ media | PO with State ~  Ship  |                           |                                       |
      | 3           |                               |                        |                           |                                       |
  Scenario: operator with id = 1 pressed on search bar
    Given operator whose id "1" is logged in
    When operator press Search bar
    Then the last 4 Queries (if exists) listed from later to earlier as follows:
      | PO with Code ~ 2018                   |
      | PO with Type ~ Service                |
      | PO with Vendor ~ Zhejiang             |
      | PO with Reference Document ~ Import P |

  Scenario: operator with id = 2 pressed on search bar
    Given operator whose id "2" is logged in
    When operator press Search bar
    Then the last 4 (if exists) Queries listed from later to earlier as follows:
      | PO with Business Unit ~ media         |
      | PO with State ~  Ship                 |

  Scenario: operator with id = 3 pressed on search bar
    Given operator whose id "3" is logged in
    When operator press Search bar
    Then the system list no search history as there is no previous search queries

