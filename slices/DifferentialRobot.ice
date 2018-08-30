//******************************************************************
//
//  Generated by IDSL to IDL Translator
//
//  File name: DifferentialRobot.idl
//  Source: DifferentialRobot.idsl
//
//******************************************************************
#ifndef ROBOCOMPDIFFERENTIALROBOT_ICE
#define ROBOCOMPDIFFERENTIALROBOT_ICE

module RoboCompDifferentialRobot{
	exception HardwareFailedException{string what;};
	struct TMechParams{
		int wheelRadius;
		int axisLength;
		int encoderSteps;
		int gearRatio;
		float temp;
		float maxVelAdv;
		float maxVelRot;
		string device;
		string handler;
	};
	struct TBaseState{
		bool isMoving;
		float x;
		float correctedX;
		float z;
		float correctedZ;
		float alpha;
		float correctedAlpha;
		float advV;
		float rotV;
		float adv;
		float rot;
		float voltage;
	};

	interface DifferentialRobot
	{
		void  getBaseState(out TBaseState state)throws HardwareFailedException;
		void  getBasePose(out int x, out int z, out float alpha)throws HardwareFailedException;
		void  setSpeedBase(float adv, float rot)throws HardwareFailedException;
		void  stopBase()throws HardwareFailedException;
		void  resetOdometer()throws HardwareFailedException;
		void  setOdometer(TBaseState state)throws HardwareFailedException;
		void  setOdometerPose(int x, int z, float alpha)throws HardwareFailedException;
		void  correctOdometer(int x, int z, float alpha)throws HardwareFailedException;
	};
};

#endif
