const tf = require('@tensorflow/tfjs-node');

async function loadModel() {
  return tf.loadGraphModel('https://storage.googleapis.com/mlgc-subm-model/submissions-model/model.json');
}

module.exports = loadModel;
