# Raw Game Data - Numbers, Facts, Formulas

## About Auto Leveling Scheme

[Link to Forum documentation](https://terra-arcanum.com/forums/threads/tutorial-custom-level-schemes.18507/)

### File Acquisition

The auto leveling scheme uses 2 files to work properly [[#gamelevelname.mes]] and [[#gamelevel.mes]]
This files can be found by undatting Arcanum5.dat and Arcanum4.dat respectively.
To make them work properly the will need to be added to ./Arcanum of Steamworks and Magick Obscura\data\mes and  ./Arcanum of Steamworks and Magick Obscura\data\rules respectively.


### gamelevelname.mes
#### Template

[base_template](docs/game-data/gamelevelname.mes)


#### Syntax

_{scheme_id}{scheme_name}_

#### Parameters

> scheme_id

A positive integer greater or equal to 107.

>[!warning]
>Integer numbers from 0 to 49 are "reserved" for the base game schemes. Changing them may result in data loss, data corruption or an overall unplayable state of the game.

>scheme_name

A string with ? max characters. If the characters are too many the game will not show the scheme name, hence it will not me usable.

### gamelevel.mes

#### Template

[base_template](docs/game-data/gamelevel.mes)

#### Syntax

_{scheme_id}-scheme_name		{point_1_allocation, point_2_allocation}_

#### Parameters

> scheme_id

A positive integer between 50 and 199. It links the schemes (this one with the same _scheme_id_ in [[#gamelevelname.mes]])

>-_scheme_name

Any string (no limit known) preceded with "-".

>[!note]
>It is a good practice to have the same name as the one stated in [[#gamelevelname.mes]], though it is not necessary. 

> point_n_allocation

Each point allocation is divided by a comma. refers to where the point is actually allocated.

The _point_n_allocation_ structure is as follows:

> _valid_name target_

_target_ is a number that depends on the value of the valid name and it's 

_valid_names_ is a spell, tech skill, tech degree, attribute, health or mana alias (refer to the table below) that is valid.

A comprehensive table of each possible names, permitted aliases and values:

| name         | max values |
| ------------ | ---------- |
| st           | 20         |
| dx           | 20         |
| cn           | 20         |
| be           | 20         |
| in           | 20         |
| pe           | 20         |
| wp           | 20         |
| ch           | 20         |
| bow          | 20         |
| dodge        | 20         |
| melee        | 20         |
| throwing     | 20         |
| backstab     | 20         |
| pickpocket   | 20         |
| prowling     | 20         |
| spottrap     | 20         |
| gambling     | 20         |
| haggle       | 20         |
| heal         | 20         |
| persuasion   | 20         |
| repair       | 20         |
| firearms     | 20         |
| picklock     | 20         |
| armtrap      | 20         |
| conveyance   | 5          |
| divination   | 5          |
| air          | 5          |
| earth        | 5          |
| fire         | 5          |
| water        | 5          |
| force        | 5          |
| mental       | 5          |
| meta         | 5          |
| morph        | 5          |
| nature       | 5          |
| necro_evil   | 5          |
| necro_good   | 5          |
| phantasm     | 5          |
| summoning    | 5          |
| temporal     | 5          |
| anatomical   | 7          |
| chemistry    | 7          |
| electric     | 7          |
| explosives   | 7          |
| gun_smithy   | 7          |
| mechanical   | 7          |
| smithy       | 7          |
| therapeutics | 7          |
| maxhps       | ?          |
| maxfatigue   | ?          |

>[!note]
>_anatomical_ refers to herbology.
>
>The allocation point represents the "goal" to achieve i.e. "st 20" translates to "add points until strength is at 20".
>Also note that saying "melee 20" will add 18 points in Dexterity too, since it is a requirement to achieve it.
