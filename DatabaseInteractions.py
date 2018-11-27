import jsonify




def check_user_profile(user_id):
    #Check if user id is in database. If not, create a new entry for the user
    return True

def get_sightings_by_user(user_id):
    #Returns a dict or JSON object (depending where we implement this) describing the sightings made by a particular user.
    #We can use this on the dashboard page and also if we allow for more advanced filtering of other users' sightings.
    return "{}"

def add_sighting_to_db(user_id, animal_id, location_id, latitude, longitude, description):
    #Will add a sighting to the database. Returns either True or False depending on if everything goes properly.
    return True

def add_point_to_sighting(sighting_id):
    #Will add a point to the sighting with the given sighting id
    return True

def get_recent_sightings_JSON():
    #If we don't just use templates for this, then this call could return a list of recent animal sightings and relevant info in JSON format.
    return "{}"
