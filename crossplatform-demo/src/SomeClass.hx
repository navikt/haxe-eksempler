
class MyException {
    public var message(default, null):String; // default getter, no setter
    public function new(msg: String) {
        this.message = msg;
    }
}

class SomeClass {
    public var theNumber(default, null):Int;
    public function new(number: Int = -1) {
        theNumber = number;
    }

    public function errorThrower(): Void {
        throw new MyException("feil");
    }

    public function stringThrower() : Void {
        throw "oh no!";
    }

}