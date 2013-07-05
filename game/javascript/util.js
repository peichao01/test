;(function(exports){
	var naruto = exports.naruto;
	var util = {};
	var Matrix2D = {};
	var string = {};

	string.pad = function(str, totalCount, padChar, isPadInLeft){
		str = str+'';
		if(str.length>=totalCount) return;
		var padCount = totalCount - str.length;
		var padStr = [];
		for(var i=0;i<padCount;i++) padStr.push(padChar);
		return isPadInLeft
				? (padStr.join('') + str)
				: (str + padStr.join(''));
	}

	//@param arr 要旋转的数组，只能是一维或二维数组
	//	e.g. [0, 1, 2,
	//		  3, 4, 5,
	//		  6, 7, 8]
	//	e.g. [[0, 1, 2],
	//		  [3, 4, 5],
	//		  [6, 7, 8]]
	//@param [ totalColumnCount int ]
	//		如果是数组是一维的，必须指定以几个元素为单位来旋转
	//@return new array
	Matrix2D.rotateClockwise = function(arr, totalColumnCount){
		var result = [], result_i, i, j;
		if(totalColumnCount !== undefined) {
			var totalRowCount = Math.ceil(arr.length / totalColumnCount);
			//totalColumnCount, 列的总数
			//totalRowCount, 行的总数
			//i, 行
			for(i=0; i<totalRowCount; i++){
				//j, 列
				for(j=0; j<totalColumnCount; j++){
					var arrEle = arr[i*totalColumnCount + j];
					//行变列，列变行
					var resultIndex = j*totalColumnCount + (totalRowCount - i - 1);//-1，把 length 变为 index
					result[resultIndex] = arrEle;
				}
			}
		} else {
			for(i = arr.length-1; i >= 0; i--){
				result_i = 0;
				for(j = 0, lenj = arr[i].length; j< lenj; j++, result_i++){
					!result[result_i] && (result[result_i] = []);
					result[result_i].push(arr[i][j]);
				}
			}
		}
		return result;
	};
	Matrix2D.rotateAnticlockwise = function(arr, totalColumnCount){
		var result = [], i, j;
		if(totalColumnCount !== undefined){
			var totalRowCount = Math.ceil(arr.length / totalColumnCount);
			//totalColumnCount, 列的总数
			//totalRowCount, 行的总数
			//i, 行
			for(i=0; i<totalRowCount; i++){
				//j, 列
				for(j=0; j<totalColumnCount; j++){
					var arrEle = arr[i*totalColumnCount + j];
					//行变列，列变行
					//var resultIndex = j*totalColumnCount + (totalRowCount - i - 1);//-1，把 length 变为 index
					var resultIndex = (totalColumnCount-1-j)*totalRowCount + i;
					result[resultIndex] = arrEle;
				}
			}
		}else{
			var totalRowCount = arr.length,
				totalColumnCount;
			for(i = totalRowCount-1; i >= 0; i--){
				totalColumnCount = arr[i].length;
				for(j = 0, lenj = totalColumnCount; j< lenj; j++){
					var arrEle = arr[i][j];
					//!result[result_i] && (result[result_i] = []);
					//result[result_i].push(arrEle);
					var rowIndex = totalColumnCount - j - 1;
					result[rowIndex] || (result[rowIndex] = []);
					result[rowIndex][i] = arrEle;
				}
			}
		}
		return result;
	};
	//
	Matrix2D.print = function(matrixArr, totalColumnCount, displayCountPerElement){
		displayCountPerElement = displayCountPerElement || 4;
		if(totalColumnCount !== undefined){
			for(var i = 0, totalRowCount = Math.ceil(matrixArr.length/totalColumnCount); i<totalRowCount; i++){
				var str = '';
				for(var j = 0; j<totalColumnCount; j++){
					var ele = matrixArr[totalColumnCount * i + j];
					str += string.pad(ele, displayCountPerElement, ' ');
				}
				console.log(str);
			}
		}else{
			matrixArr.forEach(function(arr, i){
				var str = '';
				arr.forEach(function(ele){
					str += string.pad(ele, displayCountPerElement, ' ');
				});
				console.log(str);
			})
		}
	};
	Matrix2D.printEmptyLine = function(){
		console.log('');
	}

	util.Matrix2D = Matrix2D;
	util.string = string;
	(naruto || (exports.naruto = {})).util = util;
})(this);
