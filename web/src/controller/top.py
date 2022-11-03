from flask import Blueprint, render_template
from service import top
import json

bp_top = Blueprint('top', __name__)

@bp_top.route('/top')
def index():

    view_data = top.Top.get_index_data()

    return render_template('top.html', title="トップ", data=view_data, json_data=json.dumps(view_data, default=str))
