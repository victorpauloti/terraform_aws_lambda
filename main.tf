resource "aws_lambda_function" "test_lambda" {
  # If the file is not in the current working directory you will need to include a
  # path.module in the filename.
  #filename      = "lambda_function_payload.zip"
  function_name = "firstFunction"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "index.mjs"

  #source_code_hash = data.archive_file.lambda.output_base64sha256

  runtime = "nodejs18.x"

  environment {
    variables = {
      Projeto = "Lambada Teste"
    }
  }
}