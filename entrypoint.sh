#! /usr/bin/env bash

allurectl upload ./${INPUT_ALLURE_RESULTS} --ci-type github -e ${INPUT_ALLURE_EE_ENDPOINT} -t ${INPUT_ALLURE_EE_TOKEN} --project-id ${INPUT_PROJECT_ID} --job-name ${INPUT_JOB_NAME} --job-run-name ${INPUT_LAUNCH_NAME} --launch-name ${INPUT_LAUNCH_NAME} --job-run-uid ${INPUT_JOB_RUN_UID}