
"use strict";

let Sidescan = require('./Sidescan.js');
let MbesSimAction = require('./MbesSimAction.js');
let MbesSimGoal = require('./MbesSimGoal.js');
let MbesSimActionGoal = require('./MbesSimActionGoal.js');
let MbesSimResult = require('./MbesSimResult.js');
let MbesSimActionResult = require('./MbesSimActionResult.js');
let MbesSimFeedback = require('./MbesSimFeedback.js');
let MbesSimActionFeedback = require('./MbesSimActionFeedback.js');
let SssSimAction = require('./SssSimAction.js');
let SssSimGoal = require('./SssSimGoal.js');
let SssSimActionGoal = require('./SssSimActionGoal.js');
let SssSimResult = require('./SssSimResult.js');
let SssSimActionResult = require('./SssSimActionResult.js');
let SssSimFeedback = require('./SssSimFeedback.js');
let SssSimActionFeedback = require('./SssSimActionFeedback.js');

module.exports = {
  Sidescan: Sidescan,
  MbesSimAction: MbesSimAction,
  MbesSimGoal: MbesSimGoal,
  MbesSimActionGoal: MbesSimActionGoal,
  MbesSimResult: MbesSimResult,
  MbesSimActionResult: MbesSimActionResult,
  MbesSimFeedback: MbesSimFeedback,
  MbesSimActionFeedback: MbesSimActionFeedback,
  SssSimAction: SssSimAction,
  SssSimGoal: SssSimGoal,
  SssSimActionGoal: SssSimActionGoal,
  SssSimResult: SssSimResult,
  SssSimActionResult: SssSimActionResult,
  SssSimFeedback: SssSimFeedback,
  SssSimActionFeedback: SssSimActionFeedback,
};
