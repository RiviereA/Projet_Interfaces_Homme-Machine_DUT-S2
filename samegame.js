var blockSize = 40;
var maxColumn = 10;
var maxRow =15;
var maxIndex = maxColumn * maxRow;
var board = new Array(maxIndex);
var component;

function index(column, row) {
	return column + (maxColumn * row);
}

function createBlock(column, row) {
	if (component == null) {
		component = Qt.createComponent("Block.qml");
	}

	if (component.status != Component.Ready) {
		console.log("error loading block component");
		console.log(component.errorString());
		return false;
	}

	var dynamicObject = component.createObject(background);
	if (dynamicObject == null) {
		console.log("error creating block");
		console.log(component.errorString());
		return false;
	}
    dynamicObject.type = Math.floor(Math.random()*3)
	dynamicObject.x = column * blockSize;
	dynamicObject.y = row * blockSize;
    dynamicObject.width = blockSize;
    dynamicObject.height = blockSize;
	board[index(column, row)] = dynamicObject;
	return true;
}

function startNewGame() {
	for (var i = 0; i < maxIndex; i++) {
		if (board[i] != null) {
            board[i].destroy();
		}
	}

	maxColumn = Math.floor(background.width / blockSize);
	maxRow = Math.floor(background.height / blockSize);
	maxIndex = maxRow * maxColumn;

	board = new Array(maxIndex);

	for(var column = 0; column < maxColumn; column++) {
		for (var row = 0; row < maxRow; row++) {
			board[index(column, row)] = null;
			createBlock(column, row);
		}
	}
}
