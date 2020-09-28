# balloons
MEDA2002 Household CO2 emissions


### File notes:

'./data/' :
* 'apps_ref.csv' - Main appliance data summary table. Includes calculated mean energy use per appliance, estimated duration of single 'use', calculated equivalent CO2 (kg) emissions and number of balloons per use for each appliance, etc.
* 'apps_ref_attribute_notes.csv' - Description of attributes from 'apps_ref.csv'.
* 'cleaning.Rmd' - R markdown file containing all cleaning procedures.
* 'cleaning.html' - HMTL version of cleaning file with figures and plots. Easier to read version of cleaning procedures.
* 'cleaning_notes.csv'- Notes describing data cleaning tasks performed.

'./data/data_raw/' :
* 'apps_nonstar.csv' - Data for additional apps that weren't available from the energy star rating website. Data sourced from various online appliance stores.
* 'apps_nonstar_attribute_notes.csv' - Description of attributes from 'apps_nonstar.csv'.

'./data/data_clean/' :
* 'cleaned_appliance_attribute_notes.csv' - Description of shared and unique attributes for each appliance in the cleaned appliance datasets'.
* 'electricity_rates.csv' - Synergy Electricity charge for each hour of the day including variable rates, fixed rates and daily supply costs.
* 'electricity_rates_attribute_notes.csv' - Description of attributes from 'electricity_rates.csv'.
* 'emissions_factor_per_state_AUS' - Emissions factor values for each Australian state/region.

