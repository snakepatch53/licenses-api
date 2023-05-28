<?php
class SurveyDao
{
    private MysqlAdapter $mysqlAdapter;
    public function __construct(MysqlAdapter $mysqlAdapter)
    {
        $this->mysqlAdapter = $mysqlAdapter;
    }

    public function select(): array
    {
        $survey = [];
        $resultset = ($this->mysqlAdapter)->query("SELECT * FROM survey");
        while ($row = mysqli_fetch_assoc($resultset)) {
            $survey[] = $this->schematize($row);
        }
        return $survey;
    }

    public function selectById($id)
    {
        $resultset = ($this->mysqlAdapter)->query("SELECT * FROM survey WHERE survey_id = $id");
        $row = mysqli_fetch_assoc($resultset);
        if (!$row) return false;
        return $this->schematize($row);
    }

    public function insert(
        string $survey_question,
        string $survey_answer,
        string $survey_image
    ) {
        $survey_last = date('Y-m-d H:i:s');
        $survey_created = date('Y-m-d H:i:s');
        $resultset = ($this->mysqlAdapter)->query("
            INSERT INTO survey SET
                survey_question = '$survey_question',
                survey_answer = '$survey_answer',
                survey_image = '$survey_image',
                survey_last = '$survey_last',
                survey_created = '$survey_created'
        ");

        if (!$resultset) return false;
        return $this->mysqlAdapter->getLastId();
    }

    public function update(
        string $survey_id,
        string $survey_question,
        string $survey_answer,
        string $survey_image
    ) {
        $survey_last = date('Y-m-d H:i:s');
        $resultset = ($this->mysqlAdapter)->query("
            UPDATE survey SET 
                survey_question = '$survey_question',
                survey_answer = '$survey_answer',
                survey_image = '$survey_image',
                survey_last = '$survey_last'
            WHERE survey_id = '$survey_id'
        ");
        if (!$resultset) return false;
        return true;
    }

    public function deleteById(string $id): bool
    {
        $resultset = ($this->mysqlAdapter)->query("DELETE FROM survey WHERE survey_id = '$id'");
        if (!$resultset) {
            return true;
        }
        return true;
    }

    private function schematize($row)
    {
        $row['survey_image_url'] = $row['survey_image'] == '' ? false : $_ENV['HTTP_DOMAIN'] . "public/img.survey/" . $row['survey_image'];
        return $row;
    }
}
