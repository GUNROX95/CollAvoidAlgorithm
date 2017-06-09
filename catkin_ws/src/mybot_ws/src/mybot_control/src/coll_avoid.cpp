#include "ros/ros.h"
#include "math.h"
#include "sensor_msgs/LaserScan.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include <map>
#include <iterator>
#include <string>

using namespace std;

class BotControl{
public:
	BotControl(const ros::Publisher& p): data(), pub_(p), x(), y(), v(0.5){

	}

	void ScanCallback(const sensor_msgs::LaserScan::ConstPtr& msg){
		double alpha;   			//коэффициент, применяемый к угловой скорости
		double speed;				//коэффициент применяемый к линейной скорости
		int w;						/*номер луча сканера, который определяет минимальное расстояние
								 	до препятствия */
		double min_distance = 1.5;	//расстояние в метрах, с которго начинает действовать алгоритм
		int num_of_rays = 360;		//количество излучаемых сканером лучей
		int max_num_of_point = 290;	/*максимальное количество точек, при которых 
									будет рассчитываться скорость и угол поворота. При превышении 
									данного числа робот разворачивается на ~180 градусов*/

		map <int, float> myMap;

		for(int i = 0; i<num_of_rays; i++){
			if(msg->ranges[i] <= min_distance){								
				myMap.insert(pair<int,float>(i, msg->ranges[i]));
			}
		}

		if(!(myMap.empty())){
			alpha = 0.0;
			speed = 1.0;
			w = 0;
			if(myMap.size() < max_num_of_point)
			{
				for (std::map<int, float>::iterator it = myMap.begin(); it != myMap.end(); ++it)///вывод на экран
				{
					if(it->first < (num_of_rays/2)){
						alpha += (it->first)/(num_of_rays*(it->second));
					}
					else{
						alpha -= (num_of_rays - (it->first))/(num_of_rays*(it->second));
					}
					if(speed > it->second){
						w = it->first;
						speed = it->second;
					}
				}

				if(speed < 0.05){
					ROS_INFO("Crush!!!");
				}

				if(speed < 0.25){
					speed = 0.0;
					if(w < (num_of_rays/2))
						alpha = 200;
					else
						alpha = -200;
				}
				
			}
			else{
				speed = 0.2;
				alpha = 200;
			}
  			
			data.linear.x = v*speed;
			data.linear.y = 0.0;
			data.linear.z = 0.0;
			data.angular.x = 0.0;
			data.angular.y = 0.0;
			data.angular.z = 0.01*alpha;
			
		}
		else{			
			data.linear.x = v;
			data.linear.y = 0.0;
			data.linear.z = 0.0;
			data.angular.x = 0.0;
			data.angular.y = 0.0;
			data.angular.z = 0.0;
			
		}
		
		pub_.publish(data);
	}

	void OdomCallback(const nav_msgs::Odometry::ConstPtr& msg){
		x = msg->pose.pose.position.x;
		y = msg->pose.pose.position.y;
	}

private:
	ros::Publisher pub_;		//publisher для передачи сообщения на движение робота
	geometry_msgs::Twist data;	//сообщение на движение робота
	double x;					//координата Х робота
	double y;					//координата У робота
	double v;					//скорость робота
};



int main(int argc, char* argv[]){   // в качестве аргумента передаем пространство имен для робота
	if(argc == 2){
		string myNs(argv[1], 6);
		ros::init(argc, argv, myNs + "_coll_avoid");
		ros::NodeHandle nh;
	
	
		ros::Publisher pub = nh.advertise<geometry_msgs::Twist>(myNs+"/cmd_vel", 10);

		BotControl bot(pub);
	
		ros::Subscriber subScan = nh.subscribe(myNs+"/mybot/laser/scan", 10, &BotControl::ScanCallback, &bot);
		ros::Subscriber subOdom = nh.subscribe(myNs+"/odom", 10, &BotControl::OdomCallback, &bot);
		
		ros::spin();
	}
	else
		ROS_INFO("Incorrect input!!!");

	
	return 0;
}