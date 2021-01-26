# Upload to Allure EE action

Upload allure-results with allurectl

## Inputs

### `allure_results`

**Required** The relative path to the Allure results directory. 

Default `allure-results`.

## Example usage

```yaml
- name: Upload allure-results to Allure EE
  uses: ./allure-ee-action
  id: allure-ee
  with:
    allure_results: allure-results
    allure_ee_endpoint: ${{ secrets.ALLURE_EE_ENDPOINT }}
    allure_ee_token: ${{ secrets.ALLURE_EE_TOKEN }}
    project_id: ${{ secrets.ALLURE_EE_PROJECT_ID }}
```