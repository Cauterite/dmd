bool is_real_init(real x) {return x is real.init;};
bool is_double_init(double x) {return x is double.init;};
bool is_float_init(float x) {return x is float.init;};

struct RealX {real x;};
struct DoubleX {double x;};
struct FloatX {float x;};

bool test()
{
	real r1;
	real r2 = 1;
	real[2] r3;
	RealX r4;
	assert(r1 is real.init);
	assert(r1 is r1);
	assert(r2 is real(1));
	assert(r2 is r2);
	assert(r3[1] is real.init);
	assert(r3[1] is r1);
	assert(r4.x is real.init);
	assert(r4.x is r1);
	assert(r1 !is r2);
	assert(r2 !is real.init);
	assert(is_real_init(r1));
	assert(!is_real_init(r2));
	assert(is_real_init(r3[1]));
	assert(is_real_init(r4.x));

	double d1;
	double d2 = 1;
	double[2] d3;
	DoubleX d4;
	assert(d1 is double.init);
	assert(d1 is d1);
	assert(d2 is double(1));
	assert(d2 is d2);
	assert(d3[1] is double.init);
	assert(d3[1] is d2);
	assert(d4.x is double.init);
	assert(d4.x is d1);
	assert(d1 !is d2);
	assert(d2 !is double.init);
	assert(is_double_init(d1));
	assert(!is_double_init(d2));
	assert(is_double_init(d3[1]));
	assert(is_double_init(d4.x));

	float f1;
	float f2 = 1;
	float[2] f3;
	FloatX f4;
	assert(f1 is float.init);
	assert(f1 is f1);
	assert(f2 is float(1));
	assert(f2 is f2);
	assert(f3[1] is float.init);
	assert(f3[1] is f2);
	assert(f4.x is float.init);
	assert(f4.x is f1);
	assert(f1 !is f2);
	assert(f2 !is float.init);
	assert(is_float_init(f1));
	assert(!is_float_init(f2));
	assert(is_float_init(f3[1]));
	assert(is_float_init(f4.x));

    void func1(float a = float.init) {
        float b = float.init;
        __gshared float c;
        __gshared float d = float.init;
    	assert(a is float.init);
    	assert(a is b);
    	assert(a is c);
    	assert(a is d);
    };

    func1();
    func1(f1);
    func1(float.init);

	return true;
}

void main()
{
	assert(test());
}
