import azure.functions as func
import json

app = func.FunctionApp(http_auth_level=func.AuthLevel.ANONYMOUS)


@app.route(route="health", methods=["GET"])
def health(req: func.HttpRequest) -> func.HttpResponse:
    response = {
        "status": "healthy",
        "service": "serverless-api"
    }

    return func.HttpResponse(
        json.dumps(response),
        mimetype="application/json",
        status_code=200
    )