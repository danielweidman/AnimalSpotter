from flask import Flask, render_template, g, redirect, url_for
from flask_oidc import OpenIDConnect
from okta import UsersClient

###SECRET OKTA KEYS GO HERE, NOT GONNA UPLOAD THEM TO GITHUB OFC


@app.before_request
def before_request():
    if oidc.user_loggedin:
        g.user = okta_client.get_user(oidc.user_getfield("sub"))
    else:
        g.user = None


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/dashboard")
@oidc.require_login
def dashboard():
    return render_template("dashboard.html")


@app.route("/log_sighting")
@oidc.require_login
def log_sighting():
    return render_template("log_sighting.html")

@app.route("/recent_sightings")
@oidc.require_login
def recent_sightings():
    return render_template("recent_sightings.html")




@app.route("/login")
@oidc.require_login
def login():
    return redirect(url_for(".dashboard"))


@app.route("/logout")
def logout():
    oidc.logout()
    return redirect(url_for(".index"))