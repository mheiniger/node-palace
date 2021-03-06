var Types = require("./index"),
	ExecutionError = require("../error");

function IptString (value) {
	this._value = value;
}

Types.Base.extend(IptString);

IptString.prototype.toString = function () {
	// Strip out escapement slashes
	return JSON.stringify(this._value.replace(/\\(.)/g, function (_, m) {
		return m;
	}));
};

IptString.prototype.toRaw = function () {
	return this._value;
};

IptString.prototype.coerse = function (type) {
	if (type == IptString) {
		return this;
	} else if (type == Types.Number) {
		var value = Math.floor(Number(this._value, 10)) || 0;

		return new Types.Number(value);
	} else {
		throw new ExecutionError("Do not know how to coerse to this type");
	}
};

IptString.prototype.indexOf = function (partial) {
	var a = this._value.toLowerCase(),
		b = partial.coerse(IptString)._value.toLowerCase();

	return new Types.Number(a.indexOf(b));
};

IptString.prototype.substring = function (offset, length) {
	offset = offset.coerse(Types.Number).toNumber();
	length = length.coerse(Types.Number).toNumber();

	if (offset < 0) {
		throw new ExecutionError("Negative substring offset");
	}

	return new IptString(this._value.substr(offset, length < 0 ? undefined : length));
};

IptString.prototype.contains = function (partial) {
	return new Types.Number(this._value.indexOf(partial.coerse(IptString)._value) >= 0 ? 1 : 0);
};

IptString.prototype.length = function () {
	return new Types.Number(this._value.length);
};

IptString.prototype.concatenate = function (right) {
	return new IptString(this._value + right.coerse(IptString)._value);
};

IptString.prototype.lowercase = function () {
	return new IptString(this._value.toLowerCase());
};

IptString.prototype.uppercase = function () {
	return new IptString(this._value.toUpperCase());
};

IptString.prototype.equal = function (right) {
	if (!right.is(IptString)) {
		return false;
	}

	return new Types.Number(this._value.toLowerCase() === right._value.toLowerCase() ? 1 : 0);
};

IptString.prototype.less = function (right) {
	var a = this._value.toLowerCase(),
		b = right.must(IptString)._value.toLowerCase();

	return new Types.Number(a < b ? 1 : 0);
};

IptString.prototype.greater = function (right) {
	var a = this._value.toLowerCase(),
		b = right.must(IptString)._value.toLowerCase();

	return new Types.Number(a > b ? 1 : 0);
};

IptString.prototype.add = function (right) {
	return new IptString(this._value + right.coerse(IptString)._value);
};

module.exports = IptString;
