package;

import utest.Assert;
import utest.Test;
import SomeClass;
import Main;

class SomeClassTest extends Test {

    var someThing:SomeClass;

    function setupClass():Void {
        Main.sayhello();
        someThing = new SomeClass(123);
    }
    
    function setup():Void {}
    
    function teardown():Void {}
    
    function teardownClass():Void {}

    function testEqualsOk() {
        Assert.equals(123, someThing.theNumber);
    }

    function testTrue() {
        final a = false;
        final b = !a;
        Assert.isTrue(b);
    }

    @Ignored("Denne feiler")
    function testEqualsFails() {
        Assert.equals(123, "heisann");
    }    

    function testErrorThrower() {
        final some = new SomeClass();
        Assert.raises(function() { some.errorThrower(); }, MyException);
        Assert.raises(some.errorThrower, MyException);
    }

    function testStringThrower() {
        Assert.raises(someThing.stringThrower, String);
    }
}