#! /home/bharat/anaconda3/bin/python

import os
import shutil
from zipfile import ZipFile

import inquirer

downloads = "/mnt/c/users/vbhar/Downloads/"
ln_folder = "/mnt/f/Anime/light novels/"
actions = [
    "Add to Light Novels folder",
    "Add to Anime folder on mobile (if connected)",
    "Both",
]

# Unicodes
tick_mark = "\u2713"
star = "\u2b50"
victory_hand = "\u270c"
sparkles = "\u2728"


def make_inquire(zip_files):
    answers = inquirer.prompt(
        [
            inquirer.List(
                "zip_fname",
                message="Choose the zip file to extract from?",
                choices=zip_files,
                carousel=True,
            ),
            inquirer.Confirm("new_ln", message="New Light Novel?", default=False),
            # inquirer.List(
            #     "action",
            #     message="Select the action?",
            #     default=actions[0],
            #     choices=actions,
            #     carousel=True,
            # ),
        ]
    )

    with ZipFile(os.path.join(downloads, answers["zip_fname"]), "r") as zf:
        ln_fname = zf.infolist()[0].filename[:-5].split('/')[-1]

    if answers["new_ln"]:
        answers |= inquirer.prompt(
            [
                inquirer.Text(
                    "ln_name",
                    message="Name of the Light Novel?",
                    default=ln_fname
                ),
                inquirer.Confirm(
                    "save_struct", message="Save folder structure?", default=False
                ),
            ]
        )
    else:
        default_ln_name = None
        max_matched = 0

        for folder_name in os.listdir(ln_folder):
            matched_len = len(os.path.commonprefix([folder_name, ln_fname]))
            if matched_len > max_matched:
                default_ln_name = folder_name
                max_matched = matched_len

        answers |= inquirer.prompt(
            [
                inquirer.List(
                    "ln_name",
                    message="Name of the Light Novel?",
                    choices=os.listdir(ln_folder),
                    default=default_ln_name,
                    carousel=True,
                )
            ]
        )

    return answers


def take_action(answers):
    # if answers['action'] == actions[0]:
    with ZipFile(os.path.join(downloads, answers["zip_fname"]), "r") as zf:
        ln_folder_name = os.path.join(ln_folder, answers["ln_name"])

        if answers["new_ln"] and answers["save_struct"]:
            zf.extractall(ln_folder)
            print(f'[{tick_mark}] Unzipped \'{answers["zip_fname"]}\'{sparkles}')

            shutil.move(os.path.join(ln_folder, "EPUB"), ln_folder_name)
            print(f'[{tick_mark}] Renamed \'EPUB\' to \'{answers["ln_name"]}\'{star}')
        else:
            if not os.path.exists(ln_folder_name):
                os.makedirs(ln_folder_name)

            for zip_info in zf.infolist():
                if os.path.isdir(zip_info.filename):
                    continue

                zip_info.filename = os.path.basename(zip_info.filename)
                zf.extract(zip_info, ln_folder_name)

            print(f'[{tick_mark}] Unzipped \'{answers["zip_fname"]}\'{sparkles}')

        os.remove(os.path.join(downloads, answers["zip_fname"]))
        print(f'[{tick_mark}] Deleted \'{answers["zip_fname"]}\'{victory_hand}')


if __name__ == "__main__":
    try: 
        zip_files = [fname for fname in os.listdir(downloads) if fname.endswith(".zip")]

        if len(zip_files) > 0:
            answers = make_inquire(zip_files)
            print()
            take_action(answers)
        else:
            print("No zip files!")
    except:
        print('bye :(')
