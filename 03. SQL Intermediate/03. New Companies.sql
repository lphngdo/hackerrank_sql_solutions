SELECT company_code,
       founder,
       (SELECT COUNT(DISTINCT lead_manager_code)
          FROM Lead_Manager AS lead_manager
         WHERE lead_manager.company_code = company.company_code),
       (SELECT COUNT(DISTINCT senior_manager_code)
          FROM Senior_Manager AS senior_manager
         WHERE senior_manager.company_code = company.company_code),
       (SELECT COUNT(DISTINCT manager_code)
          FROM Manager AS manager
         WHERE manager.company_code = company.company_code),
       (SELECT COUNT(DISTINCT employee_code)
          FROM Employee AS employee
         WHERE employee.company_code = company.company_code)
  FROM Company AS company
 ORDER BY company.company_code;
