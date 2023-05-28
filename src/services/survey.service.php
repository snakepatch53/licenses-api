<?php
class SurveyService
{
    public static function select($DATA)
    {
        header('Content-Type: application/json');
        header('Access-Control-Allow-Origin: *');
        $adapter = $DATA['mysqlAdapter'];
        $surveyDao = new SurveyDao($adapter);
        $survey = $surveyDao->select();
        echo json_encode([
            'status' => 'success',
            'message' => 'Cuestionario obtenido correctamente',
            'response' => true,
            'data' => $survey
        ]);
    }

    public static function insert($DATA)
    {
        header('Content-Type: application/json');
        header('Access-Control-Allow-Origin: *');
        $adapter = $DATA['mysqlAdapter'];
        $result = [
            'status' => 'error',
            'message' => 'Faltan datos para ingresar la pregunta en el cuestionario',
            'response' => false,
            'data' => null
        ];
        if (isset(
            $_POST['survey_question'],
            $_POST['survey_answer']
        )) {
            $surveyDao = new SurveyDao($adapter);
            $survey_question = $_POST['survey_question'];
            $survey_answer = $_POST['survey_answer'];
            $survey_image = "";
            if (isset($_FILES['survey_image'])) {
                if ($_FILES['survey_image']['tmp_name'] != "" or $_FILES['survey_image']['tmp_name'] != null) {
                    $survey_image = uploadFIle($_FILES['survey_image'], './public/img.survey/');
                }
            };

            $survey = $surveyDao->insert(
                $survey_question,
                $survey_answer,
                $survey_image
            );

            $result = [
                'status' => 'success',
                'message' => 'Pregunta ingresada correctamente en el cuetrionario',
                'response' => true,
                'data' => $survey
            ];
        }
        echo json_encode($result);
    }

    public static function update($DATA)
    {
        header('Content-Type: application/json');
        header('Access-Control-Allow-Origin: *');
        $adapter = $DATA['mysqlAdapter'];
        $result = [
            'status' => 'error',
            'message' => 'Faltan datos para actualizar el usuario',
            'response' => false,
            'data' => null
        ];
        if (isset(
            $_POST['survey_id'],
            $_POST['survey_question'],
            $_POST['survey_answer']
        )) {
            $surveyDao = new SurveyDao($adapter);

            $survey_id = $_POST['survey_id'];
            $current_survey = $surveyDao->selectById($survey_id);
            if (!$current_survey) {
                $result['message'] = 'La pregunta no existe en el cuestionario';
                echo json_encode($result);
                exit();
            }

            $survey_question = $_POST['survey_question'];
            $survey_answer = $_POST['survey_answer'];
            $survey_image = $current_survey['survey_image'];

            if (isset($_FILES['survey_image'])) {
                if ($_FILES['survey_image']['tmp_name'] != "" or $_FILES['survey_image']['tmp_name'] != null) {
                    if ($survey_image != 'default.png' && $survey_image != '') deleteFile('./public/img.survey/' . $survey_image);
                    $survey_image = uploadFIle($_FILES['survey_image'], './public/img.survey/');
                }
            }
            $survey = $surveyDao->update(
                $survey_id,
                $survey_question,
                $survey_answer,
                $survey_image
            );
            $result = [
                'status' => 'success',
                'message' => 'Pregunta actualizada correctamente',
                'response' => true,
                'data' => $survey
            ];
        }
        echo json_encode($result);
    }

    public static function delete($DATA)
    {
        header('Content-Type: application/json');
        header('Access-Control-Allow-Origin: *');
        $adapter = $DATA['mysqlAdapter'];
        $result = [
            'status' => 'error',
            'message' => 'Faltan datos para eliminar la pregunta del cuestionario',
            'response' => false,
            'data' => null
        ];
        if (isset($_POST['survey_id'])) {
            $surveyDao = new SurveyDao($adapter);
            $survey_id = $_POST['survey_id'];
            $survey = $surveyDao->selectById($survey_id);
            if (!$survey) {
                $result['message'] = 'La pregunta no existe en el cuestionario';
                echo json_encode($result);
                exit();
            }
            if ($survey['survey_image'] != 'default.png' && $survey['survey_image'] != '') {
                deleteFile('./public/img.survey/' . $survey['survey_image']);
            }

            $surveyDao->deleteById($survey_id);
            $result = [
                'status' => 'success',
                'message' => 'Pregunta eliminada correctamente',
                'response' => true,
                'data' => null
            ];
        }
        echo json_encode($result);
    }
}
