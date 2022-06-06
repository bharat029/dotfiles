#! /home/bharat/anaconda3/bin/python

from datetime import datetime

import inquirer
import json
from typing import Dict

settings_fname = "files/expenses-settings.json"

with open(settings_fname) as settings_fp:
    settings = json.load(settings_fp)
    types = settings["types"]
    tags = settings["tags"]


def validate_amount(answers: Dict, current: str) -> bool:
    try: 
        float(current.replace(',', ''))
        return True
    except: 
        return False

answers = inquirer.prompt(
    [
        inquirer.Text("date", message="Date", default=datetime.today().date(),),
        inquirer.List(
            "category",
            message="Category",
            choices=["Bank Account", "Credit Card"],
            carousel=True,
        ),
        inquirer.List(
            "type", message="Transaction Type", choices=types, carousel=True,
        ),
        inquirer.Text("amount", message="Amount", validate=validate_amount),
    ]
)

answers |= inquirer.prompt(
    [inquirer.List("tag", message="Tag", choices=tags[answers["type"]] + ["Other"], carousel=True),]
)

if answers["tag"] == "Other":
    answers |= inquirer.prompt([inquirer.Text("tag", message="Tag"),])
    settings["tags"][answers["type"]] += [answers["tag"]]

    with open(settings_fname, "w") as settings_fp:
        json.dump(settings, settings_fp)

answers |= inquirer.prompt([inquirer.Text("desc", message="Description"),])

print(answers)
